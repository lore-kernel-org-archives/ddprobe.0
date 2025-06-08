Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24347C133
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749344394; cv=none; b=sh4sPMERaKC4uI8KbqwlHj6GnFJ4vxBjmIT+u6uYP4Wtb4Vr/iGg2r/5wU9b8fIfscz3XDMtUydxh8in0eyjp3k4YcLigG6cDI6XpO25zxcXnFZGBHLRIxmUI/ZMOiRhn02CEKoQ2u7MztmDdmOK8ceN9+dCy/XkqarC7C0ULEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749344394; c=relaxed/simple;
	bh=GZlu62KgGKF8blhgg9h2x4e+yjfDto1wsTsRi4cGgvA=;
	h=To:Subject:From:Message-Id:Date; b=mg/YKiEITHGT7W+YY0C/BeD4U21tEAKYZF98+pwbR9ZMQNUKF9SGGAqjtYGCJbD5OMXGvhCWXKg3T2NE6vWHqv/tobBR2C0vWP8d3fI9IsJ1PUsswviTdGWpLejhACSClTc85lwF791cgNzYHBmU5ROMivdBo+75Dmz0ZTGsZ8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm87I4zG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm87I4zG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A796DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749344393;
	bh=GZlu62KgGKF8blhgg9h2x4e+yjfDto1wsTsRi4cGgvA=;
	h=To:Subject:From:Date:From;
	b=Lm87I4zGRtCHHFly1mXwxXI1rA67X9+knfFdOH3GQPuAAFj+NaNWJ0AdACXH5rPJn
	 gzYS2SpYB6f6tvRPf0xaRttipVrVNFdfTQmGoJ6F1rlb9uc09eqJ/R2hjkZpZCOLwi
	 C9j3ppkPpPODZ2G0FYn4lizDy2xqTlepbwds1EVtXYs5+3MAT9ONG61rX1LtNTqDsb
	 +QzcI7cclgJZjG072nS8Yw8usDjsote1dfteut4uKASPsRgLnTHmgxEOhxzQJosHws
	 3E31xdBh85Xf3MW0NNktD5iyAgmqz4827beUKxjTC3WYgD4rcu/Ut0h2e10lby2Uah
	 mTrRqPjTKJ4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945CEC5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934439357.21648.6538689981969778205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7b9b540f2cb0bb3ca7aaa9043b8198f6ab5cc93a941252d822be393cc66b7d
Date: Sun, 08 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749344393
