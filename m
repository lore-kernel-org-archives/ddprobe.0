Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F32B3B7773
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774440294; cv=none; b=CJi8XHYZvnh1he2BoOtZaxqBtVTZCI3U3bNkcHc/S07AnUTWeVr43U0aiVBZePoyPoD84v/DrEW3JNyAQiow4hXM3iAzeVYret5CXv9esHpcz0EqEFZB/IMTFuotqW7bzerhWsFK1rAQ5HhHYXfGAzM5g8YpvcoDBEIBw/vmycM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774440294; c=relaxed/simple;
	bh=gq/AJA4pKVLypxYL+IuWoLcNlFwgPio2w46+/scSJyE=;
	h=To:Subject:From:Message-Id:Date; b=CUTAuNI4W+0XB7A1MBtODcySlPPy5VdDReL7cM4+jXMlqgZ4K2+ilZmDySp8yGV7y/FmTtAoIs1/dBupv7zBYSzmJr7cpYbSnErjwOrfXRg5RC8pZYgHRH5s+sSG3Dy4zX9nIlf+8JGFfgB77iXZxFvfJ7CWUnOO/+hf9O8gH5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAJfrcsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAJfrcsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD630C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774440293;
	bh=gq/AJA4pKVLypxYL+IuWoLcNlFwgPio2w46+/scSJyE=;
	h=To:Subject:From:Date:From;
	b=TAJfrcsR4tglQR9Q6whyb9zIzSBnMrUjTbmKmJjQENBKcMzFQs6SGNXIYDvbxdhH9
	 KC4r+Tuolni3mUO2GvqfeHWs0rLeWRsKmMvUlYC75ic5ZWMGgWo0Bcd+InYr/EoSOo
	 qyne/+fwO+7JZwf2ArbEmgE2iQ6DMy3sLSiLnJPukcxJBP8WaRAg79u37ktR7Pcozt
	 n0O/ZDZ0YETQX9m17xV1e7SQdtWM2+X4wG1yw/Dvptxgfv1LlV9ObAIuxmFH7qKa9M
	 jpRDUzXokanWaSWFiUWvIO0ZV3mr5rCKzgq7IN71A9+xesQhBf1NNZ9CsF4V8cniN+
	 WIWuJFqSnx2zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1E8106B50C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444029362.32569.741806709634907071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56b4d3a5f8c5b942d26b5614263500be54544c505392e2a102cdd76fc5acba1
Date: Wed, 25 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774440293
