Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8CE20B80D
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755581994; cv=none; b=u8VNx8Ox4vf4C7dKC/I75NnRZEGVdmR7L63juDbSTBsYPPd3HKbiKES4tpZSva8uki26+wbt04ZEejr8xiaj7tTilIBdBBnGI/9tvS69kgJT6V3uHG2Hs4zidSXLOec0j8uPkr8jY+K+DqZS5/8bDx6JMc9Yr6tum3vnbXNqDpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755581994; c=relaxed/simple;
	bh=NFJ87D5GyWO/bUjal7B/M6+pPFzBdW3Qe/RsXo6ZfOg=;
	h=To:Subject:From:Message-Id:Date; b=IGg+DzLbQ5Ctew1SBbkfcNd52L5P6HS4fn/OXIMt4VJRJb0D14So9RPdVEYJiB9v+QgcleEYJ/LKPwk9XNdYUVhGLRJ9+vBWZ5cyUgz7gv1FiGedKxYXwO2FS7eIY72PrFahyvpdGTQ+ycvfyoM2WDw4G2+sS3RCyfpxehw9EOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fw39Yea+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw39Yea+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C18EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755581993;
	bh=NFJ87D5GyWO/bUjal7B/M6+pPFzBdW3Qe/RsXo6ZfOg=;
	h=To:Subject:From:Date:From;
	b=fw39Yea+3fO23Ti1dK3xPjY+y5czzbLaCKjLD6Z33idGZEPdtM/uKEn2U94UXhbCX
	 +xEoH71bvmDAYCUeWKB5eoed6zoHdHPKIbOblSlJGqoAb7xA27iHFjO/MbQIOpGE0n
	 KpijAFoSR6jtzF5YHwH4LemJyqYUGpVCldlihRpSH+o0lqlm94YsET6TetuGYZ9ikA
	 L4U1fR9w7+mJ0KAaJiVudWk08gw+YAKhDMer7igMtXcl7BRT4RJ2FXFeEaWqEep1bE
	 zHbpyxtbB4iGrc6RaGGJ1XBz6FmB9BMWGPFQSgjiOTMgQR/gF2oSRsHRN3OhGpbIGH
	 G8eN9Ecr7pVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2ACA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558199357.4672.12073367719818143279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a09602baf0630d03339ad27a5e376fe38d6b2d168c3a0e46db37635bd79fc9
Date: Tue, 19 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755581993
