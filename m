Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AED288C2B
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758703195; cv=none; b=pOhgIZ9kjdRaji9TuCKVYDSIJsmlvt1pJn4KFvvd+0LJberZP67ZQOfbKFeNnsuu6I1Bbg3ztikgKgPT8F1XRzQbc33/6YOmDdkjQRfR00z8+9hdAF5RHgVkFXFB3as4SaH8BcC+JjGfZ+myqWMq1PPGHc9ajCx7363t+IqntgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758703195; c=relaxed/simple;
	bh=UkX78wEGlsY5uP+A+rICpLlc93c2J/92kmn7OYZSGw0=;
	h=To:Subject:From:Message-Id:Date; b=XvpEFAzMD2R8Hr4zhhN9zLhuC31MmE1PnTQeEhihTFxhKh3C14WtN5k5jXly8g8PFVbQaQXi70l+hHAUXhZBUcqfqqj4rxDVSSbdc1WQXDdJ1Iz1CeerZseT5rigJExK9884dFlxbyHmsoeWAastR4FkVJilhbmlc/dVkK9+36c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRTrsoi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRTrsoi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D9EC113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758703193;
	bh=UkX78wEGlsY5uP+A+rICpLlc93c2J/92kmn7OYZSGw0=;
	h=To:Subject:From:Date:From;
	b=lRTrsoi7StDRrl9rpzpBasaWlV7QSIQEolzHElYHX3DxD17sWazjWRdJN8y7tgqoy
	 HFpoVj73nPjcrk6ec9UxNM+btrQkixJLlxDAhXknI090BNLYbnQ8VDb0AHW2FTG/Le
	 qh3e3Vp1EY9H7S8E735xDZIOfugBoPFqdiw0IOF62IuN6vc3PhilJkKMT2TFBj714Y
	 JcBtN7Ja8uPjS9V01XooBbRale/1joItgh9ajSUPZ1rPPQYUVAEtLTSUS6usgggPE+
	 0VKMe5kJ4FWfV87vX1YZ8Ky9Tc9+PxKMlPWyG3lu8k7wT6UfS1YyzV0D2X/p6ynWaX
	 O0e6YbEm4a5bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A769CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870319362.9862.6483399003464960413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daac32051fb49fcb03ab7d2be8feaf69e69a1a4316368836aaec8a0358b02ed3
Date: Wed, 24 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758703193
