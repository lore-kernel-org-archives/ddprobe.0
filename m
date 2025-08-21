Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5938E24469B
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755764994; cv=none; b=moENst6wWw5q+ZR89YmJf2vinZrzihbpVIBRnJ8SDPpwpe7oENDFGuS9PU4dsvmqUurmTpBvp8pfOKQwNz36o1F7IBV52RN0tH2Rhp5vY4lfGwuM9T5N9g8SxXGvvoP4XCxspPGyNdiHiuOtNHVsBQgH3PqzvRU7/87/e6qv1uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755764994; c=relaxed/simple;
	bh=wkbCUgN88tUC8czg9V3FfK6HCPqf6L3QpYZCEE1rpXY=;
	h=To:Subject:From:Message-Id:Date; b=dsDPBH3aBcnniVqV5vQdBuO59D24drQ+K3AoqSzRYTMwz4H1n1WjglyqbPIBZNnSbWJ4OU+JtxareIJ2gPb4w7mjStl2AMnPmGOm0vgs/K3ML6Hq7hpoYoNYuQM7RJGh0hjrcT9fc6ovHVmltbnRKOniw2BwSuMnaun3zxlZas0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIAtB27e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIAtB27e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96DCC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755764993;
	bh=wkbCUgN88tUC8czg9V3FfK6HCPqf6L3QpYZCEE1rpXY=;
	h=To:Subject:From:Date:From;
	b=cIAtB27e4bt0jKmhLKeexST5SkaBNH6R3pjRJcKRvhuhhPxRr19DM8SsbxQLUV78j
	 yJ2JSIYq/ipTtO+vr8yZJXDT7hrtx2qJwiIjuqyisOc4EWc7eT8RlGMhhohShnSFte
	 GIOMA/Vvriu0V8byIXVpDPWrTerwZD08Mmcgc9y4CM8s3IaMCiZ6FkUmy5GLiqSMWm
	 UO9UY51o1qNz773DQrSn1FdresVtltJ7KnJ7ziyDCpBXF1xxkX/Wm+VtqTx2wSHt/c
	 +1pa+ABhqH5isXlDLNK2PXcOD0xLulA1DPydp6zF5sdEYyDwhQ1ELbKGi3WjFeelI+
	 x+ADQz6pM20Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9882FCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576499360.20303.3285603065564219264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cb00cc356a0900194bcb82d5d7c6dad061b813ae1644f33113b27c79bf647c
Date: Thu, 21 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755764993
