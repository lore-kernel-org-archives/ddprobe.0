Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632958479
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736601354; cv=none; b=rPrHYU8Un1xmu2h72MjAnFK27/k7BGrDWZ/SjD1ElZZmVshSF04LxZpi8IdZFyx3oNfwhMYHlo5xDjY02Z/+vbRXCRknbQ0hA17RdAe+4Vk8+bBVzq1Vc3WNogy9xNqQbYm2BwT2Jo3rVmFFAbPEF1wz/iJLJxgAS7JCFCygDFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736601354; c=relaxed/simple;
	bh=V3z6hPqZsv5x50IeCxkijP7XFQhXwsRQ/JtOTyQoa5M=;
	h=To:Subject:From:Message-Id:Date; b=ok8yqh108C2vQhSqOcADyvfObVZd6+9XuVxf9w4zf2RYCT7sR5Xsabp1NHWU4EDygADeGqeNZqfLgEAbe7KfK2SrldyIkMn/8x+et9+uvaF3/F5i90RxsJ+3uEfordb6kuR1fRLf05qLtAmWcg8Y7FmFE3o86vSI22LJoGjzn/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl5/E1CE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl5/E1CE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1570C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736601353;
	bh=V3z6hPqZsv5x50IeCxkijP7XFQhXwsRQ/JtOTyQoa5M=;
	h=To:Subject:From:Date:From;
	b=Fl5/E1CEXqAyEGGI2gKR7mO2CkvR7yOgEYQ8ZJ6A1mxtLU5gPPZOn2e1s9uPbay0u
	 RLQXRJwiwuOIoBDk6EK4Dn015+x5TIsxg3rkH18TKjkKfNFhcg4+V+/uPouMN6qSJL
	 ktdY3r9Vi8H+CdnQLHv49DTt1sqGqKmI/dvETUvWZ8HYdKcUy83FhdneG2sQuhzZiX
	 p+mCM/AfZvgBH4MvLM+XU8NmFoATyTOjoBeJQcTxVY9BHFJX2Wo0NbCcBGszt0s0cz
	 9sqWewQMfUD6H/CnQuKYxL7z9FXbXq0/4vzHNyYzMM4gDFRDkQX4pGi5PkpUFvCX46
	 j2py8sWBiz9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF1E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660135368.25563.230852447740888436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2345f06ffa5468cb0d9d86861a7581920f587d0534a4212e7173e9ff804a912
Date: Sat, 11 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736601353
