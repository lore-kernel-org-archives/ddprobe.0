Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2772813A265
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758242994; cv=none; b=GYrJqyxASY7EYn1NAvCtRKJ5tUGxuE1/+5eYBAlugnIc2NmD+CfbXfXD6p1lomVR8CV9En9OY/xxHgCqTtbzNFN2AjFWSKBeUKVQD8XuiGrdobN4Ca+PgL4nn4cPVzhdYxwq1GMByJVnMeKckLa5Zbk69uZ5uPZGmlTVdJ2RqQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758242994; c=relaxed/simple;
	bh=RcxxgyRwcbG62+xQ6Tm+dCkz692KlQqUSLSEO7stu3c=;
	h=To:Subject:From:Message-Id:Date; b=udQ4ghvi/cFXTLKGFCVUtAnlW0k9oEvtYErYxsYaOlEIA3+73UboAa2Z0VPrAlKpyDlFWkpBWNrk7ai1BIcOx/zZLohc7UeLP+hWZ5UOsJ1HefZJpvhRHhLeGPeFw13ekUovtdoN1XhsYM12e0z+FVgy3kls+7wgQRoKrC+gjF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGekN2ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGekN2ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34A1C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758242993;
	bh=RcxxgyRwcbG62+xQ6Tm+dCkz692KlQqUSLSEO7stu3c=;
	h=To:Subject:From:Date:From;
	b=qGekN2ia2aE1P7VNGIFVItwjW+s5ticfoIzofscakuJ8whpGbAEA6Nxc4iG01X7ud
	 csvXn9xPwC1ksmCmfA64t4ow/ESKvTvsn4IHwll1yC/qJa0OyuW1g/REbsBtNyhp32
	 wt1Cv2r2egWoxZAVJBGPE+mt7xx7lt94bGqa9X6SpwCozTFJWaUspmal+DxADbcil6
	 cmPDs8jI704DJp540Oh9Ys1zQlRqPSEHxYMLHLesQs15yPMnFD7KVhCcn2VCtLMlOO
	 XeaNHe3l46gydklMZ3p9jjftL8u1XUG9Y3VdVXG1meHMPj/aapXcujF6JlPGbjh8WG
	 +apbWgHj87OxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A7CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824299357.12806.15623095470985582843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18d0c8f4b2b02ae977637b4c13decd21a3b5eb327cb4606f12820a5b04fc88e
Date: Fri, 19 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758242993
