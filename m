Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A5718E34A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750727995; cv=none; b=Z08b5kX2WMM2rR71zaD16zpXAaneGi2npvX5UlfxQdJ1q3rEoONEYvruIBzwqrT3TrpESIDDlhWdaW/sHXKannqccGzDD7uvpXylQH2ioXARbFFQTOVQ90cvtmdxUyWfDSlYKjDjBezxQfkARH4lQ7alPR6mVnHq1Yfk9lh1iTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750727995; c=relaxed/simple;
	bh=vWCTBXRsQe2zkWUx1uY6VyidpUcAuHfUCRsYSrBobH0=;
	h=To:Subject:From:Message-Id:Date; b=mvHCyC1uzd9uJdqo2c6b2N2PR4NKGTirl3EK7bGUxcjayjkVH63Kfh1DY0q1Aez6lkYa+C3Vc+WhOijOI/fsYP1u8GfUSv/AgatmB26JlRlhfjZzhT/M4UqR2+eJEREyIEMJYzcXH+iIaudNzxstVbsh3RJvyF1KKksu8iL1eOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIKjnNrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIKjnNrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4865C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750727993;
	bh=vWCTBXRsQe2zkWUx1uY6VyidpUcAuHfUCRsYSrBobH0=;
	h=To:Subject:From:Date:From;
	b=WIKjnNrHARu4PQMmpP6n5f7apVY+JH6PBG/6tHZvP6enNqlby3jQyGRCOAcPvuOZ0
	 7vDAi5CLxX6I0EaHV3jpl1po2+d1e80vV+qlnmYtk3upYsgCl8xCpHyANucS15Bom+
	 3gMjaSc7/F6+2BDlWvqPtHAXhFmBlq5n/pNlpR9ITJVNaB9+yXVJXs3D7XoDgthZfS
	 GEqoTX1VZZztBavPwIZbIVJPho6PLeQUeZJWtFBqo0XaB9q0ac77Zg72HX7gtmHTzw
	 q5mY29mMUDYcJxOaSGiHQclZEGiID35+qiSIb1p2cDCAYjNfN75L/z70DQaAl8XTdm
	 8R7qxc+bZFhGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F5C7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072799357.9753.16946121292855265035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f063f32f01b1d6dc4d11ce09110b9ecc522bbe46321c4a1febea06433cb9e11c
Date: Tue, 24 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750727993
