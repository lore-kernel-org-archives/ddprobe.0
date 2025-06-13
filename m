Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D5C1A254C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749840594; cv=none; b=NxAf+qHBsVQg+G2oI0f2vS7Zzjzqqx/Lf6gUBhniiFcuJ1mbeOHXWAPxUmZaJ2Z4gE4S2xjtWQZmakqtEbcgizAqoEKvBOgRkrB17znfTMhVHXOjhgu/oId4N+G30YyQFMFLvZt4Sc7C+bW8PwQ9kXiBFIOCi2twRhDxicum0tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749840594; c=relaxed/simple;
	bh=EKmJ7hibu6trz4o9uSIHus1NPB14Mb5tHMXlwCQeC54=;
	h=To:Subject:From:Message-Id:Date; b=YAwpHh3D/T1TkTOQMZ1sfJn2vJfw1eK2ynK4ax5fGQzJRqyxITA6qnysRHVAgg/XRxrvRDYfTk99I2LDnqClYnGeVtf9KINtRY+kBn5CcM2qA8wahVGBhzf8uHaMFReiBltUpLg7BLKknqXLnMu6esmL7eWz2/59/E3ciH+FLQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgQdZW3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgQdZW3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F100C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749840593;
	bh=EKmJ7hibu6trz4o9uSIHus1NPB14Mb5tHMXlwCQeC54=;
	h=To:Subject:From:Date:From;
	b=UgQdZW3bzjG3Wsj4bfIN+XoleMKLVjcii1lXMWjikStsG8Auz3GIKpNLcOLag8EcG
	 tqWLDVQZbcAGVhlm/5JC+kodz2RMHq32eO1F2njm8EKDGLvO/KVcSwgLgs5udyilCf
	 +R2xIzyH5OrEeROSO3ctDgSey9J9bygyt1yqMqfSGTvu4urJIihjcKewcjA39+hKPA
	 uPoBGfySQiJ9/x9u492Gcp5LG/p/S1l5+QoeGW3Le76wl9MUCOxWbcJ0KdcmiFCmyX
	 GMb7ugvtaYVsA3BMvUJdjE/nVctI+pc0f4kw9et4+EP2fZXcgm0/G0Z/+JOrLUX9tk
	 DXug8omx+O3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90479C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984059358.8288.6864592202813040668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e126ef6c23f668d216f161fac2ac4c269905ef93daf2783ee7f7eb11552001f4
Date: Fri, 13 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749840593
