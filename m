Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA1F26ED4C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763704914; cv=none; b=fLhMxcsnSlhF58tp9V40xmrW3C2hI0qq/R4ZySuc3zSfCQ9Ids5urnfHTmEjHiOTHihU/vJlPRqMRy1YFb1a/8k3HkYsstNsRKsSLDeEjSC8LxSL4OklSKTrqZpKcwELO3lMOdfkw27gTP18Bw7dStXzCKJn7p/9iE8HJa6RvH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763704914; c=relaxed/simple;
	bh=lUmrZGePMrpYMbEFeLy/4qgg3wZ4PtTv3raypsRWG+Y=;
	h=To:Subject:From:Message-Id:Date; b=BS2JRIEE4EaYXU6VMAZ3CYDGN5USBe9n1/06qK9N7Lh2NZFrGON9zLnumXHshpzYVlUVQlaSc1queRMyK/joRAe9fz3h5QPokJehSuVbSgixBBrIyWa+6f4rufK8MHk1jkf0o/uf/CAowkjPuQcqOMdTxBnL62VofVRpM0nGAJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP87gr8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP87gr8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA12DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763704913;
	bh=lUmrZGePMrpYMbEFeLy/4qgg3wZ4PtTv3raypsRWG+Y=;
	h=To:Subject:From:Date:From;
	b=IP87gr8sIpPoDOi89F1wUeFl6Cb4TOBIEHQ1WeV0k+C4KNXY2edYgY+VojqnQTkRA
	 lM45lWDCWJoV/VCuKBstFdVRFoPGIwjgbOIDetEqHb3OFFmMC+S8melOlLpqP6mlcr
	 4eIHt1Iadhlpaw/jKldEGSK9gTXXaiVHMyKjLrz7RX+S17mYh82gd8AYTPYEeWMU9x
	 x5ECmJhqgaFN23CyQWglEQjXhKi2BXJU6/7qf3n4EX9tOm+kzx/qHdjf1JVBbZWVeE
	 wGRZNoj869rFdH1WIXtTTAqOXsVCsbBZO2knLpr0sbuhZkPIfMwjRjaqtIrnSux1+4
	 8vmmfGL7E/N0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6957CFA474
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370491364.22659.5583838134477059045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25372dd134a640980ca04f2d173aae940eda1e963ab516515c93ee8fa4e65bd
Date: Fri, 21 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763704913
