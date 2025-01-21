Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B061B394B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737479154; cv=none; b=pgqMTzsdmfGVepyBRlJAOtzmO+MLccCdUbslLGifEHoxB3ghPdsT6GafLzokI/8uji8sTdwjThoUonfUaPwdQbmLtzmTYjwYX/yP8tozOeT/S8LR3jX2zHwG4sghsM1qnPd8GEpeAwD9Znxkqr3d5X1USv/cO4daXpr1ju+DUEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737479154; c=relaxed/simple;
	bh=/1aSZxmd/pnLQU9anP8SxFQB3lptA8VXlxEMYPfYDZM=;
	h=To:Subject:From:Message-Id:Date; b=uc7HcJ/uUVKwxO2Eu5whwiHC7q9CCUBE+gAB025K2DrQXBw3/yVE4Sm0g3yKyFY+/eNfKCbUQfHtQ9GxxViIhBMi5d1bCaFf9JhwHPZlayMg/ZKhnayN9eJNQTyDrkYxL1Ph+MXkCZuf7wRuale45RD4Nb+Wo+5AmGwv2q3wJKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOMiGVXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOMiGVXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D19C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737479153;
	bh=/1aSZxmd/pnLQU9anP8SxFQB3lptA8VXlxEMYPfYDZM=;
	h=To:Subject:From:Date:From;
	b=BOMiGVXLEYynXDGut7lcRA2VuB8sfjQl2upUiFvrmYnBAkA5lW4C6AyvPW8AOmS/O
	 xtrKL+ArVlxtpKgPSijM5C1FF75V/Nv0eJmlg5a3F7PfIyJ46Ld5/+2pL8cdXCNrDG
	 g8e2wkysIckeutHaoQksXXV78eeZkxO1gu8hCPVmA6Hqi6BbR8xNPcEI5W5y29yCWb
	 8NJwzdtyzpcBouNh4hudIuqu7ktqK16djzdH77BWRFJiGPqjQ0YAvb8HYi6KA8hgv2
	 mLZobvVOiYL6XlikuJgef+aMro/SiEWdDdM7brk15L+9c8Td4WNbHA71IJ3fcyAxus
	 h0/LXW+/yKvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8FC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747915360.16574.6369940749284073613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bac2f3657a58b7ccadd5fa1da5e33e2e341addd9395cf1a0d2167818485455
Date: Tue, 21 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737479153
