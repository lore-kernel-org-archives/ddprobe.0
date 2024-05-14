Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0D15427E
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715698343; cv=none; b=PoV/AJ/byv6OERwMlQorvlVQCvc05s7opXOyXGINOZYiI/w2orUbfMS+2hkWXpSC1K5c7o87u0bo+TtyR/rJddzqcdy4LWHuQD2PI0LMQJfB9rB4orA3XRErM5HrVd/k5PXRAoIaxZtGRZZa1DMdkSoPmM8PJXVA1vA0CZyGq1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715698343; c=relaxed/simple;
	bh=BYFEE5eHUnUrlhQwFk8VugwYaW6ZZX1rlcPp/1q1ycc=;
	h=To:Subject:From:Message-Id:Date; b=MUFx4KZXOSE9W1Dyp1mD83D/R3S29Jxs7qVyjeXYEW+0E3re6K8bh+aHCepPM7GvulBkqZrcY63aRTjqzl/XT18KmGW48nuzIRWCRY4mu3423kbbfDwdFaQH3qtXa1HZmJsy8TUkLSen6aqEk5fZ3t5dvt30VexSb83ZYLsDOmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJs8rDRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJs8rDRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80D2C32782
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715698342;
	bh=BYFEE5eHUnUrlhQwFk8VugwYaW6ZZX1rlcPp/1q1ycc=;
	h=To:Subject:From:Date:From;
	b=BJs8rDRRiUFF7cS0TXsIpLJrtQK7vTTeOJEKLeNEZ7R5fo8AGl3vWbfjfCxJD8Aug
	 zdQGzUajLsEO0wASfrlIunBPFmMe87xh4gPjmg2jJoDPuZhcXYYCiX2pVajQgeINWR
	 Hieg2laBV/5X3IFoOhqxzYbOcVzmrYzhdF01KemHwgqrOw36b7cfgHHY7qNUma0MzZ
	 K1DZKKs0+9dNkPQjNBLZ5b/Rv24NaBkqJV6yiEIHjJ0O4Ae8xpq6yM7pJXH06wFuH4
	 OG6XXB8+8jwK0VHZDSZQXMRntG9CJFsqmBQPxxalqVXpMLX0RC54UWHGEGBYUpW5kD
	 nt/+f8col+9YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4008C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569834279.23141.16690629773708846627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8fb0aee6b65edc43756e7c6c0407b0418430001854383d1e60c03cc14a52e3
Date: Tue, 14 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715698342
