Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EB85474F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777766254; cv=none; b=omCh+omOQAvNEC9oXbZaFYBwgsYBm8uMLMlec6zYgFUU3/47FhOT3WBNRnM7P4YIN9CSSS45VtTcA2ms+GoWU4mITnGNaCJrt00heu89STpTasOtZ3GPH9LaiXjbP4XSjHaQWqPXjbV7Xb3SU8MTEaM9DE3mxEDpeFfZRGxR+rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777766254; c=relaxed/simple;
	bh=3bXdhv6ar3Ca+PX9xVZX+Gp8Ggw3F3Ax0IVuooaubPw=;
	h=To:Subject:From:Message-Id:Date; b=QFbLMioNJM+/OBcPO0RHlIWvSms/AVpjhvU+Dh1GKNx60m8oOUPjnSSV0AUHQcFGUjXygTJoJLuqfrMw0wzeweX1tAZTXprcHOGhXrTTsgX/gEl5NEODdIfH5G26c0RIaFoyNBtqDcCSzZzguAdF5qVnizeDcanfIbILwozLVs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZORxS+NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZORxS+NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2362C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777766253;
	bh=3bXdhv6ar3Ca+PX9xVZX+Gp8Ggw3F3Ax0IVuooaubPw=;
	h=To:Subject:From:Date:From;
	b=ZORxS+NIqV/yPEBNnfDADCOA0ipUYIBSTh9nx1Vs6fzbB/qM6cI574edo5YQDPs8K
	 ZcfZLXSm/EfchsGe/KoFVQsqZQ2eGD0cAwfIPNulaS29j6ekPOsr5qH7fTexAuAyAU
	 ISqxkMhiw6E7leOBjMZ2a0FzlRuRsr7SzicNOyYpL+g7dSwI/hnMJFM3V31kQ/Uiaw
	 HEh0s38pVXiTksX7gdAmkKFSNbZI+v4U8mLpP+eSk7Q/8+q5LDSqQ76LDcM4bVymvg
	 M/qvt2NIyk2bO5sK9bOOyffI4pllOoO5g4YR4r4J3v42w/SziWdpu1TrsXhAnCXoHS
	 5e+yhqo60uGDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C8CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776625368.24829.4434947058329350542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c191f889a342e90ce73ddf3d750b8c0cfe8f7d2acec06afabb60edd7dc3e06c
Date: Sat, 02 May 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777766253
