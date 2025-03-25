Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293CA5228
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742861994; cv=none; b=i1lKWatR8KEi00khs8+1LJFvzxcLN1y6vjPuCLnP78DdwEOWuWczl4wKzt+vqcUn/EAU6JDVKWzdkBliAtWcWSJI3GUvmd3jmtYhvALTHsM6H3/aMJfks25yWHodRkw4rRA96/X7zVwMomWDw17xnRWw3QKuPD/6oYzIQLngvxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742861994; c=relaxed/simple;
	bh=N/cLAg+N/H+hvYd/cN0VL+sHTLw52ikxLFAo3kT2BLs=;
	h=To:Subject:From:Message-Id:Date; b=etsY5E9QslzZWiG9wnphNHQw+O2aEgZXbdiZW+9dfy5iUrw25jVkvmqpj6TJSABeGnilTLD5N1+RhdosURX6OUGUagUGMxAk6CKChu6oh6Uyu1IabmIR5pLe5sJuAyx9wmtK8/3rzNgfBEq+iDObEwqSLLcYz82ZeXtjpEBd3EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDxDmeeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDxDmeeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742861993;
	bh=N/cLAg+N/H+hvYd/cN0VL+sHTLw52ikxLFAo3kT2BLs=;
	h=To:Subject:From:Date:From;
	b=FDxDmeeA2HWACdY707o/CKhGb+hL70BUnaF0cCJgDZcZwlKCbCaQ0+cEzgmGTMPLL
	 ukIZVk4WXP7CgPRWC/Wl2lkbvJpjqvLOi9PBEwSjmm9udusqjxf3DaGwCqABTr7vZX
	 RhL3t2oP1NSbYJdOgQZqNJMOFjyhKGUWvFsnzEBM8RT3b4g+6Q+fHeA3eAdGvECFfO
	 e4SVrDatME5jAfDJBPPwp4vm/5wMI2MA32UNQFMhU7m9kgETsBBrYvzxLzr8FOIv8j
	 DKJLuwuOpD3aKn/Uv2PP6AAbuTLcU9gtRqSpwFxXdlUVKvod0u4CL6oUzRDUN7Za1b
	 j8FYgkxUANxLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CDC36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286199358.17055.11808686753725684844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eacffcb8bfb96a068ab56eeafc99afcbcf0951aa8000e571dd0aaa99d6eedc
Date: Tue, 25 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742861993
