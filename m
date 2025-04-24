Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61AF21D584
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745483993; cv=none; b=M8ENHCd9AtTjuX/B9gYkC2qm5oIGrTH78fCsBgw9GkoazppK1s48mNGA4Z4F1zU0e3niVsUSOXBiDx71XlJ59VRjmAtSXKBPQGj0UW1XO+hJ7ju32BxpzkYuFoTWX1Cmjtw4zTWXXopin3Ui6ZbOE2tk5NpEPxcqxAW+jrWVY7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745483993; c=relaxed/simple;
	bh=bJIFiNuBgDmTbepPlDpi9TeSO3aqxRzFfOtXmfIwk8E=;
	h=To:Subject:From:Message-Id:Date; b=YiYqIdXQz1QchtPoMKDeXKlSi4s8YYldyjRDEG0aP6gVoR4pouZOiC03w2KMFXwuyy/QpiQD5GUk2A6pB08lxQRC/mQco4KDW6KkF9a+yc50QElCFvmaMUlgAXVX/Q40Sk+KvhMIvenaQ5fnIHFlYzmeoNpJevX4gTWkeDOTJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeKNh3hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeKNh3hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD69CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745483993;
	bh=bJIFiNuBgDmTbepPlDpi9TeSO3aqxRzFfOtXmfIwk8E=;
	h=To:Subject:From:Date:From;
	b=JeKNh3hh71LtD8+u9fCtkfLzDcneb0FYmRdw+zZ2sVHxP2cNZNUqe0nGo8BVo8JsL
	 vgXIj0detZ8xrfmB5yLWBTQrmB+BBZnEwzMqKH8yFZiHhqBgPLNg4ywx43JdskEcsr
	 VlyWXYJKlRy45YVS15cAURBC2XwOjRtrkuEkhqXOXPMsQzRv7vRa0e6Y2fg44FeATB
	 8LZxKCnQiWbcSrTq1P7R+VrPPtvJf17QOUV0iZSQoWBL0bD6DcUybc3CEYY12tPIRk
	 3XAvT8fHbvUt523oRi+a0gUiy6ejFhaxokh9ilIyWixjtk2gMRKESBdWJIHYjNcPoq
	 uayxPmJLTnNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992AEC369D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548399361.3428.1269217558352722531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986a278754a6197a23c7be703ed84754962f959d97d1a5ce5565c3543f9f5e98
Date: Thu, 24 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745483993
