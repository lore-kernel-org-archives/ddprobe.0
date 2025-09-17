Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF9F285C98
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758088794; cv=none; b=ErqV6h8TalPUftkdyqwPIm1GrCWyUeufnJOJEzernrlEhX1UQACqUtXRossLra8upuObhd4Kqotf0fiqoGi6ic336VLOFU3X+H41RAemVFF+A5UXW80xOCSqF/6fyBNq5proIygt8CBiukRHqyYGV/IaqraK5magt2P4u/YKgLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758088794; c=relaxed/simple;
	bh=+sbf/amUe3lbeNGVqXR4b8wu6NYdoVQfOJURxvfe5rA=;
	h=To:Subject:From:Message-Id:Date; b=CzHTN2+AP152GDU3jzOun2LejRSgZLc6y4p9Ec3wq7qo4fW+oAAZLEfQ76pXYlUNO3fjn8PP8Ij9cJUHbrJA6RjXL2R94c7JDLNcRlhVi8hIx+NGNiELDdTStVxGrqdQT3T0ABsikHnkDYQ1ItYIwO+dUpx1B/YyLsHkk8s2UFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVMnHwgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVMnHwgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D7FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758088793;
	bh=+sbf/amUe3lbeNGVqXR4b8wu6NYdoVQfOJURxvfe5rA=;
	h=To:Subject:From:Date:From;
	b=YVMnHwgorPV6+KAXo3ls/J6W8Ko+NEgeMJCrrqJ1eyTOoHK7Y4fVQmz1eecdNY6Iy
	 tMqQzeUVc6OmHzzD6EsRmSpZlwaz6y1sBhFZyMeZDmNC9dkdnGO6k5TiX8I4KD1EqS
	 oEnSvPSYbMCYAXX4R7QMMsIJ6uIOAmEgb0e2K8/28a3GExmx9SiCGVX05V1vPMdSvl
	 PxNt84fgkjIqUrZeUv5M2RQFnXm5uWaPTMQrCSIbh17lb1DuEiOURwqqd+0OtHIx7j
	 LL/kFg3v8bktgpY/lcH8NPWQJIMNRVAjBwzZvZTSiq4PIkutMs+43wBsKF9llDiJAE
	 JgqMNhJvD3+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94227CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808879359.13367.17390482546416789836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324d160b26f72a6f6c906595e119dd502e93beb4d14d72f2dcacfecf8e320419
Date: Wed, 17 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758088793
