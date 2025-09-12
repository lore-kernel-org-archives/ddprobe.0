Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B722DC789
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757717394; cv=none; b=aZ+rOvAc8xtNW8o4oxqpaFCvx90BI0nH5bksa6ksukKJ6UnyzIAsGJsMLLDMFLh6Dw9Ok81WndkfolXKfQcf4KRo7k+C4TQcJ5e/n5FimcaW9SLejLPd9oOLWrEm3pFs2bs+4PZdbzmDRMg3mQk2pLoAwpS/qKERA/DfVTNCoUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757717394; c=relaxed/simple;
	bh=kCjh2UFE+maEw77NtGSZON6DXwc411GHXSVZU9NifuQ=;
	h=To:Subject:From:Message-Id:Date; b=CW3Es7eNatx+rHorUC5OJDI0FeB0ypg4hGZ47iORqZzSvtxaPknXXUQvHSdYNXRtnw2njBc1TJOdd/e3MhU/Bc3m2ly/i7+n3yGXVvr0KnKTbGrg48W9lBWpCCDws2j3sSIGC0xaMiYjFgxaUgBgtjAwlsjn1P4m7DFlogZPI0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzVzt4sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzVzt4sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E992C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757717393;
	bh=kCjh2UFE+maEw77NtGSZON6DXwc411GHXSVZU9NifuQ=;
	h=To:Subject:From:Date:From;
	b=JzVzt4sSWX17f4nlcewr1NpYf3KPNZynHD65BCDghuWGBqMGQ9WAsM61wfGNKTPHH
	 Z7YLiDnRZMdbXIvA3zL/pz83o9PdwIqUlkc5HnZWEXBxYDJ+1e0CjT6aXU/g/ceeco
	 iigS0sdBmpLvZJBc2A+bZ4gWOU2MWUvVaVFuYjOIkOK+jNC9hSHa8yvz9ov8AhAED+
	 WKQao0Ryb1XlzLIOFygWS6wYcZkaINnkcL8VzjCvDPxfEyXqPhes2Aw6NjXFG8GtjD
	 9xtPD1yKRts4BZE3MhdDpShRyK2fiU6cacTMMIBkJy/Q1zmD1frotiYQQGYfhlmxb2
	 xqNscB6MNNbqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A42CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771739357.19199.11704467570258603054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8192e5702a6fa9e9c1c9e721d37c8a0c71b08a5254cf941857378181a5293c
Date: Fri, 12 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757717393
