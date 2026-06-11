Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4BD4028E5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781183194; cv=none; b=cXA/6vYwAy4+3bY0sRVMe6pUPig/EAqtb1hDL5MuA516WREGXz/DFjWGTpNzO8hztickaKTV/e/A7XPZzdBYk6WNRrXCvxyVO1NH7c+A6KigrxG1I3bfwLz5fxwvPm0cSwTQOpKHaaJOdMtaOopTzr7N7R0fhC5ukKNTrAqXPMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781183194; c=relaxed/simple;
	bh=iiYjI0rOTHlHW2AqVWJGt6LsSbDB5muqt1o38cvTCdA=;
	h=To:Subject:From:Message-Id:Date; b=NSjN2TjMxrLkU43PfVY0K8I/MHQ/kvcxPT6zGwHI+/NgvqfP9ZLrQg7yKlCcvrA5t4O6YwBFT+keOZEhy7YMVupTjz4uC+BGKx1ZqOoY2ar4grG02gTt2vvY+nawMHWUjnKHQY4zvvedOUe3VRro6fKvbAoZuOtpgR49GkhyMk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMpWzjOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMpWzjOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F6AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781183193;
	bh=iiYjI0rOTHlHW2AqVWJGt6LsSbDB5muqt1o38cvTCdA=;
	h=To:Subject:From:Date:From;
	b=sMpWzjOaKpb3M839Sr7JVosaE6vB50krJHbPg0xTGnW2SMbbiRwu91+6OqgT7MDEe
	 lb6H+yKJEFaQvlFNvmPTrew9XUjVwS4hejNLTXaQvyonQbpLKcWDreyaryi0ZccOCi
	 YWHGXJiO75eJvZUz/EK0JxpGQ8FJ4XsRdTrvgLJ9RSmPKodj5ZMednMJ6NJGRKfah7
	 qwzodUa3fNQmCjdvkex4NoyRkMl79HStVZkwiRS31a6izsy5DxK5nApr+u49ujvnRp
	 RdRCSZJaaMzCo2l3CdpiUzcn3Mz8LVXnxCRzh80JLzsDx7TI0JG2AofVfDrpn+xbjJ
	 ENzrqzmjvK4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE1DCD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118319369.10981.6361065890373314788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9458adebf8bae9559a648b0e7e05303b3116e948ee44abf099c11fd76bd77625
Date: Thu, 11 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781183193
