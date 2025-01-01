Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B02513FEE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735718154; cv=none; b=TVAUUi3sEFUxJmxQi+AqhwVcnpXf63DMd4ha3eRXXY9DZ5K0DFST6tu/1++gBdKZ+K9Q45WstEAESkjf1AmbY/ian/+fM8xYMuIXv6G7lKIHiXBR17MQX0njTuTXzjebb/km/5M0ytxVXbZ0kwX8WNQilPy7qbpEEW1/P+h30U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735718154; c=relaxed/simple;
	bh=iYcobvSzNIflocmHbIfNufamZzsxvhatVWaj9BQ//wM=;
	h=To:Subject:From:Message-Id:Date; b=UTWjAtpeLIHsoSluJygEhVa9Qnb/XC6f1NXG+7Fz7dVLyDKjVY4hpCpEj45dGxcpzA+BFMHmTqYrRQZHQvZ2ciryUkfjI3X/EO/GDV+5PkrkN9H9ZO3Ao96dwF+IBpg83Aj/lMdGDSGxQFGXSOe+T6HKuxyjxd/J6PKUrrUTh1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkQOaQ0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkQOaQ0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCACC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735718153;
	bh=iYcobvSzNIflocmHbIfNufamZzsxvhatVWaj9BQ//wM=;
	h=To:Subject:From:Date:From;
	b=OkQOaQ0w41F8k4RZXctgQQ4BTLDIUT8ayFIiFnbn1TgSIN5PdLgxOoRUsQpegnkba
	 xnpAgL2iNdMfS8dfG9OZFLSk9Zg7z1rsB8PzT+rjc4Xa5aKCKdfOaKDjcKSj27AxQz
	 ZANwEkE/Jd+A/XvAs9jXMj+Gi0UUWV3WSumlwK0UEqfaHFvP+6N7/g3o4eRCPDqw2r
	 w+nZsNxHfRd9LS+tbUpRi965VroAwJJ67E/+hDu1RIc9WDs8SNThVtRARp7Nsy2aVy
	 Ssxdp/jrkWVc92RAjTHXgUiwMN6OMVzBrRT5b8VpAg4EmTV0Xe3PaG2NKgmdiRkAzT
	 cxDIIZNjKvyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3877E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571815362.31699.15404566305360053936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc18065b1ce07bd4f95e1b8ac298727f3bdd70a84bb29038260035a6bda1627b
Date: Wed, 01 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735718153
