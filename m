Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85310457E46
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792049434; cv=none; b=RDYHT9j8md1ckd3VQKM+NVg0Dli9fMYULQuwv28EODVE+UFb8hLghE3duyvqFWoYoh4enx7cDaMaZvn55n5JDjaU1KarArpZNY02zYop6aa0BCXgbeBTgh6n1LlPbjPfNeA686izBNf2kdfGmvahVUCBnE1RZmXlCpO1zCWPNyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792049434; c=relaxed/simple;
	bh=jCh8/g4l4q07Lh4DcjL6RyGazeag1Qpwi5emB8Ip7GU=;
	h=To:Subject:From:Message-Id:Date; b=dzU7wQ/zMMPOrHnrE8o85/Q1g8OccPD8BFfzP5JFg0DMkMHDuPTNW5QNmoAdHtlvVXeMtmOJtNyqI3HVl2Cn6AY386b03fgEvgEPiR2rnc7Ddb7T+sQxUze/GVYbZomDzhXZrP6mo19JqZV+BSA1ci82kmQcw64mbqfIrpVqCnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ci5n32rC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ci5n32rC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5268C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792049433;
	bh=jCh8/g4l4q07Lh4DcjL6RyGazeag1Qpwi5emB8Ip7GU=;
	h=To:Subject:From:Date:From;
	b=ci5n32rCUbQBLLcXwVsBGsTXb1/2Hdtz8rG7X44v61pVw0jFk985IYJ2TtNzczQTp
	 q1vcprUCrgGsvnrXYygb8PowV0FA1mK8nFP2QSPUko0f8++cHOFV7rsMbSPUAkZpdp
	 o8GUdGKSiowlPih8nuQh7rKu63Sc1ZLtvaRGRUfXwLWBQX919W0UOzjAW6kVEac7tW
	 5FPHVbpkI4MHb53CJegpRpM4Zr/6JdEmhuo0RsvE8yWNPJQDwxuy1MJmgMmBPhW3pN
	 omarnW9QY1XTOm9UwXa0ZJQXbWDXk9xrCbMKmdVhDoz1qpVws92QhZ0fEn9lqorjHA
	 Rz7mjMo10zebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24C5CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204943369.6141.11042101543089091510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe79c6876da1ff4e91826d80eb3083055d78d62ac9ce6de085854f617887bfe
Date: Thu, 15 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792049433
