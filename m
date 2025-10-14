Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D43A2DE1E5
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760446794; cv=none; b=gM77cfY5HGDt9wtJpxVVyDXHTA3YF07d9/fKt7m65S6Nzh4QTtOyQsQsz5fW/lEt4AtFyZgIboLeFCSdEXNkTyGZHzMSpSOerqC50jmHen1r1XKGdKsC8ykgQKnEBfqWG+7VvN5ZX8HEqYoLhTDoEyNI5Q54rfkRa/ALepFDBB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760446794; c=relaxed/simple;
	bh=NthrBU28m0f8ae5SpVRMj4NOfH/zYIFywwDYcJ8W+sc=;
	h=To:Subject:From:Message-Id:Date; b=cItkReK3WmMNRAGCZe4n4PSHUdiEhFJdpTwPAB3n4YSU7pKt/GSWJJMito39bIO3vLHLn4BDVPcz63XBz8pVZnS2iAEAoyuNp+dt/JIaYLWH6TCgFAVL4oYXxVwwJSiEY/tXgRUsufFYB3T0svqVBl/HFxbJ5+7P6tAqTWoAMfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNMfPxMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNMfPxMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760446793;
	bh=NthrBU28m0f8ae5SpVRMj4NOfH/zYIFywwDYcJ8W+sc=;
	h=To:Subject:From:Date:From;
	b=cNMfPxMixjn3OZSfSqxLx6+HiZkm9gDMd8M5Ht92yC/VtKlD9cA0wSb4TnS7azAuv
	 jBwjP+a2RCchEmLpxhPwEs0miLFBlB9Nub6jlWonyCVXz7totv6yFgdAihFWiDrU1U
	 8k0NwY6IeG5LMrdTyiwBdwYG3M/t2u80e+pq6c6gZ/KmoOaXkMIcB35kjUKFC5W721
	 +d9peggp3DVUV0LkBVSHQVAttPz26Un6lPYa95nagooZoet327dK/mS2VwMilUiE+g
	 Z/nyuESwOnvD9daUtRMUVrh495GUwiMQlfzMb9aEhghIGpxiXfHz+O+rKYDCyPEkNC
	 UZWbbEUhqe+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C53CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044679358.21013.5664716169927500418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d546f248ba5862c8ee3e8f667a3fc8aa36316d3ccf0f1620020aeeb868b9ea83
Date: Tue, 14 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760446793
