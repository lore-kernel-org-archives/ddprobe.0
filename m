Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E412BE03D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754918394; cv=none; b=RvaF7OGPNYrveXxnxn44q/eK6yJyoBIBS/XezTMdcwfurRpo4AAWqYfwbPg7E2MzdKfvdphi+RmbbhcJVC5WSIJ8JbJhlwvS8sxxHBWLQm8G1teLjZMvKPvohkqHjXuykoYpr1Wom7bNuenpkRIawmXtlwSMFcZInckUT6q8FfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754918394; c=relaxed/simple;
	bh=4jBWXax/2iKn8HZpas364fZtMJX1PoPUfdbMZsa0OtQ=;
	h=To:Subject:From:Message-Id:Date; b=o/lwvdzulI55M2J3KC85O71woDbui8v9pGvB+aFip7+8lsoEP3ROHRFrz8ZzSgbEcCVY9iQkV9jRwQiZMGLtXPzXSrRACogYSWQzKbizRMXhitOFLgWuw/sii5d6O1ClHfgdlQVK7BWqJ4FFE2027tOv22xZx2jiaSjP2L63N6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCfVK4kS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCfVK4kS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D48AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754918393;
	bh=4jBWXax/2iKn8HZpas364fZtMJX1PoPUfdbMZsa0OtQ=;
	h=To:Subject:From:Date:From;
	b=rCfVK4kSKKDLIGCSx1u7TjSD80Ewk4YtefB0KQ8MhWKuNLgvXJqe9kBRZyyy81gTj
	 +9kO4KNfJeiCxhhLdcOHZYDfd/ZXKHskqMhJCcKt7K8aW4f53elDEKaWJljtVpoWeG
	 cPONwyT44inc4gcvQ5LdsjDB5m0X4NvhxrTRw2Mc13jks4HIKOVZJjCmFFxWFpIKNl
	 WYWP+PfWRRd+YGYNAO9GD3tP6+pkk5S1kSfZ6Rj+PmymttyAzC9zDXaxp700jsI9Km
	 sS8UwCBLsfnk9iDhS8PYK3fSSeydeGrQDpqsNhmcE4jtDqLFw9rGEnkqNXxhXmQ/jf
	 kzhUxfRp2y/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FDC87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491839357.29735.11236820444616281212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375ba490927d9e63eea86d1e49261360ea3015859fd8902cad015ee3f92952dc
Date: Mon, 11 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754918393
