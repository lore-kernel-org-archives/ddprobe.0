Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291C52D5948
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764216774; cv=none; b=Dw6pe6HOH+0/mmZMRWBcccN2B4ULPjrQyfk0QFAUsom7pHoI7OqyTdd0JoOYmffv+4tUDodu8PhRle7gZdSeYa+/DYZqERzUIroiIFlHUmNtxn6eySGn3KKBSBF8EndsL+sveMDEVP5hgDHetL/JePQ4T/ELr73bMxAobdgKl+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764216774; c=relaxed/simple;
	bh=CQalBRAWV/vBnk/GSBKnFEp1fQ7Fghp7LGRptbxjDCM=;
	h=To:Subject:From:Message-Id:Date; b=Wac3zLbMt9/QdS/gGhBU9hkfaD6mHBUIK/MeleujPN1KoQpcammj/YZFCIXlBDzKeHmkLcxMIT4L3GnO7kMCY0QXl5MRqcN33VKDugRJWTFxNwhMFFMxUvLoXikPbnF1wny+7Ov6wJLes0LVlCzQoHLSQnRKcNVR95BsM4/UEQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXlOFSSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXlOFSSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D5C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764216773;
	bh=CQalBRAWV/vBnk/GSBKnFEp1fQ7Fghp7LGRptbxjDCM=;
	h=To:Subject:From:Date:From;
	b=sXlOFSSwF++RuzZkZps4Z8wyoLFS2YJ7qXOxcxOROovel8uL/zdMHk7P6uYs4wfI6
	 bmuv7t5SLM0V1OJO+6ZHMwARfY5M2HbEiR2IASMrA6vYQIryIBBzmYbUOhaSYD2Enc
	 Ft2MKNhKz8MTQSWRR6VOfHsG7b9C0qVKs0buMPGVjgS5hroVGk+/804cmgncGjCm6M
	 7ooNEzRCf/gtG//MOBh69lLI4itX5oIRGezDZC4CbrkTYnxoNUKvgZot4kKzSoTeXu
	 ttrDbbCwn1CqZz8wpVlusjmTMY6jgp3LC31Tak3IUrVU52i85jpWMWgs6dNoK2UmOJ
	 EvgfjC8049MWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91204D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421677358.16037.11630229148209908567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05eba42672548f3fa6059a9f962484c6dda217cf6a434517600a2871be8aaaf8
Date: Thu, 27 Nov 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764216773
