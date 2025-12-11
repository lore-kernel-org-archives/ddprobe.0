Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9273074B2
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765456974; cv=none; b=PhJlNU059sFIgz4erhob3TuvKHhzX/LxrYTKdcAJf+BsEzFZMVhsH4ewRUeOrCpUUcYZMsAKdQ/g/ElKwzVpByeywHrhBY/BnovjV4UrhzR2wHYrf/Ixnv3R0ED69i5T7k/m5iBiJLtEFCXZ6NuCPlyv7l7Ng6IB3C78HEcxdQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765456974; c=relaxed/simple;
	bh=YvT77ICLzEyj/4+ob2BjHDbsxUj2cjpEzghcdSX+lAM=;
	h=To:Subject:From:Message-Id:Date; b=UmjRTUiQ7cN1WuttrWWOYVi18i/Icv9scH+J6+TqSSgj35kkYq4fl2NFQuHW8cqw4ITK2gIvReiKLoI6/1qJp/ABw3Js0opAwWUDPEunjAD6NMQshVBvxfV8Cl0GlKjYexiNAtoASUq6HWbugSoX9vyKZacun8oapp0KHM4gKAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcFTxTuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcFTxTuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21ABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765456973;
	bh=YvT77ICLzEyj/4+ob2BjHDbsxUj2cjpEzghcdSX+lAM=;
	h=To:Subject:From:Date:From;
	b=GcFTxTuzx1CWMM66nKRTxclVG7RNS5VRagqVCuR+k/cgml/z8riV+a+gGWSKfMU0Y
	 m15vHvhYU+Bh2u93J4FW8QNxP0b2uCqypr7zOF9EXtum2wB/TgPMj7k5B8zxuT+hiU
	 lMQxTByER2a4osQKBOmCOOmxqml2xMhE2rP9SkZkXcm4EzXQHcvOSTzye3f+YFLKPu
	 EVNJdXDx0JArjbb7POvoMsJahDGR5byiYeSThhUDGlvfKPP+Mftna6yDoUmlaWpiuB
	 sRqYi4hgmql3FwUI7NxfEYV3yW7jIsXGu9Si7Bv3clYtKhadcOeSxASwzTNVbZyYuS
	 ppEPAABqzsExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E915D41C2F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545697363.3979.12145316147097649657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cbf1b888f766355a4d0414f8326d8be882814e51b68f1927f92315d7f3e45e
Date: Thu, 11 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765456973
