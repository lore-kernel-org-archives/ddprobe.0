Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A12F2D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748980194; cv=none; b=no2NsQ2LDMQgv5Iy9Au1SXyQUjR4BNYJoe1QnL3hkvoajxclHce+PtASS/ObfsIqDr+cGAlDkhJlmEJFP/I/dL/EoCyduPPMMdxb2lzG51uOiwNeQc2o1vtT9rgdFggZV4PgE2knLzlYNVYlupFmkgdkbhJggWDdAbnFy4/rh+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748980194; c=relaxed/simple;
	bh=kKui6HptEwKnZ6a3dwi88PrObI8dYzKVjEbU7FGVeXM=;
	h=To:Subject:From:Message-Id:Date; b=XylxMgz3Wek2hpo7fFLv86pCr2tLVqmPvWRGAQu31HmC7N/J/I6ez27eAZdM7oVN9Rncvxb/M2J01hN+5oh8lKloieOdEHSAxzZ29TbLEZX/iOeiaVKFrgATZI7/XC2JBvaJ8f9WSEeihZgiqcBiEYwrN3Icu6Cl0fSXENGk9V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmDaDv3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmDaDv3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748980193;
	bh=kKui6HptEwKnZ6a3dwi88PrObI8dYzKVjEbU7FGVeXM=;
	h=To:Subject:From:Date:From;
	b=jmDaDv3QVE1x/MYZBJ3VgeOlqZeHXxgv70JPBaHkwhu8H9rY2MYZVjH0VzVdJNyTL
	 KnIhwBaK2bp5ZqoJ5jRXqwlAcPteXeoBkax5DqgIR58sxxj/FLVRYlvC01sU4a4g4/
	 cXAyoS63aJRk+JxQ9I88T3E4UrKxmJEeS2H8AU096dvpI9G8ZzuqaaAQEv6GndFgtW
	 0iZJeb/CmJN4RyXF70WaQ0j7RvOgVqCv9C8ywQygGahKWJR37AKAXWSp6shkibA+nI
	 70MKOvp4nFZYdKfJ3/KECW4MRZ4JtEufBEAkEE4O3uZqh+4X++ICk7SZVizgb0vpSb
	 EFUNZOHZq73Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA2C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898019358.26718.10663522096423744064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cb8eef0d8b5e51a51a36ef1d37d0afd34630f5b1811bb97a8f935bab03504e
Date: Tue, 03 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748980193
