Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE52244685
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766358834; cv=none; b=m8wzCu6E390HfgRVmVYhmRP0uLbT1bUqkEGq/aqeYctTdh3Nhr4lvOFMq2bBnFSnLIYhGRY0BXANE8DpNTnwcLQg/QxN7HkPuKwGcfTcwrodOR7QF58n2QkmczoEDa1xmKroyGIegHmkMIR+SrrW+6KM7hv8fPWLqhPy4VIVS84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766358834; c=relaxed/simple;
	bh=Zo/84hDTVNtGRqoSXMVyba8oCES610ZuvL0UN5XnsZM=;
	h=To:Subject:From:Message-Id:Date; b=iwZJTE+oGe/Ak69l27ul6PiQ2xgQi4yDXAfY8YQzON+qBpY2PT4ysseP0vuhUxaFDwCC8uCjVp/3Q2tz8ZZd0qZGffyEUs6u5TJP2y3SI6NdwZJsw98TcpBsM4lrhsA3u1vAVIAyp7MVCw8MmhbuB98OnOOE78DC3TcTeSxNMwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaMLNZHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaMLNZHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766358833;
	bh=Zo/84hDTVNtGRqoSXMVyba8oCES610ZuvL0UN5XnsZM=;
	h=To:Subject:From:Date:From;
	b=FaMLNZHJm2PITgCgELthrlc5MdxR0vURtMYl2lh5ljEn+1rZOD1XXUMAFY0iuGd3M
	 c8Rhz4aGi0NEEO9Dz0l4j2meq19pH3WnGdg3UDatcF3bgTPVRpGhyDoZU3O4FNJLTH
	 X0KkuzOjFSTozGyVsCuqcFLmpK5QuU8gP//lEQ4KRbQVlnQovFGr8JJfKUEYQeYYdR
	 VoQA+PXzBDoIbPsWKPaQsAkxN2Qq8WCXwfnwt8rJyArxecaMq0oYOpmIzfpGUPvKFd
	 Y1i8Vn9Rm6jqIyQ1nz5vkNyLRxg7nePxzHpaxCMGjSYSpbim1DNyeanbIDjiSItS4J
	 pMxIlAXz11MvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ACDE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635883358.3913.17792342893555311267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e410069d95988d7cd41e2967b2d0602c7dbea8c3e2a90d297a1f3f814110e89
Date: Sun, 21 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766358833
