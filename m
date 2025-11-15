Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1A41DC1AB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763212794; cv=none; b=FAbPJqfPiHsUIlERgQwpNzpHleIS9vACO0qZm5EZnHzcZNtcafr9z8oLZqeDPk8QrNI3OQNmBy5i754+nFJPZ1XDN/jUA/EPjRhN3JOtZWw5TufkSKmz1BZZZBmL+UyAX21rvnZ2eTA7oikKIZMMUXNqv4SV2X+quaYhz+5I2vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763212794; c=relaxed/simple;
	bh=tOeXZxCc0B/bY1iagRG12oPIPMV1Dhro9MseFlJ/e/8=;
	h=To:Subject:From:Message-Id:Date; b=X7PzlE+yWuKdLaS1Pw1aB9etPJPIJF2gUqogIM9mzWEZXYFZmMR8DFqAcB9c/kwovld9tjhT0UAy8q2Kt8aaDpzGdSb8JZVmL/RNilKY072qbLAz9In2L9/NwViqK+s+BXXoe+cM/rcsxY3qJWSJS72MlwJNyys78FLE66Cuxkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxWxpCyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxWxpCyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97D1C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763212793;
	bh=tOeXZxCc0B/bY1iagRG12oPIPMV1Dhro9MseFlJ/e/8=;
	h=To:Subject:From:Date:From;
	b=AxWxpCyk5JOnPhVUUusliP+LDUJfn5PcSCj/mq3W7hAPsKVC/0O4ISuhBmYH46PcO
	 pzF2RcXigsNvczJX6x2iu7VctJxAj+drBxvhJkCCCStX3/MYcdjdNbQmW8Ldpy1iyp
	 ZM5BIii9yPNjpI7TSQ48OCLuDaMffCFtdy2If/nN7tPB2NWQelXOWAZNRXIep0vyQo
	 KmhxGbiD+STqjMf6XSQLMPArgvkNHeW9p2sdKndhblqj0CQLIMGiL513pzy9BNjkQl
	 kBzE62dNAFBVFqXcwmFuj1O9/j11bP5tPo0zd8WdlYlL0Yk8u3OqMyBeYukRwfV7fX
	 JEVpojpvhrnQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F6ACEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321279359.3170.15700956871465647176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04741576ce3bd203961519cce1b17b4988771c9a67379f61d4405eb0ff20e6ee
Date: Sat, 15 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763212793
