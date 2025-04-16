Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C0235368
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792194; cv=none; b=ULXq6t5kwuDtt9rL11ayBG8jOO2qEdt0fcbXlS4b/+2Y1D7Zp3pQVUDeceT4sBLG4kRBIuieVEgrvJem3IE84CdVqxlFs4HldEiH2k+Iw380EXYNIi7M5+JKcpO5P+bCbIP29a1S9Uu47mFcHGv2E3oDrE6I/OiO+wWY3uM8jPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792194; c=relaxed/simple;
	bh=vmGQSSnC0YcsE9q5RIQWcCO4kCP0SAv9rzctcNbbjCM=;
	h=To:Subject:From:Message-Id:Date; b=TLXYoZlAwjxRFXAJdFUFjy6cHTkyK0WmRZeOjer4Mh0+1WOMPlY0/Rp406YeMWs643HBlfp9C9Duo1r1Qt0i2UXNROlZ+PJaCrw/9qYn3knLphl7pGQOvL7ghmyQ3pBlOhTFBgnO7SZVFkpoYv7N0MoOFFD1RyGAkMo64a3yaEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUEZQmW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUEZQmW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA72C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744792193;
	bh=vmGQSSnC0YcsE9q5RIQWcCO4kCP0SAv9rzctcNbbjCM=;
	h=To:Subject:From:Date:From;
	b=OUEZQmW/D3mna2jYTTG4GLGVOHi/kQ2e3lhxQYcL4sM5VADtuRxc4eQDII1pMhtgg
	 yJQf3P8lzneHqgotUMZ2OZmJ8vSvFKbVOcEiZ0eD/t9GALiT5MFjyff7hAdqywe+TC
	 mKlWG9FzQp8J+U0C7wdchiv7hdAzXNioOtlH1Cd8qGkFNXL8UpGT5r2byso3zo2ce1
	 kRQQ6UyABNB3d5SfYLINUY+CwqKrb160y9d9spqOjoVBtzrzeJyl3LYfEBN1mxAsXU
	 WE9h8C1gkCmftqUU+PLImC8ZKMz8iFv4/iL7x5IHeiCk3baQQIByBPpjWLn/MklUfH
	 NihJUrLfVPRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E6C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479219360.14052.17655389621923781510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c28de540c6b616e6e070388afde02c8cb7c5a487b93c214e72255ef3ab7e95f
Date: Wed, 16 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744792193
