Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3791CAA4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753156194; cv=none; b=ILhFYH+rqdp7PFVN0SzVRIqgzWeFx3aTtxY4DITLxXRTsujO2371pb53d54UDXGqRd05va16o07XVOK+FKRfFUyRX+iYBLIHL9WrhPtGG8QNYIh3gy2L+T2M3HdWgPpQ3QmKZZ4HdMjWk3wv4UKR3ENdLdyMQB4iL2UWY2n1KXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753156194; c=relaxed/simple;
	bh=Wk2oOhqRwgW7ZyYemZZQagm3MPAtnUyoJ1lfPtqM7Tc=;
	h=To:Subject:From:Message-Id:Date; b=BWcggkOXO7W14c2V67THUKRqWuB6owWXnum+0JDTC04tGvFwdTHbYaCXE+XB756Cwgq9mcfIz1bGbBe0zT1IJ6yp6iXeBRhQG6c8z2+SPq2eECRRqAtb/gHeCR8a+tv1YOTmvinssQRjfLx6dYPAOaZOOCMVPkFayinWDCVyX0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtWGEBRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtWGEBRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F17C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753156193;
	bh=Wk2oOhqRwgW7ZyYemZZQagm3MPAtnUyoJ1lfPtqM7Tc=;
	h=To:Subject:From:Date:From;
	b=mtWGEBRA/u7+ramHVVtwC5Si6e/tfaucrugy4Z7wtA+yPizQS03FHxC88avfkHzAE
	 Gb4vAC0mGbWb/xo83wrZlvoow5sMXVCQH/o2p4nFZUgz3n61M+h6mJrUmeK+eUNNIW
	 HTzMLC4Lvxij6uzU1ezJCuOe4NY8Bu3Axw0y7l9n5FeKgVRouSPwBB8SR+cGnGvIlp
	 GMl/Vkn0T9VBz1Niu2HcSeNKAbvAfJxqxVFCW5esreTlz+XM/gKx/eLbTUIPWwsQad
	 SwxhWAPgqpn0ejAvOVckiClNwFuPfZfiQKn9UGvjO2dB6yhd6kfuRh7GWyaGPrCaPC
	 Nq/+zH0TnXbew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90782C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315619358.5304.4059277348128150228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d29e660967284bc0c01e40ae16a0541d510192bc2ffde4702c09e5cdadcfe75
Date: Tue, 22 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753156193
