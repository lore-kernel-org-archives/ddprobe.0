Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B03514B06C
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759001394; cv=none; b=i1mt9+6agr/FpCVMd7lCgUkQgKZLfvmLkQc7QkLHnZ4sdMZjjmyzcNCBfZLR5KlYd7WE/+pUeRbJPxHw+B/zqAKx59m3R/4EcwaLyU360wthGXpKbnGhWu6H4V6baEMEmO4zfEex5aFjmKRYIVOWeM5jBbyFQHWJ7kZXUiA3+jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759001394; c=relaxed/simple;
	bh=mCDmcEAXGWo7CnXDad6+TUmSf9fRECZmwz4rIaaKRXU=;
	h=To:Subject:From:Message-Id:Date; b=kqdPJV66dMtMHUhgAaNLxqTGkoSS6dPRXPbmTuL7+ENuyOQFl8RUgemnidbwDLmvzkS7aD7fGJWfZRLp1noY2inXkPKCZ1aF4/tFKS5EMgYU+1XGJVetbbNJU8ZTynqaDTvH+2B4mbBzUogZdJjGbqDIFBf/7Uu666rJI4P30eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eELT8nEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eELT8nEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F82C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759001393;
	bh=mCDmcEAXGWo7CnXDad6+TUmSf9fRECZmwz4rIaaKRXU=;
	h=To:Subject:From:Date:From;
	b=eELT8nEP3kau9FJi5WoFD0hZ9at/BrVafhucGjzKzYukURBZ87oe0o58AKlQjQODg
	 u9NPKWgxQpva7ivfSVvcLFKu+SNUFcNQSAb8zz4wflOg6FoI0FSgB+ID7bSJs+GAm9
	 P5HlK0WFxNFaNNPyf77KfuS3rlOMZROrRRLih4j5ye7rHSKPbFBI1F9Ubdnjut5yAG
	 EKS0HlIwv7lgH7bYTGik7/fRjABHdRrHa6i+nxBU+IJDSD4RMs25sN0XBG2K3AX2xO
	 UQQ+dZc/Mzdd3Y2149FqRK0SldzSZ/73DqywrBPcP+kfBJOMNxtMKxlGgXrEpM2xh5
	 jqrKmFwABFVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C12CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900139358.6912.5919605766782390056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9400bf2dd058e784ee07e67be384233df1d45d0a3aaf8bdab0dad2127f5da8ee
Date: Sat, 27 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759001393
