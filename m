Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136C5356A08
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768288434; cv=none; b=CSoaLPxuAd74LEnYh4tgzN9OzI0PdQG20KhB1JvRbaaNAzJLjJeKkEjuyNI5vtbL94jAuJkGQShaMkDKaX39Rp5bSg6CcET3Ac3OWRmyeANYH3O61txY+6E2QVtEI2YI1Q5z9wBGDHRAS1yUTz8lrsvtzpp/KmxszqKRyFViwXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768288434; c=relaxed/simple;
	bh=+qBiV6lZlkaGMd7nRzbP6Fy8Z4wtGEpFwhWbEUOTECw=;
	h=To:Subject:From:Message-Id:Date; b=jrwmUgp4mU5xrQGGuK2hXsYNGLrTu2e2jy/6il6mOkJHaZ+lHiPr8rDDGwCKX6IpYY6gRWi3rA9RMehAhMqonu+szQnG7pquvEGkBWebrlhVxcnh3WujM+LSIEoH4ETr4FegxD9g447GVwtsYT5JYtIz6uujkG7pI61UknLiTgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4ZMNQAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4ZMNQAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC854C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768288433;
	bh=+qBiV6lZlkaGMd7nRzbP6Fy8Z4wtGEpFwhWbEUOTECw=;
	h=To:Subject:From:Date:From;
	b=l4ZMNQAfCoVLU25gVOJWpU3yZFNZ/80DoeeIXV1Xj7OzGWIHmu5rdmDWhsvBOykuN
	 6gVXN8il8L39g5k+cD1eyvyfx1QW1KLl93DbXjXsX0W0iHQIDTefkSnnK/m1lcDVvN
	 ls5ewvmDEn8A1M6Axz01G9V3GxJYHmecfKkZzOHHLm3uCRYhBb6qqlJ6gtmowLpBJn
	 01rMCdHWVYYpxsB8AxSKHzS5VWvBw7biH55kZzynJR++xhV5r/m32M2ifo2Avv9Pc+
	 rq+CTgSWYDOB36lZmWQ0lOuzuyGuTPUd63OMxzuaJUY5SnYY3N2AZEn3eymaAUx8h+
	 ikBjp3lcyw9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E291D29DE4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828843363.5279.6051303984245030702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c0e13729449dbd3b08a57cadc2cdbaaa7a2bccc41412531a402f2dc64d9f7a
Date: Tue, 13 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768288433
