Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3396B1F1313
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752133794; cv=none; b=aJevNkZ4W5vXIfhXqjNqcmXfO51/zSR0OJDb6Ew4vS2u/qxMFcCLnbR7BxnC3H8kMw8U356NPFPcRUGvyMVvOAvYVzUQNi/uwfwdfKEvli7In2ZH0pcWv0kVSp65+qMO7Ljl69/G9QNAjNZlFjZb5qd6c092FHeA9xfWqwAdWMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752133794; c=relaxed/simple;
	bh=Q9SMlfMMX/Vg5FWTKohV3HOClHs01LMC0lod4f8DVHE=;
	h=To:Subject:From:Message-Id:Date; b=k842Em3eMjwPGD7qjVBwFQmnzknuY5ttoIn3oNT80oti9pb+b4hUtoDzECudPHcKjI85J1fr08oBp3zPC5qfIvYp2rJfNC/0FOc+jwJH+gOq8B2MZKrG+Syd28cGAMjJa5H/7PiPiX4xdOZByJMWOUxCsY9uHFISDUGVgt31wg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTqVJ7fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTqVJ7fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BCC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752133793;
	bh=Q9SMlfMMX/Vg5FWTKohV3HOClHs01LMC0lod4f8DVHE=;
	h=To:Subject:From:Date:From;
	b=KTqVJ7fjxd0JTQJH+Z/YTWQxE+m5FUtOWt5xgmrqxwWemUrWC/+pOhNBLfnCFHSNi
	 dOmBCg/tDNY0J2wiKKGxAFDX1DVnFHa4fuiL9IPvsZdHsBBEwIZ4QxgPUUTQfEqQy4
	 eg2K5n/GsudcWeeVnVo9bThgptm9mtBVQeayUdGX/kOwPOOlw4OGdAZ1YOeGbvat3j
	 Sfjqz+L551mfu1kZiXBIGZKxb8tLFef6xv8TXz7jf/LHVeJw055v1qQFAESqM/XzIU
	 rErolF4O6KQoNctunMSfa+FQ1BKEXvb/grQoNtGDnEfS2lFwqmNc3UhCayvrS1geGN
	 6qoH/sCWLR9lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052BC83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213379358.3130.4189879940775223883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0517c02d89f8b584a6b31dd0f5794d638bf396861abe2f61e460f8e58dd7eab4
Date: Thu, 10 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752133793
