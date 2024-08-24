Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB1515CB
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724465154; cv=none; b=BcJIeMnq04sQ+VlffZxFi1Wkyxp/ilQxTRwo5REt2PZjeKMhzZ024Fw5gdlEFj2Mt8HYZfWGLljX7OHNGTG0Yb3MzOODerB1xTqTjTYokJv4Ew4bS0aYo/ompq3SBBnNWT2p3sswfQ91W01VmeXrbj3uebuqHhQ31VEZ55wAupw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724465154; c=relaxed/simple;
	bh=oSLxS59nH4TTKwIWZYD12A4LX3ILUeADepRLI4c+p0Y=;
	h=To:Subject:From:Message-Id:Date; b=XkFd35aRNXocVBMxBI3p1dP/rr0wO+E94bq65x0fEfN0u/aIkYDuSbbAl1R6gwB1nzl4pM/Tevl4aNjlXSOHCMJziWj48vV3hq/xB2qsJXgbWvEAXrx+A1kRvK+eipEnGckiJdt3Gp9XVOjWZlei83FHTwCTrC0rgqUoVP2D0Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVjsBtFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVjsBtFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74CBC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724465153;
	bh=oSLxS59nH4TTKwIWZYD12A4LX3ILUeADepRLI4c+p0Y=;
	h=To:Subject:From:Date:From;
	b=MVjsBtFBlYdjUF/qhUoMtcW5ZioaXGhAzGY5m6A9qzJQiLWX9S8MW1bhvaCppSjyf
	 139Frveh4C3DO0miK8We3RueBlVAs6z82J5oCVChI2c49kPvveQ7Ycb8VB6XiK8wGL
	 4bNSSLxPcemzUSFnFT+l8uiyb9UEL9TSopYVaT3snNwK3ULeya9j9O9H8ZYlhv4o5I
	 BMLU5h6Rx15dxsQPrCJiGerkl6iYFlfFW047OBsojRqUhrcdELQeZhw7TCKRVLYCUI
	 otddd0AhLiPAjgI2BIdK95dug4AU6Gqm4ApqjNmiCUKie57vpgl3TjTdcm0jZIR+En
	 4fdOkNagwaTOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1802C5321E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172446515359.22778.2069830867718678926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3ce22331530e9ccff60f1e310b77603dcf2c77d40c53b46d13fce8a3b69ec1
Date: Sat, 24 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724465153
