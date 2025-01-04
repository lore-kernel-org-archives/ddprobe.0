Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699C44409
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736009754; cv=none; b=TwKh5IyZmuqZCYLddxFlSdLo/HqWgi3Yjlp00f97zWOrcZNEc3zTjuTEx+9Gc6r4qzW2N3Zh8vk0WSst8I2SVjcECfnVtHZew8BjIkt/mzKK1bYVGlCLUwhyC8u2yvMy5lnf7ARUS6HtxeEdBkV5DtZGgbm6ZAyt3jNojap4Bi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736009754; c=relaxed/simple;
	bh=0kjMovJJsGtNyZNJW8ahLyQunnrpP+VKyTvSR4fLMKw=;
	h=To:Subject:From:Message-Id:Date; b=snI+3WwUcfc+x017YEMYzKjhsLkecdMhw9PvetXX0epJvGca5PqQ3ghrtSRJ3fN1ra6IaVmPurG9aMbn9wmE0aFoduWDc/uQS7BeduiBVU1GwobjBx2M+s3kQPNcsKd/C3gA0yzxxN+ZuR5Q9OPAue6/VBslu6JfB/ecQrMt+Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4NG8pYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4NG8pYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09C2C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736009753;
	bh=0kjMovJJsGtNyZNJW8ahLyQunnrpP+VKyTvSR4fLMKw=;
	h=To:Subject:From:Date:From;
	b=A4NG8pYnojUkbbWJA+MdoB8EPNSatkvCjfuInuNF8sBWOLaIMexi9Rp767+0xZqhH
	 2DkukCOd9yXrVVwT+oC8Qrvo8aDA16SlrO7N6Kll3QzmilB87OrG91iG53+GlJOFA9
	 8/XtCmhev5P8btj6rE0oQuTPSPYUbLbf4UeY3vRvonRsMnl5ewo3fNdxpuyqqCZL7y
	 /J4CutDowjp7yzLfpLmgi5Qt0g07Ff3lq6YFi0R4IE82NeUqaailc2tUJ3rCE37Spz
	 g+I0i1c8WZvRUJfKZgvxm4cdUPiFgvgjde8gv5MRB2F1zgwPs2whDljO+vjes2u9MG
	 eSMzbu6oz8JVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3771E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600975360.23548.15991041712104264168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d50f4ff13489090773f0dd041c2a35da056cbc2ca82cf154af18d552fb097f8
Date: Sat, 04 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736009753
