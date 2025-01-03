Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312CD19F115
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735882554; cv=none; b=D6QHs6x2bHSSjWoD+GQlWdZaU2thOr0UehfTrwTvcJOs8v2LSqrui8fxc6HOLk0Ux63i3cjf32puSrAQRGUmxBxy1NQOZgw30jbmlWbr6YUTPnhRnF/2EIDANYzAGK5FiIePccpTOD7XIDQVHuSsZQYxzjkoTRZ2QtRQmaYCkHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735882554; c=relaxed/simple;
	bh=Z/bgcKxU+VRrq4IMR03RKtywixKMQcbu+Yr0ArfOJV8=;
	h=To:Subject:From:Message-Id:Date; b=o3wLtulLpzaLm2x1xUVqhBa1MATPwpvEnNbV3kPfLPNdBzzzQUCRIpSXQgTZBgd3hmN3dxbjj8iRq9JzQDD9f9U54jwbt6rCyN8IIqoAoHxyxDdGjZYpgZr1eogatdCvaVhSnbX0iJ4+yLdBYMcDKlNdD/6G3OUwopKeVp+gOkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jipw86Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jipw86Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B6C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735882553;
	bh=Z/bgcKxU+VRrq4IMR03RKtywixKMQcbu+Yr0ArfOJV8=;
	h=To:Subject:From:Date:From;
	b=jipw86Dyuljv2T9JjxU/xKmVISGweyXyVp42V6XxjfAPJbt+cn1egOEFdb2MxZwax
	 04ffNobpfFBr+bExPHS2Qy7QNJDoyqgm1PTRD67JX/javPqjtxYTQGJKjGzMHCUwEi
	 lpMl7nE8JwTNMqn7NqOgv9dnkK5h8PHGRZmhvlbtid0qLHHWVyqmMedKfRoCuYCjZw
	 515PQt2G3qGtx6cY2LxZsDKvc4I1LChY1JoC9dlPBwMECuE05ag2WvQl1B6ux6O5og
	 X/QE+V1S3V9r0FrdqtRWi/6iimtk2HWSDSlqA/RjQgcwBdGxRzeGUQDk9ZwKZOnohs
	 rphqphY+HJPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2BE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588255360.4997.7712172942495432654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96f667b109a06f6fd871ec758c26846bed92bcd85d84d56774310e828247d43
Date: Fri, 03 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735882553
