Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA9286250
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719837323; cv=none; b=bHmQheY8bhFSWg9M6OqTRfQuy5blNQpG1tJv2F5cJ/SB47Zs3V7dFaMBXaLQ6IsAA0xWTT14DQln2klNoknfL0KXGKqSRRC0IAuV9d86OM1hRy5uTuvA5yTL6i5yVQdAatGUMGckUbrZU9Neeiz/Z1EcNqVbZJRyoxuhOyp0dOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719837323; c=relaxed/simple;
	bh=3SHTJogrf2f5P2Dzo++9icRJcGnNsGvEzCus4OaVNNM=;
	h=To:Subject:From:Message-Id:Date; b=s2mTgi0RwRrlzCRVtqJQAMyklX+xjKhkHm05TPpDbhAPd7NDA1D+x6d9KBlQZ82SimG0LRV4AWOdU8OhBFsLRPraVdHyuLGXIJqA+XPV0ZZJOj8rGuTn2cTtJK0yae57VqncFjyf4SRoDo9OEsu5G3j4i7F8TitaJRKVVro99Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2Dc20mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2Dc20mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8C1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719837322;
	bh=3SHTJogrf2f5P2Dzo++9icRJcGnNsGvEzCus4OaVNNM=;
	h=To:Subject:From:Date:From;
	b=U2Dc20mtVNTK8nBASYt8CLYRI2k4Y0xbTqGG4Of9fPTdfzQVjBVTI9Ngk94RiFT3Q
	 tiqkNRQFFvcHV9Ptw79Gql8iAcHUAlb0CifwfmjrJQNxHdqj1jxjNLAttQM9FEcH14
	 3/W0lUsUV8RZj/FgnifXo6UMRGEQIQJs8+eDhDrSiy4iJ7wRXfFJHUEsj+z+2jdEKM
	 ll9g6rbNWOTXUbjcfCGLRTm2M/wQCv8Lu1ZiWhTvCZCdReNUCqSefrBhvxHjZeN+sj
	 D+MTM0BlW/G/wp+ojcs67iyjhPyiBBvpnE58O2aVyhvhBPEW7SCnvnP4mGI2vT7eOm
	 Ae/lZcbOHdVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32B3C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983732278.12361.2538562694549009853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68d797d25df8e808a1df1b021a993ca67ec469e3582eccfa1477a0ada93e969
Date: Mon, 01 Jul 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719837322
