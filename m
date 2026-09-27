Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091054704C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790505034; cv=none; b=sr+da8MbmTvML3fPWzwWghsIOG8VwOvtTdvnANJyyCYoG4oRz19nQQInumz51GW/KohqrKPHO5hbWzSzguH6eGoA362bwXzltTFSS0GKnPmANVfW7gN1L+aPP/uo7Pyxw7i12iLeFYaDonCkYsHdNq6reFT74c1HInBTZVDtFo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790505034; c=relaxed/simple;
	bh=dtTw3QHN1KjZn5yoSVsMrfl75nUuG8W+6gC9s8qBHJQ=;
	h=To:Subject:From:Message-Id:Date; b=jzlkUzZMB1IIk2scgpBK/umJZsgSVX0Q0WdkS3GD3SpcJmXZ6kRMSNeyOD2REYxvYAhDHyZpIySimBg/ipVHoPhvivli1UQAGHFXXNm3Aiz3OyyNjrv1otAKZmOQUM7tTNw2RB89x6ySmVUYV5NBgWmS+Sp45/vQnCbfOWmJxUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9P2JeUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9P2JeUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F48C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790505033;
	bh=dtTw3QHN1KjZn5yoSVsMrfl75nUuG8W+6gC9s8qBHJQ=;
	h=To:Subject:From:Date:From;
	b=g9P2JeUJijK2rHQy325LMqGWz9jlHNUMj4MgMUk55e4aFNaNurN39YbsH0CgS9IW6
	 jcsI/AnL3gUu7rM+JPoarQOGGQPzMLpqHAEQTuEPZsN0ep1+dgLSBrN1e/3lBVri3m
	 ytRuEEd7KHIMdj56RIhLa5pmcnW5gK6oNJv8qTIEUfn803fth5CGR4BPpW+jotpzlC
	 3fSFpRhrjGVrtgXLdL7yS6Q1UQMDtu9CHTPqbhuPQbTu316UFLizfYDt32NymvNjdU
	 KPzVq9X9q2BDUSTuFDntK8t/AMajcJHuP7EZ7F1UbncTKRzfR1kf0cydisPHc/bt6Y
	 R9Aqeka4F2Zgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CEC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050503369.4629.4093471140881514903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585030d5b0d41228cd4c3ccecaf57f270f59cee131d87f1f48507201e714d066
Date: Sun, 27 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790505033
