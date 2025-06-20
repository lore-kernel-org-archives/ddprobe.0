Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154392EA738
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750445994; cv=none; b=PDRRfPVIa1HM8CWu8qf9kqNbgCEV2rK5cgWPUJqXPhyVRm8LdU3GOaPLoLUVX7UJzYTDZqQP4gF7CS2lehkkFUxsXRQXGOCbqIHNXDK6M/NxeCFRoh/F4hxUUB2t/VvpJtXb9uqWPcX/acjA/d1XR7Vucc93+DCkeGJnyH0jay0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750445994; c=relaxed/simple;
	bh=7G8j9XYsO8+ioos9jz5XXH82uzP3yHNsS3dxvXLuoyE=;
	h=To:Subject:From:Message-Id:Date; b=CiQE3qwSfspveBUxD3IFUca/1V8szSa9kSdZkr0IQCU4DOlf8VBMDE0A5yEl/zPeZmhAVib4jKSMOlxpVNXgxxg1aWt9dkew/PPfIiAVHq1i53Z5SOGrdKaNwETTaZQHFYZT761B85jvf1HNZ+vPMb1SZPWYZ4EtFxE+6pZma4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bk4iNDhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bk4iNDhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1678C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750445993;
	bh=7G8j9XYsO8+ioos9jz5XXH82uzP3yHNsS3dxvXLuoyE=;
	h=To:Subject:From:Date:From;
	b=Bk4iNDhqAdkixBdAsIPmdi0el307Z/9mY94+Rijo5ck+BlKlnQdF0UglvXJyzDRcb
	 VxKJIdRHublTOntvZzPBynasThFlesnq3yObBy35H7Ch81CqOCYDE75zUk65U9CMbN
	 AM7vI4hfiZ7bjxel6u6dJ+LOo4eH6bEdHLNIq4C6nXGdp0zjwFYp0srZ64BCTxuw2B
	 ASSIlrQSm6mZSrzt7AwpxlkkgwLP4HfXNeYbssxGAJfWddivvAIeEWrqvvKJD416eA
	 hpor7qubWVvdT07iiORZ9puUqzTWFx80DVrGY1PgFYyYcUjoetWwkbjPghWzsl+mB5
	 jcaMaa8J/wH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002AC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044599357.18311.7632572926920915877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92243d13bb908ef2c572582770994f702f35be9d3bd105d0732b9c835d2cb99
Date: Fri, 20 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750445993
