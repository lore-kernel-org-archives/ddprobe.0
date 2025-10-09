Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1024D23506A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760029194; cv=none; b=ftrW/WFNntrF22nupW5KRy0O3XND5YOk0x8yrLk6QUdoRwih0nHqkf9RmxhHDdamfUXVL0sfaoWniXdvE6YMcskZIfoESR8SxLnJXfqp02T4nTCCB69g3bfWyBJAWFXWuLdkEZkPZMslqJ/c1KcyGXOyZIOS/HVv3jJiNs0bfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760029194; c=relaxed/simple;
	bh=q0YaVX3Ntr7XlJqLasnxbehMHRfR0LIL53EUogDrPNU=;
	h=To:Subject:From:Message-Id:Date; b=D2+rN19K5JArhMv/pjoskEbT64IENbFJU0jcEp16NeHaCxe79lrQvfDQDPCZb/QLsOyzEtMSm6jPReyu2GMOamifbjWB2SQOLgByaSmcc5QRZbK8gnoso1xZJqKILAnx8jVDz6P3hRGFzyJxN3ptXncINwXEq5QoSbnlVbmmi/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1dcNAWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1dcNAWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760029193;
	bh=q0YaVX3Ntr7XlJqLasnxbehMHRfR0LIL53EUogDrPNU=;
	h=To:Subject:From:Date:From;
	b=u1dcNAWNZ7gEVIue2RXPH4crgTDb35R+obH/+wnTfBk5UcuMO1zD28J9I6Ym/bmMG
	 HWt7LV4BAC6RQ6lPXozBSpJ61E4sw5HW9g1nUf0jvZxJIfpfonWS5Uq5CvtmDrBSln
	 3bii9pO3yPxXa1tyhKZX/YAyqS2KKh3fM0B7YfSIeQeioDt34Im+PySKbrW2KbutME
	 +thmvLBbQVByaJoD5LMq3YCCCFqKGdsVH9hlcKkJgssqrnarBrImaJlmN5gtwhDOLv
	 7QwpdQdkPPoyx2+jQLlLH+NDowiRU9WKaWrkmPor/UGTnsO+/NmOe9zIMn+c2F0kZP
	 oWyGJmTt6p4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90436CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002919358.2136.6894991757615321116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337497a2fcaecacf427461a09334a346f1a7e6cc63e3f47e8ad6030a6c309070
Date: Thu, 09 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760029193
