Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B07B1B1D61
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734037554; cv=none; b=iFRA2V5iV+43jSZfUzDLt8+EmEZAUNIimuVSHHeyn/86+HajdW69YaMjs/tvM44YQjZ3R8g3Eg1awK3scfRyjbRbR2C4xAZzisRFEfAtYfzE9Kt9ISUx94Gg0owoZJKgWibGSLKRBfaxQkCJfcWJCXRNmmQjiLkxtu2Vtnf8s40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734037554; c=relaxed/simple;
	bh=5DwXLbrUSMRMPmAN2csZ7DyKsW/H/VJxfjSyIJ4LCUo=;
	h=To:Subject:From:Message-Id:Date; b=C4ig5Y5ibofxwXjwhDgBAJtxXRyOC3bmBhNVpm+xSJX6t3nAVfx5vCDSSxFIjzWGxfNh1ySAYv+TwFRIjkb+kRdb1GekFuPCOAO8mfGjm99gPFFQbSIuLFYvxQb8bYLFzevYR9E5VZ7g7nwIhGAsw/Bdc8AOQwWnEc0e7kxlWMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5dZHNXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5dZHNXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C40C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734037553;
	bh=5DwXLbrUSMRMPmAN2csZ7DyKsW/H/VJxfjSyIJ4LCUo=;
	h=To:Subject:From:Date:From;
	b=G5dZHNXT0Gt8XCrfwVZWf5dCEVsEK+EcMJoCqybPsgpdJEUIPTut3/E8Rs8ojguro
	 Wl/uPZamwqun+29E9YvdoCRD0tg87QMfboWgITVAHFUbYWZXT7zblLs7SkFH95vvCa
	 7wmVF6T8X5jBjKFXGiJC9fK0HNT7rWa/nG4JguuuT6yfhTB87AxMKSq2obo59ehzZt
	 xlVYbaoROlaBsLGcvmobkWTjfel5rbspdvOI/PfsTgYr4iySLdPV4M3qWaeoRKirhI
	 kaPLeB5nLB0uFn3kqcxOsFDqE7bxP1IcVY3MxUu4uIPVfqmgUOXV0V69OBbymWR70F
	 TVpA80W1baYrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0C1E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403755363.18243.9418143398402332120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4401a4e096e8099d013e8b6f32a3c4ab9112fefad0cf981cc40c5a1aa08ae5
Date: Thu, 12 Dec 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734037553
