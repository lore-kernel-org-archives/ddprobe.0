Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C84B21E08D
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753726194; cv=none; b=L31U06AC2Ahy7EuEfrIqJ6QNTsYjyIwEEnCJK9HHeIEowgV3e1+iIY6EuewjSimNJySsrp32GX81Z5IfKvhZyUIGI1yRdJcqmvBJIidF1ozAmjNmrnWZ+4grBVQRowingqB21vItrc800/iWk37QABt4KTKl6EvK7J+gIxq66B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753726194; c=relaxed/simple;
	bh=uIVcKevbspeyROmhKeHSOX+A48D+0W+0WOjA00IhUk4=;
	h=To:Subject:From:Message-Id:Date; b=JZ1yIyhg6J6SbnH4WMYZOlE1xBsALE8U1Vkq7s0qkVBS8w1tDCONpG4CfVWY8IXE7AXUB5y3bNSH5qHanJpwQyPrWACpLMmHdE7tXoH41PZceJ/g+Bu2Yb+s2xgFToc1Vwl4DGrKyPEphqnMcH9O33FvuhIrORqMlO0CN8vU/FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf+neywj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf+neywj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753726193;
	bh=uIVcKevbspeyROmhKeHSOX+A48D+0W+0WOjA00IhUk4=;
	h=To:Subject:From:Date:From;
	b=Uf+neywjV3q59i7QWMz3RhhkJD5uuOFxxuurkFy57I+MDhpqJy1+4WqvHty+E6gJF
	 kxswRBrfW6Ez33w6nPJnWSn4cgDIK5fAvF1VBtnNCMnYTaQ5mIMlaWiQLvBnSw1GA0
	 qocSY/GUmajA36HSXQQnk5RzpMqa+F8lLGDuifG590FPk6mJHTJ1rKpJwtUESSzKDd
	 r7Lp5zSyRR5+a3P1CXZRFJRBSoiYJ35HDfv4GJKoYc4GEMJ8Cn9XeIV2MfA5tgpBT2
	 E5uyiN8aIzW/SbrCKRf+8eHfkvftnV8InFBktABiVmruA7Zu7x+kaIIJD4GVgqUdeu
	 a5rk8Ve7BjMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F117C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372619357.3957.80377279989712971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762149dcd06f306e44b8a6687908c54548c0380457a138d4ffe5d3506b372ff1
Date: Mon, 28 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753726193
