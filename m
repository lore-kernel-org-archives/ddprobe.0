Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2130E25392A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777871254; cv=none; b=sp8d7whU1hE04XVO34oBR8S1msCXwDjTC7Y0tkbJgyskbOeXpMTwSKTGfR8DDbu+VEJu1UxxxwDX35Ud7+jEvjP9fVfauvu5LdcxQCe/bt1d2/JzOv8/qowpSJUH5eqpZiCk0BDSR4+fvH1V9nelkgmMHPSLFxXW4saN5dEACUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777871254; c=relaxed/simple;
	bh=cqa7V3ZUILJqPZnzyoybZMu0GI8h2LvGMRgSizsnqoI=;
	h=To:Subject:From:Message-Id:Date; b=WsWZFAznJh7aJRP7XFu/SYxbHy8mW2QYIznqbLD84IivYjDDhUmB+belvISidD2dqmc4tSFjzbG0o8b9VPPmXtcuT4AhVkYuj3O6aLbvgf33xoUK4WLUbYYFy2SZox8+MN4hejHdFHKZ2DTvxkFO0sDDPckQgYRjooJYhge+3eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV3a73yW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV3a73yW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7D7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777871253;
	bh=cqa7V3ZUILJqPZnzyoybZMu0GI8h2LvGMRgSizsnqoI=;
	h=To:Subject:From:Date:From;
	b=jV3a73yWmo5XCiePYBIFx2/3Rb3CsHZkyBWVVCK25rEiwbkVsEoXGTjVeg1j7MAW9
	 p3nHiVxJ2yWe47trii6VHo0iig/Axms+8QOl56J3oKNuPfh6yMLQUMy1cGxObjP4Sh
	 c4BDJ2MX5gLvyef5O91/LSaYxSVkAMI86lijsLdw1kPuV0WFBrqxVQpqOntSKPZoFh
	 tDFAPgOQTFR1XY+Soy26bIHAcLeuiUb7R2Pgouow4rX66JlhMmhB9gOPkrwKQk5ZTy
	 HALpHpApWyu304bGtce/GsRfFhgJA5ZFqLHOZensng+t0vJAEGBhG+fEGab2Dx4VBN
	 udm/BaVAPZ+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F5CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787125368.21492.12363763168714484082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac79b484cdf4adc2659cee6e06762fb71d0946efade0d8ad5928d19d04009ff
Date: Mon, 04 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777871253
