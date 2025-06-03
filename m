Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FA94A1E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748932794; cv=none; b=XMfRAd1iNEGpG7/A+eA/cnskPR9rbrVfdr9Owb7+ngImEPwigEiqU/yCjCRtntECdJOaamDf6zrCXe0+cUwVqvJaZznswEHHibRUcyLecJLv01qC+I39DJyot66zuLbw4KbafElkWZxoov/vgozuIrwRCMlCf+Jj21LxJ3+nxFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748932794; c=relaxed/simple;
	bh=dq7PFp+mV8OD4KOtxb8noDS3QtiSus5ivm5wRjx5clY=;
	h=To:Subject:From:Message-Id:Date; b=RN8w+SR87LXOX3aufajhZGRKpuUFz84Aa2I4sF0PWShkkXRo4f+WGf+jnUzx9wJeuq8fFTCiNQVS677+HzZtxJ8UVYq/ma38wNlqDTDtVx7rCp3cdB3dceo0wsWEkAJ+G+mmN2MdzdFNpxttYT+VqFQ4Esdhmjc+aE1Pfz6irBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlA82hze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlA82hze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748932793;
	bh=dq7PFp+mV8OD4KOtxb8noDS3QtiSus5ivm5wRjx5clY=;
	h=To:Subject:From:Date:From;
	b=BlA82hzehQRcgTvCNzpcbN5EModlC6PlbT/Vs1z47FMQP8QaRuFUbeVMDBqMYsSvl
	 7RExqAdqTDOMH9i0KE3t4sfW2mJXzVD0eIaJF+YnSa6J/XJIUCo86iT4NuPPlS4Bi3
	 qLfXARLL+7eI4sGMWxkTn1TyAbnop6gl3pn9y1m+11ttV+yOnoKTKt5L1dX1r8EnY/
	 /P8qDmEJBK20dRZRduYS98h4eaZ9y2UDhVYpjyZSK7UW5puBAy3IuV4YEMCy840AuH
	 xJrfNnbgpaDEObpBTvHD6b5pZIs/sl1kL3L9V3h7jXtrtq/xu+z5t5hVI42aiTg9kk
	 03EYDtA8yS6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E92C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893279359.5483.777118014306614411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c460800de421628c275d7540f95ddd4a82862854a6e95c4cc236b3f3e96a4db5
Date: Tue, 03 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748932793
