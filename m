Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDDF191
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754353795; cv=none; b=m67krocdap7nNpzCn1wCR7/pWKS3OVT/wwhmbdo6jwvoACUOWNST+eJ9/p/Qh3dhmFrwvlQKkCkoYVwzW5X3m2c0Ia/8ArpuzcWOJKqj5/bOJCx4Zhf6J3Uv0MtT7z5Ue+STypfqkwC5p01ogns4UE3ZiNAmmBwUbcWjXXL5qw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754353795; c=relaxed/simple;
	bh=VuoAYT5k/QvyIy5/v2NLQ/30nlr8Gix2xJDhoUFuSn0=;
	h=To:Subject:From:Message-Id:Date; b=BTnvcAoOcQ46yeLo/giu6C1s1VksMwEvj2sXG6HqrpCzXWSdqaw7c9s63J4GrJH1T/2KABW4PtS8MXgth1TJm18tn306f3bH9Vkq7e3wQVAwhKZdlxOQkrcvhivc+PGYb2YovtlPCpIplcnAlBYfa1Z2lCzl/UTnbs8qgQXqU30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg4pxDPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg4pxDPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754353794;
	bh=VuoAYT5k/QvyIy5/v2NLQ/30nlr8Gix2xJDhoUFuSn0=;
	h=To:Subject:From:Date:From;
	b=jg4pxDPd8YkqPboIaYw3rhu6aEwjrqtOc3eacph8DXwXXZf/KrY19XW2KdINvREk8
	 8SOVMxWVoNP3/axnbRPemlnC0yRDugWb962y60KSLNZYy0+Z/QNjf7OAJJ/xs6C2sK
	 RC/3U7GLi9PZNj6V2cxVxj/LhKtaRI38zXNUT/80M4YbQV2HD/nxWyxPrBpA/rjDMh
	 7MNluzPuC8Z3FNeA/Qh4pNTN0FRWQVWqm/HSnkX55nW/j3hzWAcG+KIxHrP7+zHYgK
	 K/++o9oXLZg3o+Gt5Vu0If4UO4syfyV3Fy8Nik1pfZmI8xvefZfe2T61t6I0XYtAAx
	 BtBo2Qc9ogt6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90080C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435379358.10162.1205828068647504086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589af38dacccb851f831c66d73168e27ccfc02aec4fe44fd181d884e50332735
Date: Tue, 05 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754353793
