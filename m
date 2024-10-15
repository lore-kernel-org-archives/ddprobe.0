Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237AA168483
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728959154; cv=none; b=YHzGGO7lQ5aB6PPgwUfNGE3pM5aa5ez2sVqTrP4NeqzeyAEsX6rTKcLQISqpZt8AQXmXtIol66d0AxHKc44MJOqT9Gg7t1G/R1KkxNc2pJEigPkJ8keoUj/bo/RHY8NympA16CwEpqeww+ZCxvv0J615Qz1eNP/c5xqkSEUCv+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728959154; c=relaxed/simple;
	bh=+IF4SyfjfX1mlfJwm+O+bWMSnOw1WyRdv1N1kHg8DWY=;
	h=To:Subject:From:Message-Id:Date; b=PLfQEC7b++OH83fC2hVsUdnpc3jBlDoGWBIfSZ88cta6+a/++l53EKSzuaTODaAr5N19zi4c/HPlr3PaozVRbdJkS5YiquPVwbqdL5Nu5I5XzU+qG0B3Rzi7VpIdPC0VlrNmqw1xgTBRyNgzNl/4FgRqSvWuF9vgdqjicEfvVPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSm52kLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSm52kLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFB7C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728959153;
	bh=+IF4SyfjfX1mlfJwm+O+bWMSnOw1WyRdv1N1kHg8DWY=;
	h=To:Subject:From:Date:From;
	b=NSm52kLHwT/lPVM+K6RRNw/LrrfhfY8KC8e/u4k31R2WisMc1PFP3lbkSxO66n/hv
	 hU0JLbw1coLTfHgD8Fi/5zb8nxbUn/UPN761htfHz7XlP+BHXXhWfMf7AcA1gUBLa6
	 QGuYn/N+8K+zuafpwppBjvv+1ZP/R3FzzTHAjQAZiadd2SS4dVhBa4c46//Inu8voa
	 kxbl1Hki0fR0Ww2g8GgknKJjxQ/VqFeW3co4rd4RZgkEnlNdSFiwF11hRRXUf63ymM
	 S8xBfBXqyRS8siz2ehRMl3F+ED87o0mJQW6DXkPvUS/CjR8y5JUVRg+eIZ7BJ/uL70
	 DpUQ68Mg8eGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D45CFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895915361.23081.17182026692677043386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d558a6d2978f39817f6ac74b94456102a24f324309c778beaf889a5858a4b223
Date: Tue, 15 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728959153
