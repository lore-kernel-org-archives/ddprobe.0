Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387671DC9B2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736167554; cv=none; b=OMw+EkxMZfcOEUy+gOkBeFk/zEcUHbSE+x2JEeymIc5NFoel7unf5LwFROf5jsPApaCGHobwK0ywWJ84eGXTRQ9659tM6sKf5n6SgX3OlU6BHRs8OH/vI04XAfULitPEllhryNng/FWrN+fQzQ/KxOqcYQrm6nKmWrjKiLDhF8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736167554; c=relaxed/simple;
	bh=HX2K8FcoRTTufMaf9ucZToQhKcdK/nP8bk4z70keGI0=;
	h=To:Subject:From:Message-Id:Date; b=lNJgMtsirn3CPoGbQrc6j2PvocvyWLwFhUK2tLSdX+adfsdfwr/piuWtygDBH7Li3zqmkPqD1BZSaK7/I+tuamGq/de+ct3Oprz27q0iOp/AysL4BNxqMxI8j7O+MxPBwSn2M83j83hOr1N9hfiamIlGdKKPmbvaEKjHm9iW+Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7d+PMII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7d+PMII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4764C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736167553;
	bh=HX2K8FcoRTTufMaf9ucZToQhKcdK/nP8bk4z70keGI0=;
	h=To:Subject:From:Date:From;
	b=G7d+PMIIF8wrgxh92j2ekZ7Wnzm4PCV9LZJJbke6UwP54m2qdRqJEh25e/tHVtBgH
	 UobRxQs8r/pTkDCiG1ACk7gQ/fAbzLrULa+IZ+Cv4VRvmJAF9nJ+9Bgw1mrvsyNpxj
	 norlnVO01RQnhZv32UgV11sS084VMskrIQF5DFh20be7krQe1IRPB6ZzXX8xToK3zY
	 IH/B917C52MwYcP0S0DW1MmPkul73Ic5dRzj6GFBgRyIa1MNGh+A1kqn6RvL1z5Wpa
	 nBErGQvjZrhDP4YfftZ9DahwZ7l2MkatLmdykVoLJStfrSO7iqGeXMVQwVrE1ylHy/
	 /n3MvxQB+PxNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021AE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616755358.20387.17112601269917836934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4531d4239fc9d9e6a554d8579095dd8b2257ccc36308df888178ea52f700e1
Date: Mon, 06 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736167553
