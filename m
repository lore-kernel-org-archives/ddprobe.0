Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3C072614
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759167594; cv=none; b=hygMSqloYxtKLWTf2OOvPLD36Kw6+8/d43s7LvQjjXjAoT8o4r2TYKLVAhVM3l7kGT9AacbX01E6jN5g2DTklgsYtScmBfjwuF1xkIPJSoM+Wv9ZEEojp4hR3MEQhnfvJ78xZPb2n1PwbS/Svb/q3qmN/SiGeYXA7SBRGVeuRCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759167594; c=relaxed/simple;
	bh=OiVy4D0LM0p+kh6c/5mebt/lLMj0qAKIeJtz5KhxrsE=;
	h=To:Subject:From:Message-Id:Date; b=iQCAlPv6pJ4teUdM4xK3q5G8uUwDHC81WKyzyqaZZX32p0TMjZRAyboeNQjV+5d/9M58xWP+iEXLFi0p+AIjgSFgVARTCXFdtKjq8gY5gBdXtzS26jl/SOzfWmb/JfmGpszybEPtaeO14TBCOmy0L8K4t7es4l0HXoxZAOO7wII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wt4aR27b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wt4aR27b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E0BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759167593;
	bh=OiVy4D0LM0p+kh6c/5mebt/lLMj0qAKIeJtz5KhxrsE=;
	h=To:Subject:From:Date:From;
	b=Wt4aR27bmygQ9ltUvi7ye3sL03QONd/9VGiCcTNnMLc3cXzvXyGMY48xsI6dhC9We
	 UyG2Pg1KfJNeh6wGI+IEA+2G5QKI2kPnjA2jmZcY12MlcmjCsXegTorDYa5uGmziPT
	 c0FMC8rUiXeEWtxq5bdB48T5tQRyQsMX2UWdG8y9RhJQfCBq1T2zurVOsvGagSpbaH
	 GEctacUAS83QaZ4p/qqUuR9tBDmNhtdbQkqgS+YXVlF4v6UIuNiSLc6EU03crqGtWz
	 9X5DziK0oZbThJdHhms6HTsUTkP5yQU629Pi4XC6e9txi3XRqX+nXNQv9oOkCj2yVI
	 B9O48t5u4/Q6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95026CCA46F
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916759359.1461.12043592186262269632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246ffca0d8300bc9b24be5f7a54c855b75da5af85bc5cc9116062c907197ff7a
Date: Mon, 29 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759167593
