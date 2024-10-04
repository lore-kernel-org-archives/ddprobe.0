Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430871C82E6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728060954; cv=none; b=rj4evW+HujIy96nwDefC+UJmt8e2T0rnl7sf8KFaY2mWVZKsqFzpuWqO1uzDPC0mkjRaaq44Sn90d/Frl36Xm4mcnY3Q5A4c6Uu6ucOhkcUKj637Va+WQzFfSbIz/1d8zZDPyxjFU3YNySwxiAftWpu8Z5vVMqYoHxXqYoe+lW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728060954; c=relaxed/simple;
	bh=0U8dVBxJIdDeyraHCm/3GcE8Wk5PtLg/gchj32Yv0DI=;
	h=To:Subject:From:Message-Id:Date; b=uDKg8RUvkxwdM8FUJlpQ2wznaFGBQ+gdpXKVpAU44M0TtnAC+2VE6cdJueRN4fQkoT7fX0YAkiS935kdAfMT8A96CvxSLVUKLwP9hSYd6C1gy5Re/SYSGkDTvMgevW1lAx3DAoVpFavhepCKgfd/23S7tQvXHXt5tELsaFufeoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTNfoTYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTNfoTYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD99C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728060953;
	bh=0U8dVBxJIdDeyraHCm/3GcE8Wk5PtLg/gchj32Yv0DI=;
	h=To:Subject:From:Date:From;
	b=RTNfoTYkY9olrHDe7X1roMBM2IMyJDx9Jvkr/NWZI9Wz2Kv9uDC/rbwYqWVraqo8a
	 f4cj4xWyksJlZJmb8Jucg84Gzb7HC07KnjGSgDlX4yO/Hzg+wb5l4wA53mULfeSmiw
	 tYRkhwbDMhH6igSbzZbKm9Hjd0kY0HXofCUz3iK7/VeVcNdleuoc6FXT99M+Snhd65
	 +sIbPwyZ2Zp4QTMDYHzUlUAHMDbKXyTZEnCHsU/CWWdAngw6OB14Huj/Pj6Zdtrrjf
	 k+Dg+vs6LLI9k7VMqDezdZPa4yapuPBQWaB5tuA9agNBgth01tZH9JGHvKz6FpqfWi
	 QDQf9tDSbvdwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF82CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806095362.10360.13954984170630596819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589806d2d8fdc0a81fbea9a7175eec56f0b99dcd345319855dcb890ed06ae189
Date: Fri, 04 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728060953
