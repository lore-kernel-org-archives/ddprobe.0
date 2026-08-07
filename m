Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4423378D70
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786114234; cv=none; b=Cv2PccSc6NL/ILElaP32uIQEtD9KUN9TX0bxvFbDGZ8jG/3mhQ261BRKIzqKhdgWWmP4U4Ke3iAQdr6yPtXhkS6mRxgtMaZLH8NjwinNBwYWkmfo/6oixtBaaunKboAhAWHasFOFBpuod8hBHVjvXkEEMSJfsFwOu3z7gwDZXxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786114234; c=relaxed/simple;
	bh=qjcFyldMxMOs90iy/KNeQYDA3jtH794RBwfvdO2t4eg=;
	h=To:Subject:From:Message-Id:Date; b=FqL/X/4REn60PwX3TdYexPxW8djk5N35Vt1hNzymPW0RhNFbtHsdqjzHZ0bH8yMjJTEpH8AFpDFGoGOqx0ZdbRg3NyPwEvkt+Kut18en1Is9o4u/mvlnCq++sUqFxfipAzmuwsfix8MIVnjTIUp8C1nTN37a07XKwb7bxOwfYuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LM3dnwyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LM3dnwyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EE8C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786114233;
	bh=qjcFyldMxMOs90iy/KNeQYDA3jtH794RBwfvdO2t4eg=;
	h=To:Subject:From:Date:From;
	b=LM3dnwyX/k+zjlhyewaV5GUmRb+02YyUHd0eXUj+JyLu3O6lu3ROPqf0ho1nSIv1d
	 oHgRtPPCLVgbHPzw7weCepeBALsLvjMB0vxwYYshYwb6UMhHHGYgCNuZ56fJCFIgGk
	 ZO2oWZNLnynRrmGoYbePbnl44FTmLUB59MrtEreX9e/CVpmE0l4y58CGhZEXcMRLix
	 FA1DYPOMwbivlvNNdX1UPqYGOdP0Hxb+vTXsxSr1+QcUKt3nTsiFuvKAHRd+p7a1ci
	 hsBUiMf/L8mSzd9mKDmQl0uiXBp01ZEgNx1/UiMBLY61suTJHowU8thGV1Ljyxsp7W
	 Ov2nnguxrrvJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E8C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611423369.1774.8362230186938214599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648ba05313c5450a67e94956e1956119202c4211f61659e5e5489c81d545925f
Date: Fri, 07 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786114233
