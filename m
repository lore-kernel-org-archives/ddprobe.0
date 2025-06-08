Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B69AA55
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749363595; cv=none; b=V1QLoLVHEaWq8kBVnFYxYBj6Yk5OEBPLg+chOAFXAB5Uuuqb8/KCFsK3RVdBJm6n5p8xb3fNSVPs/lGO+suSa/Ae2crsLPaVc8tZ7hlIAMhJESIFJuY489iZtGbeQ6RYAiaH1BNQzmQTecLNnLBEzph4Cw2m+VrtxfkL8WqUgBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749363595; c=relaxed/simple;
	bh=NjjZnt8yJY3bHxIS/VCyeX7FqD2g7L7cgZTQUHir8Ac=;
	h=To:Subject:From:Message-Id:Date; b=p730UUE6JrOtx0c7lgvy9bFSZn/o8Us+zLJfsVr2PoDz6FNexzWCeCyKmGtbrXz+6O2pbVuq+BuZtOHMs6SaNRrHJmOwu09HaNPVfatLHTxIyuz0p2uKzNKEPZd5e18WaX+rJhtCfRkJ8tC37o6EkjcOQTa86UatDGdryM0Cozc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNApkaqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNApkaqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678BC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749363593;
	bh=NjjZnt8yJY3bHxIS/VCyeX7FqD2g7L7cgZTQUHir8Ac=;
	h=To:Subject:From:Date:From;
	b=dNApkaqVHYDSQuEPrMiILFnUzwaFz5WlkVRpBE5eHjWnmSmfV/wbCf7UQGZhYqdoQ
	 mtI9QEspJXu3QbqEG4NJ+NW/Wt5K3ndV2C5gNAD6z0jf6BvzdTyBVq1xDljveSzoL9
	 zX0btbg8UVshFvPuJJShKG4BbRjJ7JG/w0dz2yKO7wU3EZiJTEpyEG9lB5luFc72+w
	 yu7EU6w0m8FysmCmQ7UAR4tQbcj0ar8vpn9UfB98xqscfREVhcr1M1uqr8WONllEW1
	 v0cqulzwahXGlSgR4ZKhqHZWO/QIFrmXnvEnqU4rQSZwfleiWM7Epb/ZMxwMXTmnvZ
	 DYaiK8WGomn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB1C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936359357.11716.317564565951358432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a240e6e2d8abb27c1c287c5376e27a202a64dc08fbf5b1b33623074c9d9c8441
Date: Sun, 08 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749363593
