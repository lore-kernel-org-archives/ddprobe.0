Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7E533CD1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718458103; cv=none; b=dyyhc+3px90MziMRjKEFRVjCBZSMN+iMsfJ6Fo3L17fNxUdtJP+oPkWDpPkmGJRAgR1A1jAM+5SRKUuf+jFUNygVmznd8M2T7OFjw5wrQbI8KIzrL3CgUCL95F6de2YAsJiwh/rmaQjX0VSjoxyGzYpgVmxlA9TKLbNQgerC4Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718458103; c=relaxed/simple;
	bh=DSKa87nNbpeD2wdBUyprPbOqHUIzrRyNKGIpZCDXIgc=;
	h=To:Subject:From:Message-Id:Date; b=bYrujR9ECfIajOATRZ9wH/pFRb19FsFeYmaXB2MQNUOvMJdCRvNOLKJFqa9dQxe23i+4Uo3ehassVUlg8nHhTLcVZNxKsqz0cJz9yNnmxTJY2tWhiwY74cMGo6QyjuPRfKEvJvWulmMMqKMeFQ8F39I231no9xTmx7BEaNM9k2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8FRh5+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8FRh5+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82D9C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718458102;
	bh=DSKa87nNbpeD2wdBUyprPbOqHUIzrRyNKGIpZCDXIgc=;
	h=To:Subject:From:Date:From;
	b=a8FRh5+yeB/d0TMgIz900kqFZEua3o2RKs134RTlIRpHDw0wYnHWX4kfMMMRka+vm
	 BV2xaNcf3jBQtCTpgaNcziXMJxPKCE09+xh8F7wUnMJKmaObOZpRRddQkkDYGU1sH8
	 nVKj/JrbcRr2RHskMNUVE47C1geNaHTU0fsraPOLTfPjyckTvNmg2j3VnZoRDFcOsf
	 xYmT9iScdgoseGaWFe/BSpVRa7xchGa3IXiddG+mIf+d3op7mZb1Q17SpRdwFvQBwb
	 /4DON2mK3x92TKBTP8tb7WQVQu3TFzioCnMzyDWGaGK8RBYZN4yMYYUNoFJGtmOq7b
	 TcxNYBJ+6e/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC196C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845810281.16349.7377953709040612283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a247bc398c520aa332e4e107b2d5c32f2fffeb08d41185e3a2f52bd2ad2d04c
Date: Sat, 15 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718458102
