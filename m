Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A61338553F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787335234; cv=none; b=EZ3c+CZWiX6xwZ49GvP8KxlVZl4HnmCaH+P/9DO9AEbm8qD3VCEN4mLN7t3ydnjbuolYYaY43NghOKwVxSjxsDzbwmddkv+xXRMaI0UFDRaQpsVB6nMUr1JkQrsFh5bVIjjiFiUYs2DjvN48GYzlFDg+JHbKhjzLhOVyMiZ9gA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787335234; c=relaxed/simple;
	bh=y1SkLPuXcqUtsoM7MlkAnFTCuyd+UCCvvB0RImHPDLk=;
	h=To:Subject:From:Message-Id:Date; b=h344OV7P/ER7bXsa85XPaYp1oVafC+NPHIqgknmrtIpRA3Z056b0hES/nlpM5T9hqwqyQebkyHqZzFrSmktmwFBg3s0vOy7EXoDjPU8bJfbxZZ8WwvZHtzMVqRdZ+FLT8aM7E1sAUy4GZQuwXWE+0CRf5q+wEmd5JhhPFY9sIEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqlg5WK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqlg5WK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A82C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787335233;
	bh=y1SkLPuXcqUtsoM7MlkAnFTCuyd+UCCvvB0RImHPDLk=;
	h=To:Subject:From:Date:From;
	b=Sqlg5WK5fQAdOMudGZAhLoqYm22wXan3GguXEpG1fT9iQNGCkrffXbshA+CZHm6ak
	 8xMBBnG6T/NV2UYbTGap+IE4cF6XQkuEOntIjnmvgAsDatjNX3DQuaTq+nTSsGbdX0
	 vIgVcSyRGUhUdU8MQQBI0bAxjkMKG1m8fhyq6hf1EirSyCqOhziUUs3s6M/T2clHd8
	 eWgcVwygRQHpiqYWZH6hTNNBBXYAgPRDzVofbE62uxSbP5hvCjf6PXtokPEvam/mFC
	 gG8nADiIkaxoy6FyTLpxnRp1bJKQWcC+T/gTN/Cg2P04wvVkM8CZ0FvrWt0thnaZCC
	 TRIWJnMB9sC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B76C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733523372.29253.10820303869302681922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5510fa938b634462448fd89e112fdff6e0a5902e1fef75d0257aca86e92a02e
Date: Fri, 21 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787335233
