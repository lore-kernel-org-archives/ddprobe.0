Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FC713DDAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771038294; cv=none; b=jMbO3UVBLCLKv4bg/3Z084zJQqHrQHRLYKUlYrzpasaBH0+JRRA+10aDC+xOaqG5LOFATQ72PlrWFsbctxLRBTjCo1iX3iOwPO0SAVnjCxdiVnEsRwIAILQk+KOO73T92aVBDUoKEjKJWJHcyYFrra6+u16Vjd1Qy6t75OGdxFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771038294; c=relaxed/simple;
	bh=Xxh6BoSMlwgtdOrOn9bFvnvM4q6O+Q0Z+n+65XPXMTI=;
	h=To:Subject:From:Message-Id:Date; b=a55ieVPzNL8Hs8K8pVB4DMYH02vGD+rvE2jQ4Z8AWkNP822VLRIRb+pX4pZ7P7Nat+tZ7r7TZDpxNaH8Mk0XfU/mn8ry9rzmC2cOMy/65jTwPjwLMwa6BoanEJsbVTkg1kco0a+70VPV0J3w6Wi++dFZUUHTZC5ytJyrqQED2/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+OsIyub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+OsIyub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C585FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771038293;
	bh=Xxh6BoSMlwgtdOrOn9bFvnvM4q6O+Q0Z+n+65XPXMTI=;
	h=To:Subject:From:Date:From;
	b=N+OsIyub2MBZ/zmUVwWV1lRwxrF1ERJofLRUQc9weW25HvQFLRTmmkz/DL4ZtyBU5
	 gctg7shU4TOvhwhfXjd2o1aMyPlwD57IUlG3kooLbCgRdqv4KNQP8BaqzMUlkhWu9I
	 d44ephD95l5r7lrMQI0b7vL5f+xFz/+YahilliSdWOxgKua3OfdeK4HYCe+UP6Iy4U
	 zP5uXl3ncM59EQ0KaAz1/5ClzbtPi8cVwobx9OYVJNDH+bpN+dkytNzFf3fWs9LwC5
	 xAAShKUi4j5glwAB3aH5e1hqUIz5bmLnQZo/OCfW2Il3jhcD9yEcBpcn1U5w9rs7me
	 GaJl0qPtp7Tfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49C1EF99F5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103829363.4370.8323876482188299424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257c35e17d5478f12f95cda489ea9da4c8b1fe65f6c52dfdfa4760df94e0c9a2
Date: Sat, 14 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771038293
