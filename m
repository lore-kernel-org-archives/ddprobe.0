Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12360199949
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773716094; cv=none; b=LAX2feHw7k8qPeHKd9vhfm6A4u8N1XxPsRb15okVBnPRcXAwgf2n66jS+VjMtpD+TkVwH6sNMmyi4L+L24TPNAR02VXEspxZsdbZjinhl59pdqQ51mDWLBiLLXHDQOIJi+4K4Q2eIOo4+3XMt889JmI1YTLC6/OZxwaewRTIWHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773716094; c=relaxed/simple;
	bh=lX2fNicAUHKulXvzxkWViWFowKUnzyj0jLVwlqlfBok=;
	h=To:Subject:From:Message-Id:Date; b=rZ3ZRCRZmuh2QHdMNt3FFrnvcL6BoSWq2zOxzcZDCglRlFire7vojkTO2rkyafJnpcUaKO1yiuyIHf2k794RXnDrLXcgl31ixxlxc8DLDBEWoXPdosga8v8y06EtEk1umYvFLnVjLhSWxxTmfn8j0wQDp4VB+Mr6KgMZHXEINKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoBZQNcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoBZQNcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CEC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773716093;
	bh=lX2fNicAUHKulXvzxkWViWFowKUnzyj0jLVwlqlfBok=;
	h=To:Subject:From:Date:From;
	b=LoBZQNcFd0oF8d98tsHEXTpI1C/DkqO1T3jywziT9JeHl6CQCWnforq614RoDFV8H
	 LnnTj3teuPPDpCDikF6+lPGQPNPY2ZfZoiJYVkTRa2eXmJ5KUckA/fk8d6QAfBdDj2
	 87Ql12C+Bdge7Al9MCh63EgY3cTLUw35h1lw78stnrFx0omc28A0SHDzRji3+ZqSJI
	 8yYzHPgS23BuHbhqw++hbR4xm0LTZlzkoqQ+b6R7o6yadmsVj2v31QXcV/tN5ACbnY
	 iPQViA110GOgUFTuWK5JIi6BD60pQrFMhNfUqVB7FN6VgpwlxDv29Og4xefHIdctvK
	 zajSYTeg5whxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C0FB5EA5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371609357.27264.13578079117102438170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933af4ebd572dd7598efcf2e5e0d51afa93354fe3a1d4b139a781c1a86c187ca
Date: Tue, 17 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773716093
