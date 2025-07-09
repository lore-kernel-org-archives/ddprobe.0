Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7F11DDA15
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752062393; cv=none; b=ZBg5hXAcYj2WefQlxxSAJzR7TleJH+5ZAAJGpBOGQg0helqezfn+aiA9moFO1pAV1DnqImmHZEucZcCzsLfOciScPMfv4g9jHGDJqWHN/XG89sXCBU48frYGkIG+04M3RwoiPu3xi3+3W1Tqfup4BXUrBFG/VbDZT3MmF8CygLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752062393; c=relaxed/simple;
	bh=K3YP8czI6NtfXBgS044imy70+gLPwbLC2slaMn+lQPg=;
	h=To:Subject:From:Message-Id:Date; b=juP+4C837dfPyNZXy727xN1bOVWnIXfCJQRXnqfNvVIcJXYYZnahShIc0py8lpfLeEACxe8zoD5O0RRL+M2YL3m0jM5f7UETOO2q9JDEn+dNldJDKvwdMzu9rdHs4JhT22yJPmAksuqKQQ7AoWftwH/owEe7nJPHuXZp2Ejhh2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJZ6+u2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJZ6+u2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC61C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752062393;
	bh=K3YP8czI6NtfXBgS044imy70+gLPwbLC2slaMn+lQPg=;
	h=To:Subject:From:Date:From;
	b=UJZ6+u2mBSc4YNFtAV+N636qiLMg/8Q8f6QEceZ7AK8QXJe1jI1FSnRJaBsAirXyj
	 qMf6/AAe74T0Pyoo2lVaaCBvykgzuM0I4hfqP/vXQNtQF8T8P4BRc8eF7zFwinmNwF
	 CgpGhxe18Mfk+Xg3PlSwOAsoUwe1ZSP9dJmiR8A0zd6zBKG0aJM976P85qgS0Yjqpa
	 75DvT+ex8UAZthx4b7+Wjq9nQL/cDhCdCd5ZGNHEjkiGDqwbTUT9IlwRrVPvimVf9I
	 TSL6hQswJyvYzu2h9eHk3ExFZ0R41Kv/P1CCDBFUY1Y7NoiTlEYj4A2KYk/MYOVRJs
	 jvan8rkGQjFgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEC1C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206239357.24193.6648738750620312971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d8cf3f60d78d8e1e919e673952e5dd174a02f5ccb5a331bef85a5c655462b6
Date: Wed, 09 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752062393
