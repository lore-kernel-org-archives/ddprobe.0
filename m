Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119CF433B3
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762465194; cv=none; b=HJCeK0r4Bor8ZKfwDi6aQBNuT9XxLaX13GPCZz06LSZ91d6M48Xk6dX8oez3h/vGpbrLPb+R1YpIgh9S/8VKu02DwF2XXf3mVdSQrsj29Iv8Fc2fm/l0eGlETqUt2J0LSzpCVuvaqiS3SRe7bT+ohKCZl584jdaWM+bl5wvWnT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762465194; c=relaxed/simple;
	bh=Od7yRdM/waxRTHkAyLRdtX0bvIfCLWoEs7bO+E/N468=;
	h=To:Subject:From:Message-Id:Date; b=lgD6YSvv0h/9c73xAtyfl4eu7/GLhurPXH5fGe8tYzxcRI3gCYfwaSgziGUbyW4mF9SNcQ4uIQaf5zlql3E7+XHvlPLjTKcSoRXbI0L0LEd5vr92qqE7vRPUTvgEanf3cc3sRDEiEZS6zXws4WBKjWoeF1HjFPVfBv1apkjzDAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5EgEsPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5EgEsPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5477C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762465193;
	bh=Od7yRdM/waxRTHkAyLRdtX0bvIfCLWoEs7bO+E/N468=;
	h=To:Subject:From:Date:From;
	b=H5EgEsPwJE3OrzAM6ID6RoI31h+RAiHqXSSW6Czaj53Byattej3fOLyQG0JZgMvV6
	 pvU3hC1rbAh6VrD0ucFTdqzdpQ1uAPKvQN0wRU4wTl8JBTArcW8mPasxFNa8TYCduQ
	 dZ0/RVURv0hhgX5gTk+FVig3g8MqXXSI961ygAmY4Sir5TrtC7nm+S+UyIA+65yuj3
	 dzWmbGVdNwE7CbB7W2vbI1D/53RDpgANt/aTurXDawJKh/VnLKjXAuhAwbjFCjW95u
	 5R4CJGJI/z6HOxFAUJJzroy4EKtPi/03p3HKvwAbj2fqJu1sMQuIpwMDMQYTWPEdBV
	 kOEWNV0o1mcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C23CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246519360.29304.5197066177818428427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63172edea2a7c1264ebdd6f0f62023d05290e40dd92b5c68b9bc0ffc9a3effe2
Date: Thu, 06 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762465193
