Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9921D0145
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727885754; cv=none; b=Ea4y7zaPLnfMXAJUuHs/Zi4VcCyuIvlGzlPHDf9kpHonaApLSQEdt3F7KfPUwht9z/ND61kYP59riirpxYjAf51bvvu7Cfs3Cwk0Dxp6HLI5uMGAaKklNg1eWfB0OVUgUJnIi6AL3NYLffASp95+3JHPHEgORHjiUgzpfRTygVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727885754; c=relaxed/simple;
	bh=Pf9jIsl0K4wPA5KTho3G31DrSKHQO/9h+SZ1EqsaBpY=;
	h=To:Subject:From:Message-Id:Date; b=TLdhD3ymIThhzi9HNjI/3V58Qx/+70EJEHwfFZrm7T/dmGbZ334ZPInu76QFxTI0txocGLEkCzm9G8+evo2U3IqVAA50c8Q1duMkzb9fap8//f6gVsA3XweRgdmLjJKvc2k9ezO19CPmLTASePqj6AxQMirgMTTljqm9E1GMkR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeEIqpiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeEIqpiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E53C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727885753;
	bh=Pf9jIsl0K4wPA5KTho3G31DrSKHQO/9h+SZ1EqsaBpY=;
	h=To:Subject:From:Date:From;
	b=oeEIqpiBjPcEwxkqQi9NInK/+zi2Z4Bd8joH6QkoIXpXs6YqgXaxQ6rAExzb8dcn3
	 uJj6IJZPMJufZ9lz1bp5wUBSFN80TMkuhPOhKNdVSndgGv9FAm97VQ4aguGQz/ZtTP
	 F1fk9h8OYP+IYMFHWPrLkHHmw2T4GqyvvEQJApdklPelzyqJViAQlVUZaQ8P8PYegA
	 IYyp2GhmS1PLCeQ5AlbUfYikf8kcs39W8ARgngmhT2g2EN9U+V3roWM+7EQEy5e5Wd
	 VQn9Xrkaps5p30rq01M/soW92+6esI2TKivDjr522uhH6cB3e0OJFTk6H2Wvv9jx1E
	 kYgHrgWmkV6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE9CF6D3C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788575358.4650.9006744064153230918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0d1747580a1a5443838cb8f3083ede70bd2aec2d5e0e194b54c991d394a399
Date: Wed, 02 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727885753
