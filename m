Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEE1258A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737698154; cv=none; b=c5B9j4DQgiwUurl+ECN45fQ+lwjtON3I8UmQMCncsE3yvyfY9R78ZS5LKqmBW2c/bH1ScAd/eLy/GX39hLN+366k27Uzj6PwYoepFZkPZZTeUwZJ2S7Zz8jsKKx8F6SVTjtBSg7zkKMG4ybveuS0MFwAnrRJsY848yWD7acqkZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737698154; c=relaxed/simple;
	bh=xCslZq2LkkadPEY0JSFRI6VOEdPmKmr6nH/nw/fy5HY=;
	h=To:Subject:From:Message-Id:Date; b=iL82nintQGKsrqFVrZh3RuY57x20zWc2Tk2+l3n44M7aKxfgAmrSFiOeYXakWBINwg2I7qX5pjyAntvYAG+H1OyJsnXMfUsp7K6LZsMXQyw0UoujeUygHXMSDhuNqnNRXYdc5p46lJO8HYXqedaiRZqK4zw8P6Xa8FnmeKKuOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prLApNCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prLApNCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E1BC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737698153;
	bh=xCslZq2LkkadPEY0JSFRI6VOEdPmKmr6nH/nw/fy5HY=;
	h=To:Subject:From:Date:From;
	b=prLApNCnH/JC0vf2O19CWw/ZDwSCUv7N0E81U0fs0odGt9WgPSZ9fLcFvi4aOFeT6
	 JVMriR8m11mD53HNLdVC3MeJ8RJS+Ar8pNEhBMEObyoqcfRwHVCDoA2rmw8C0MhyyN
	 hysStW0HXss4swj+LES0I/AQ3Pu3wFKOLNM0O7qIVGg+4oSU8feGqyWXA/2E0BK96m
	 tC4Quu+jH2NK/39SWwueaLLCCndDATLzCKUIt4Ddm6QRubF4RK6BWAeAwJ7fDmYc8U
	 i6e2zZru/eZkUIVCmHYqmT/7PvdEvBP6i7hKM8SVE+90qy/V6e82ZwGPdiqSVQQKyO
	 jHO9aRWopyfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EAC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769815358.6347.1263006745201980879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0fbe3e02b1e437d0bafba79759864b8432c6d28f3de762ecfee2e14d7d8069
Date: Fri, 24 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737698153
