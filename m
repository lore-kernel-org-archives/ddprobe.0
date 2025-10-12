Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3D32192F4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760301594; cv=none; b=E/IRZPL22yZpDB+gus3RDLf1O0oJop/or/tQPvx3wgEqzS1cQ3ZjV4FYhffjGY8hHOB1A2GC3H7Gvrcsm8amKvFbcU67ZCx+l6iv2o357LOTRyUvka1Cp1peporEsJJYcLTLUFgT4BmjtFhiWYl3gWPRnz4IrQK1yH9N3tyeg5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760301594; c=relaxed/simple;
	bh=L0p1cCPKkVN4OaG5PJ2G5HE1XMiKHL1OmYIQaijYAWo=;
	h=To:Subject:From:Message-Id:Date; b=SEK79mlW/laRR/mbVQaAIgtvSjeYPd3rC5+Q8qpjFH5az6h0EpNxDeQCwvHodzQmtINie3w9bNUMPiBxGiDB8X669/Sqe1X7jSAPsiS4wN4eKS4e7jlFaOtJpEQSAc6ZHwTAMUBf9ZivBRgiqcwh5M7Rd7X/gyScaXH/gWF4Dkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNW0JUge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNW0JUge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A343DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760301593;
	bh=L0p1cCPKkVN4OaG5PJ2G5HE1XMiKHL1OmYIQaijYAWo=;
	h=To:Subject:From:Date:From;
	b=JNW0JUge1diTPKqFT53eELv1h/Y2WZlPARajgjrlKGqUgTn/LrMKx6RmxPwrDKD6J
	 o1Xlb7OYLUL1CGLmpLrpU5t55rbbododN5Ty1GU77IGjNH2ISxK+L6cqFcYJU6lxAH
	 MXcnqR6+426xXvI/Cu3bzVcsyMM9CRo4QhP/DuU/kl1fUFJQAVunlBlxUwbA5dNU7G
	 k8CVkQrHGAfG09+uYb3ackhtWho/4e6Fd0qrTnrMK6FD2TSUaVnPD1mpm94fhBiLvD
	 g2JLKE3nbWFdvx8mLRPkhBCQgSDMiWVvUCu7NTie2BYvE0OukFbrq2WzsyNwWSrTL2
	 fqpowop/uIwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE32CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030159358.7170.3473777533326671394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0482bc8c26933c5b559407abd36b00cd7e51cd6791de07f09d5105fc04dd3bc8
Date: Sun, 12 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760301593
