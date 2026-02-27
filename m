Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063B3322C77
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772181894; cv=none; b=cmTrMRmGuAbur70dzuit0r2dyhJL9LUxDz8GchvTaiQEADTN7kiuxVRbdrtsltcSellF2S0kROf5OXMo/WxiXkFRl9d+J3wT4AJTb2LKxwkpgY0BcrfOf87qEo4TI4Xfjn/KnYOnF36+/IkDRmT+Z6KfmC+gCH9LUBRWSgCC52M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772181894; c=relaxed/simple;
	bh=8BUfm5psk3TMeBwKVJerU0/WiXiSEmr8rP89a++FS8c=;
	h=To:Subject:From:Message-Id:Date; b=bKBGbHTTsyuYOfDUERbwaBWuCgGOaK2B7Bw5PNt21Y2B0nNV3Qt51q0Er1HGK//uBjhk16cE+O/F6CKSapm+lWvsbISgo65U3f910opOxcEsmMZsrradZWL4MgrW7/rbdpa+PXrOQKkqzNHwPYdylvbIp/rSK0rrQ4G2XzGOcDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOKsMWCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOKsMWCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D82C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772181893;
	bh=8BUfm5psk3TMeBwKVJerU0/WiXiSEmr8rP89a++FS8c=;
	h=To:Subject:From:Date:From;
	b=kOKsMWCYafAkTAoE4ZOQdmoCVBvl7LYrJYDshpnTM/C4BOUNfU4k5kKzag7/h3zMd
	 EUu9/2xij9ER26qjyjcuvpKyuuImAG9XIlcK1mAp2mtlhi85vDYnISsxUjSQ04vWpH
	 LE65bgBS1IuGhkTKs+1Ps/XMRHjWWd6h6r/cX1Tw8ws2IbRpJSIQLu7nCZby1aaahl
	 XNJzEh9ABkR6BJkJknrf6U9cpgo6OOGvLj7V3a/JX9FVulN4eTZw1OZ++em/emzRoj
	 Sp73N0hQkoOLT+xj7626tBNrqg2JLeM7JMu2utryeHp708wE3/rMr+ns7hMeGdzkLc
	 h+jPPD+s0HL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90309FD5310
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218189358.29110.4217198414933745964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd61bf43bb03d29fadacf77af399f5ee20239d143b8225470625682e468114e
Date: Fri, 27 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772181893
