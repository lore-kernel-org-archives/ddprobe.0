Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241C6172777
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728255954; cv=none; b=JGnfwvdtucWbE8sE0HX6LblvcR+C2TgN/MEsWlTqMnUCMj9clVRwpe4b4bzXFaqx9E9qE4hwGpbTcKui1UwLV8zSiS9EB2av4ZABYAo9pBHJ2AOH7VjyUZAzFv1ffjSPtPVfHexg2vxrK2x4G3MINClV9sJmGGcn/fHgUXopYss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728255954; c=relaxed/simple;
	bh=ZAdXZBSI44kmSbpweMHouKk+YUucqecD1zrutbYgOvw=;
	h=To:Subject:From:Message-Id:Date; b=ZjUTteTC4Yd8QQpl6UBra1X4DtAZCMMygjV0gXs/tj+Sz6inhEyIz5f6NnMUca2EszPR3UWOxE11+8pyjAgeI4mIFLkHVJp0PKJhpVKjzfuG3hPfTVeTMZHlwKrJicN1N7JQ8cg1Tra5kaCzwoCPeIDStbv+Jntkb4LCIiKJARM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL3WNMKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL3WNMKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A54C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728255953;
	bh=ZAdXZBSI44kmSbpweMHouKk+YUucqecD1zrutbYgOvw=;
	h=To:Subject:From:Date:From;
	b=tL3WNMKGblyhPEWwbTZPqjbNY4374saVW+aW+NPtO/CZEdVKUYg9dthzlVh/QCxJS
	 hC63jASv37f0yQTuWNiXHQyHPpxJC5ENFQT7lJIUnrNZjuybAN+YQ34CKLr+F9//tU
	 jZjH+aSwDNBGlpd5++ZiBaBPpyj2fZeo7sEwHDtLgcnopcIYhWv4LcYC8wbv6LRAqB
	 a1JLKQtXVVbGumHHRvLNdiB5CIwgtOx350jAIGqY4n0QA3GxhnLHcHXeMi1gsACoQK
	 80wfsWLZSCWJEYBoEcFLzMHe9ytlBSXWAoba820M2xVantHLKiHyofvB2yMyWom4h5
	 IdhNkZ003NTjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D6ACFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825595360.32380.10515108585765217339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23aac0a93b1da19c07eddcb45ff09b26af9d840527cb048eade732c68a90de15
Date: Sun, 06 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728255953
