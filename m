Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C863AD503
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780606474; cv=none; b=khxqP3eOUINVkgqvpBx/2orUHaizvnXV0j6fe8yiOgHSQcKvz1i2MTWw8aVLRHRZsa8sZRBEYpRX82P4juHBV+qsbiZUPyJjazg8HWxZzRjpI5hWeNRk/6T4TBFcXRQE0isPj9SnJhsLa32AX90Igj5MNlbR60JraH/8QrTneQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780606474; c=relaxed/simple;
	bh=EcSBFI3CP8UTL/g1xuOw/Ie64o6G49tcdFZxbla2LyY=;
	h=To:Subject:From:Message-Id:Date; b=SH5ssL22T1EkPMahwVX8PoAJGvMHvkkffa6tadSs/G7vU8eHMonJ3vZtET9vND1Mf8b0Anv+SGX3i+Q8+hz56PnoG53T2DjiFFFo3VG4iQ4uzLNKdpmYHOWevTLEf70/cvf31jiZbSPlQLW3ETgQNeD/PEyAQIjTRrmx/Men9o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1B5P2HM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1B5P2HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2797C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780606473;
	bh=EcSBFI3CP8UTL/g1xuOw/Ie64o6G49tcdFZxbla2LyY=;
	h=To:Subject:From:Date:From;
	b=g1B5P2HMXx56cwkaxXUIeu9eZU+cZTyACtCoEKk+RCq3yenKrIhjvUSBwaS5XcdhF
	 ayCoInKupF67wHu2GG4DcPGwfXcKhMaapHMAG8OEO337T4NaUHpNOgrtAzZYalKv48
	 OST5K/HJCLMqT25KMlSTgR+a6BW7HedUHADVHQd7/rA47kqwoarYdXQ1ISYnHc391a
	 HNII8PDrVqc5NUy6GAabY/u39dxru84Ce0WxN9J8aOKgWvmcVNPx+dZEiGugZcbvNw
	 mW6bMajbn6zLN54C78dp3VSyUZ/z52RTbCoUDw8rlg/5vVLnHsO/ouUrmqn3tF1iWa
	 gajBScptAYHWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA385CD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060647368.4421.11429260522634041475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edbbde5dbb7caa293dd211a1036108fb8eff90714e7a0fdbadb21ab9b1c1920
Date: Thu, 04 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780606473
