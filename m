Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5085C284883
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782430654; cv=none; b=E6ZkmgTIiDJuPSDPBKKKljTOS+4ALVFSqucZqHa/U5sz5nQWAQo6B+WzF84k7Sp4N5qLq1iE9EWfynbtQym3364toZkfa8GSOeDSpWqt1JSjtEa0jH3sPR0qk4/JYSjN3cC4qmcDl5dTj5iuxOKJNEcoIyI8gHVYBeH9HPdSmu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782430654; c=relaxed/simple;
	bh=KiQ+eFbFjQJJLRqkm90MqNOIFKROZ75vhmG8xD9BAtw=;
	h=To:Subject:From:Message-Id:Date; b=s1LVgPYL9JV6tBcFuCix7dUXQ6iy5PwnCAPq9COcPTJC0Xu6suwkwS3aBLjYkZOvidfoGSmA6GPuUVqlSCYUNzYg86ZWhS0W+YupP9P0eoCPbDpoUhB9ibtNkyYSDHwhrI3zpvN8qK22r2hfMtaLK/GaGDozrCHN94ZwDC0VjV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q77KwNch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q77KwNch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91DEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782430653;
	bh=KiQ+eFbFjQJJLRqkm90MqNOIFKROZ75vhmG8xD9BAtw=;
	h=To:Subject:From:Date:From;
	b=Q77KwNchWvZD6XDXOVxu26S20flpbk3XkSiX+67p2i35dxPAkOMlGsEqGSRAgDmjw
	 TELiayAohXFVXs9aU2MFHm9R1mwsB1ZWzPIaoD3KAhlwrkEuz4uKnV3wR+OEaBltg7
	 GfeflBEnqTSsBxx2Fm2zncylQbOS9OJDWq5xlklwORvbZyZZlSI6pDyBr2K/2C1+NV
	 nQAiwHzX3G1ulb0uKkvh3//2mV/HZipb6ap/KHPgl9CB8QFU2BD/HyRxTowPiekkcC
	 eeIMdX8KxumwG6rmbmZ2AB28i3fH9IH4RQ+2s+hCUjRZo6zKB1Q/HLQqTA/CHNEKCU
	 rW9K4uLEnADwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9C3CDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243065372.3037.7850029240204546793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fe1fbb3d2b339869fb610852cbaec9d41b151f9dce84498944736684421d65
Date: Thu, 25 Jun 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782430653
