Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1442025A640
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787357434; cv=none; b=VcY2Z613KV3YkDPj+tX4dWXOVWzkv4vb0yrH5KZL+80pDUvCc4eITsah0ptbYKt8C2GZWFLqcXvGcR/rgGbcYS7Gybm8SAdsID7Nw7QpCZteb75D7dX10UE4KwgBQCQTH35YW+CKCiRTjlZhV1e5Cmx/4SA39r3lHuUW34tb+mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787357434; c=relaxed/simple;
	bh=aDW6DeB1R/1sF6k9EsnVhYHCq52GQnFslnCmcdPsBMU=;
	h=To:Subject:From:Message-Id:Date; b=ad6i0UhONCmOf6UvWeEI1h7yZ7oHs+JsYVS6xxgNHmungAW6xhG6QhWH9ftcDDiOVaF4fo07CzT8Hkdttt6FKSX4qCK8fkQw7XZ25yizdFNAZdBhmNleQEjTfAuEQc1Dye59TfaPwym+mvYY+bZYYpPxsSXdr6dz5COCyu5Jy6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmLAsL5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmLAsL5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47EDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787357433;
	bh=aDW6DeB1R/1sF6k9EsnVhYHCq52GQnFslnCmcdPsBMU=;
	h=To:Subject:From:Date:From;
	b=XmLAsL5txU3QW61M65a6bbBYepcH3uN3bbOM4VdFqYAjCrbE8RsSkKZP37TX8450v
	 YMOftcI1GVFRxeOtg5fPiyU4edSCucR0QR5WQECRkMxsS4SZbBgCrVpN84GXxhqc+K
	 JVyuPescS7DVX0X0jRnm/bdDxuuUT6ztzbu7w7m/eQ0DM5nGkCXDUZN9SHo6Cps+6x
	 KimenELk1PnespxVs+LN69wNdcvS8c2QZOGrNA92EGpfm9aDgIz9+/8RtS6csvmSoL
	 9vPdR3f5l+zN7ZOBvueVMX8ajsnFMfgmJpAjhFAOZyL9kyaFqu2YiJgg4AaItw0Gjn
	 64OaZ/Aqtjzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB09C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735743369.31835.4234724966742257217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d8e0180e6a17e9140f07c3d7902798d5d2d988d633bc9b572ea801d15cacd1
Date: Sat, 22 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787357433
