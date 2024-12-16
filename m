Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCDB1D27BB
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734380754; cv=none; b=bEaBJC06IE7cJpSAx2j53Qr4tSSiWPJQCxgwHSaNE2C3f4LCp59ZsVOIpZhkpMKF/I1nsRq1SKTzmQGBgQC40swfDZplmr7TYcq874J1D1UJNDzHtT9Wv8OD85X6YdUtjM5yaBBRlE3lvpWwL2YsRbjTTJ6lpIn1Vxn2b9O2oGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734380754; c=relaxed/simple;
	bh=s0bowrwMTcPXR6FkKRHXVwIux2ZDo7yLh6wf0zDetnA=;
	h=To:Subject:From:Message-Id:Date; b=tDZ58vs/3nyFAwr1FtwYyhW85PM7SRWJtRAeEM9fJKUm9/xsw11in1Itz3zpoKLCnHlQ1M0YWKDnmcABMXws5JBxFOQI/98SzbwtviXn6LccGGD0LLiYed+YMVM391UTAVqwUCTE7fnId3NPqQp3MlpacHrGzu7y2Ms9eD5p08c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN8iroqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN8iroqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA2C4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734380753;
	bh=s0bowrwMTcPXR6FkKRHXVwIux2ZDo7yLh6wf0zDetnA=;
	h=To:Subject:From:Date:From;
	b=XN8iroqV4267g+ISVqPk3ZxxhmbGoXVA9heYJWyPgQoBTvtUHEkC03Sy9pHsL1q06
	 2ZXJdlMoGDg7qcFUjoo5/86g9uaf5bebrQH45P0t34RO5OjeF3/tOczlhib+X3bMK4
	 EZ4QbRN0zQnbsVrvwKwenXI6J/pv6WXT9zfxWtc51rq1Chjqf4XSdl8Qce0UFkC7qw
	 eBuXsTNQ/SCDNB1gzbn8FR3U9u4049IQpkWwgpOvPk4rcEVqdw2229jOF4rEmezYlR
	 owpWp+W4bDs9MB3E7DZr0Zv6diS9gS0QZSG3VJoF28PvlYlnLRJCFctT4YNH/WYT95
	 ptUtnUuMrdR9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91419E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438075358.1796.289447825339528067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56388629b500cb38eb193db7f5d57c6a70d36ab5c4984a61d8513bea0a1f9a0
Date: Mon, 16 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734380753
