Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574664AE10B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788624635; cv=none; b=OaUxjJZC8ITjL+HzN4rHe/1ou34IRB5LxI8a5FerFxDXJFpVQ7zAT5Vdb0IdGz3Us8Lg96eMXHppOd+fZwKdwIzlkXXlZpeYcoY/UI6+fZdx/j0to6dVHYUsbo8KzwSfj8WdMo5aotbTLVDdjN7OjEKLWyc4Bo3i0xmRAM8MKXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788624635; c=relaxed/simple;
	bh=9anD6yeUHzB6prKudUNYCOJhafjf5hnzhFuUQcW4H2A=;
	h=To:Subject:From:Message-Id:Date; b=lkjH6/G3wdfBw4IEmRpToDbphlhHtQDCI0blcc+Pn6LXaawg8imJ4yn5bFajciCTz4G+VJvZ8LEtxUUXBelQaaug+9KQjhY/jX903XXD0jEnXMA6Fx0BwBm8ThPsK+nXYPy5mQugJfDNvmeBxC/K0k/mLd/LKlkdzuX6hfUI35w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHeeC5nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHeeC5nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25ABC2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788624633;
	bh=9anD6yeUHzB6prKudUNYCOJhafjf5hnzhFuUQcW4H2A=;
	h=To:Subject:From:Date:From;
	b=dHeeC5nVcqO4LWn4M8HPenb1RmWvpvZXWeDIAWu1ix9P+UhRq/Xx5lYUp0V/NKn5Q
	 jSDPmm7I8Fu5pa8wSghky47zfc+cIRGecle4ag6ZAwJSw/Bya0nzcSPQYO7DovlWzu
	 UgNPdiqclFl2Du6vhj8AKpZ50zCVYtcg4fG8285W8Fy+qCGEFZxUkl0eh+Y7RND/Ak
	 NiX/84JsMxbINGp4BW3jBailAF/3mZl399NGj8HkOasqgbAKj+GGRgo56iEg0vpCRO
	 Z/Hqr8H/QpmX1wQ0dZbFtFRgKzfDvBUFRHm2Ac/Iabs5eDhHEOXWz3gdECqVCjJqhn
	 p7NTbDRjzhkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20E4C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862463369.26559.4449047295500993203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfb9ce74763b668866856f140ea566cbe6e85962d35112df50f8e0fba3579d3
Date: Sat, 05 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788624633
