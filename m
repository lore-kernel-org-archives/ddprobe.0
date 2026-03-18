Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413A623EAB3
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773807294; cv=none; b=FznV0MjIGYf/MA5QHpgFdVy88eCtpECPzos44H89Ye6QUGiDD4lkEoJ/Hu2zSDlm4s0EcOzGwq1rMUMZ6QpUlViqp4F6SjNMcOr2R0tvicljJPLD0uMuHRIirXWUtYuFL9APMcjx2+sRF8nGl/UmySfKRfp6wsMIK3gEwPVVVjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773807294; c=relaxed/simple;
	bh=vCcy47Xbptk+SzBG1sAfeOKu4QBYGJb4Uk/w9K4DDfk=;
	h=To:Subject:From:Message-Id:Date; b=kMsvhyI/4tIAzI9vOjIdoHXzweDnKiNHL8IzApTJ4z4cyFdlttPLPqt/RkaomGTt7Vg2UQe8eMqAs2sjO1fe2pbMBn2zWXfH1/Jfpmm103/vAkzMZxO6ZuJnIFlUCprJ+zNAyHuWnfRbgz/iqifIYDtnC+IsTgVGyrC0PEtqFxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDgYevZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDgYevZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D4CC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773807293;
	bh=vCcy47Xbptk+SzBG1sAfeOKu4QBYGJb4Uk/w9K4DDfk=;
	h=To:Subject:From:Date:From;
	b=gDgYevZaI05Fumf8aR833QLuqM9m1gbB0xDz7Q6Svth/hiD60rKFCDxXZNfK8DxXY
	 qFzc9wcjhcz2eyKsEXaFgDlk0FiPYx9dUW0BspY9SPt3aztu1DVXCUwo+YZgnSQAoB
	 IP6gPX6GtYC0+Ls0XiZl8Ehc2+tEv2auzP4qLagrfoi1uWfVXZKxKdFx5slEnXF3Oe
	 z3A+CiLx0uSZFB1YQjjzNhzN+Q8lg5ZTt9oh/6IJwxRZMMJeqh9YGMEyAmUO1zk1ps
	 VfLJob2zTUkfPLfEeHZi1LfQYMh0VZIziHJpderh4qXWhU7JXWoUmW8RIe1jiaed5I
	 xdey3xrvbaRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E8CFCD0A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380729362.7230.17479371221375114244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74e0c131bfa8eaebdcfa7a13eea08211f4234bd65b1640d809262f6d87e8c81
Date: Wed, 18 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773807293
