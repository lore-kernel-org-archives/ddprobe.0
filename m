Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22896260569
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763110194; cv=none; b=EHA7nz7bNdDoUcDTTNFuhANbwWL3bFU4tZbju7bXeaGimM5XpSZdA13MigMJ5FBa1km5CtbeqWUZg1IdSLM/2TciQni3rvgN1bYzwr0oW0tfpPcsdNhc9Jg9XTVbgGRuOVOHGM2w/da92xGa2UK34WQeebdC1LBCyq+kZLT4/zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763110194; c=relaxed/simple;
	bh=gWY3HBXWOHlIL4sHeycC7D0KaSQDvFVRgvVEHy032Q8=;
	h=To:Subject:From:Message-Id:Date; b=aoEUiwKwXZuKOixqS0SQN8ueCCtCv5MKgo8aRSXXJrMBSQXEyP5//4uGDDJ/pe/BeaRB+jnyrPZL4wUYw1lMQyiAAZaIsoAt+5qkxA1bdYShUYuxtpEPKLzzYomR2+1e5D4pOgEf71PT2gVCTDMGXAVM9IcfkseHSYbSUTNZaNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lccaIdSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lccaIdSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9383C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763110193;
	bh=gWY3HBXWOHlIL4sHeycC7D0KaSQDvFVRgvVEHy032Q8=;
	h=To:Subject:From:Date:From;
	b=lccaIdSjxUVz27GQo4ftzLqQIx/wQjMGsn9G5Eh7HToTb4ClBEUrDV54WUBFuypAt
	 fZF/J2qHCY2JQzHBnF2gk2cSCRhRnSeiLkiIDTfWE37jTrYJTgqC3+WrL9o+f+jq1t
	 +KxMKzaNb+rsbr/8jip59t27EREA0eKFXbYJaCAdEK6B4JyWe7wZYyyg2ZMjM7i8EH
	 0NT7ULohKvh5KX1gY/+NbFUjE2QCiF4nTV+a19ZlEGjWlD7GOyF511bjReBUsF2qW8
	 6o9ErpeNtg7taRjxh1rEANkxgNgCFPz4Fo8FQ6utm00DeXI7tQplmpH9XqjATjRB+5
	 JXS7ou+1T9DeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F8CE7A8B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311019358.31930.13671182166517385572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa00edc023a1ef392160e2b59fec81c3c45a24489450c5df5bc9bb43439a86ce
Date: Fri, 14 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763110193
