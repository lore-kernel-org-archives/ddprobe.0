Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E5B213E7A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763819514; cv=none; b=Wj0JMuSg3OdZk8aq9Mbz7TH9TJg91SPliF9o/Axz2ri8k4h4CvKTAfCcFWBVlkI7jD+bcM0aJoTnDGVxGwMDXj9g1yJAiCkfDzVZUiTBMYOAGkdYkIJdciBQKTRibPpdtg1NmRfSwEhHwZ4+bnFqT0GXZwlIZDOFgLmObR52PB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763819514; c=relaxed/simple;
	bh=SUhwdu6W1uK/PuX1iWQ+XcmxNWDp26JkKBUPrmwKvLc=;
	h=To:Subject:From:Message-Id:Date; b=IkAAzX93zTC+a16WoXjTnPyQMPzCzzHY1F9rI+Co+fQdKatsjyP0RnxSDpK6zcmR9rQ3DmiZo/CsR/ceu0Vhs9Ut9M/RZB/uv32qgB/Xy4DFQVEH1vkxulwgVkxnZeXfMHNsuh/zWTkMdz+jD+UkgI5MtF/b4GUN/ulApLA1IcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvXH3xDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvXH3xDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763819513;
	bh=SUhwdu6W1uK/PuX1iWQ+XcmxNWDp26JkKBUPrmwKvLc=;
	h=To:Subject:From:Date:From;
	b=hvXH3xDe4hZNXG8HQc2G/fcEmSfT5q48GDYOdir12dFpVBsg8ONEparOCy+jKdtKm
	 1yW/Apy7kv2F8nRmNUe9upD36uCVtUHwLCVbp6jG364OP4tZJ2V91rQhR1T2T3Lm8E
	 UfNeYS/7ExFs5xkNlhhUp8DgVFYxpYUp+DdelAx7yPpUg7awdlwMwuTVeP4HCu1wYG
	 4xMO5nZc6odw6IxN3u2KdquYIu9V/jf/+hz0GUK2LoAKZe08CvXLaIWBlO5cuUxju2
	 WtYoqfVkhlXv7PIAagGSt3tB1V6gY0zNI4DdyyIF2w691SAfUYrfxm7Eg/Pu4hWK90
	 gIMOI8XTds+CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FC6CFC536
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381951358.32219.16992269847623381399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d85c28d03f4cc185e7f70eee854cec036798456a4d3ac56e13a65a7d0d56a3
Date: Sat, 22 Nov 2025 13:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763819513
