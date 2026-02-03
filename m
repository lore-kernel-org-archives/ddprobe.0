Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C932D5C86
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770137034; cv=none; b=PSwYMjYyOQXK8g/XLNR9+493UuafYJeJUJnHfcD/T8cFrRdFu31wYpK/zcnKE3dZzy2XoHFkn/LNyVeGxsvtYagxWy0Cw3x6KDG/x6uKYb1hYIUygze7zEC8Q76kT+xsjuBdOISpG2TU+aBKFgwBGTGPRdylcI6f90vZKzYxwI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770137034; c=relaxed/simple;
	bh=NJ0Hy4o8N134fGEfDK78bqIOCzkWk9X04CpCDjSXvGM=;
	h=To:Subject:From:Message-Id:Date; b=nmagPPqnUaWEQqJMvaOs2aL+LqbldtcVMNKCRw9OMx73gp9SNtjgisliNIay0GzXj69o33iPH1pdl/wff71cDIpk293aVRCVY2vc9iASwfOA/4YMBoZ+0D8bZApYqGLsHwZa1l6ISuxPjsq8PN2qtmBU3ccpqDRDjkXj495RV/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwmmnCtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwmmnCtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1948C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770137033;
	bh=NJ0Hy4o8N134fGEfDK78bqIOCzkWk9X04CpCDjSXvGM=;
	h=To:Subject:From:Date:From;
	b=OwmmnCtlvZC4F1e+HlBfxRzFwftAcwxwUIo9BPXnj+sYDkOUjjkizSyHUwm4uSkgw
	 jLglHJWeAOz72QzdBSPncnmw/BwOZrNUv+e2Y7m5V856kKmkOW7G12gKheJxFDyVIW
	 3E5Hdf9sd2A6a6dfCj3ctOE5lxHsJsXFamtsoSo9p9ccXfrzzGiew3wTRxZgK8glge
	 PHLA84+YkSVwaGBOtgC4NDQpaX+r4eAUo3ZQwH5KD/E0CGo3qvLYsHNx0IEyqaL/We
	 7VvD5GfGdGIsorI0VHWsT14yd+33jK/iSv/TTT9df6mFWWmUnN037VSPgrQHeF+ZFg
	 WQXN7P1jaInaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3774E8784A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013703365.8301.5595192804169313069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d22eb27a48c50486ff7fd61363d93c2d190cab8a0f4f606efe3023e53530615
Date: Tue, 03 Feb 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770137033
