Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32134224FD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736844354; cv=none; b=OPqDNuY/RctSl2ftzymeDIMA6tzFTTwCr68NC2IsS1wRW5RufhwSnBsw42Mrm2EJzpjvBuMabkPR7UrIUiFuIu2/D7ks5X77Lie1n8vvCZ6E5nWgGGGJERfIhnmiRTL/F66CCrA7n3rreU7CvmX0JIDXJ/yGcWIbbX0vtzOy574=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736844354; c=relaxed/simple;
	bh=iwAnr+mTh3Xi1JCP+HsbM2YXxK8Xom1hGwp8ukvOhog=;
	h=To:Subject:From:Message-Id:Date; b=JJ5NLKvoGFnu3Nl2h8dOLhCY424ztZUj/AmtnZckSatAMWH4fRWPSVFibJFlOd9INDtgiVVIBMem10WBheQ1KWylFzFZ+3V8b8NGEUoRAauhdtjoEJr8u3Gdp0iXWEj/9m5Lw0MA60NtvSxLDi92Zfw99AM5B0zPvx4SUztNjqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhQo+uHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhQo+uHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC735C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736844353;
	bh=iwAnr+mTh3Xi1JCP+HsbM2YXxK8Xom1hGwp8ukvOhog=;
	h=To:Subject:From:Date:From;
	b=PhQo+uHHqcWZw0ymk4jO1AOOZSkio5MiAO8fwFronUJAAAzUWhlFwrfyOv8yYIudZ
	 Qy9hQ6WnTGKgoejBcIEPlb5UkQxlJ5vK43PjvHOd9U21YlKXtSwDmf5ScETJufWDLI
	 zTKmIMTiZIK2GtzBHTJWXS4H34PFPxMw8CsXBj+9rzdGIEClwtiAddYUz+W4mfAbV/
	 wa1CXUonOAEMsezXWrZa5QBep5okLV272A0EPXk0WdG1PFHlcVvZCXlz7le3lIjGkH
	 Rxqzi36hRkKAh9nfwz7QNXWOZrdf/oVT1Mtb28D4UXs9zrocP+wRLipYENPV4Fq0NG
	 Kd4/IGKCBWftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C46E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684435359.25660.10362486618370873535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2724385a50ac82fe871fc244f0528ae53ed423d409a9439ec70ee97fdd9720bc
Date: Tue, 14 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736844353
