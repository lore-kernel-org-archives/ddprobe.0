Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB5337BE7D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785018034; cv=none; b=uteZM4DNn4A3pSTo7ZppGWBcce4V7Xb/w3K8/y8Na8DFgbzmBUHV8re00YEQRiwUHyRS6RjC8wFYQxgXFpDhB/Rrq3mTfljXSyIXMj4aOV7ZnWyIBmDplNvDj9br3qoZvrp1fogdLFV0kng3Q9s2YhowB1LVqiVpPyZ5+EEJASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785018034; c=relaxed/simple;
	bh=Qp3Xh/HctZT098pgGYbJV+EEF6Tuv4AarVeBj4o/fLQ=;
	h=To:Subject:From:Message-Id:Date; b=ZhjWt2B8uGmJaJFaMkgXrM3j6yxW+eoNuTdCGJkGUE+WTL0jrJZgP6l6+fOpGn1aOd2CbDGsG0UfhCu2/U981TctDZ6wsiWCoi3tH8DmbRpaLUpGCxal87d2A1ec5lpU/143t+rQ7g4PkMEmyQAUNQYobvk8QUqURW6rReXkVLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3sa0mAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3sa0mAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0109C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785018033;
	bh=Qp3Xh/HctZT098pgGYbJV+EEF6Tuv4AarVeBj4o/fLQ=;
	h=To:Subject:From:Date:From;
	b=S3sa0mAAh5fJnxxnmCg+Fekj5t67j+J+WWDn3+ngkJ6tlgrQkFHj6EG3QjL74Ol7X
	 VF0D6XUlt2MJadAcoB+F3VM9aRbB6n4wOJA52IKgNnA+kZhLGnRUtVXxa8crC+PEio
	 /GP+6GxJF1PevIoHKnU5l8wHWS2VhFntjpDvI75GiMdXMDxsRe8XHyxUdMnkzaX+pL
	 yFWLhlorIHdWHDovfE8PYUdI7LSuetM+HprSYk3IJ/CToj2LDFY7QW6rAD+7s+B+oc
	 ymO3SGaEzGUL9ULlK7vlqVv7DjAvryub6yawkzlQ7HqpA5700vaagfUqHW8mZH/9c+
	 eJs8iuaOQZgAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB022C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501803368.7784.6584082117265388212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbeeb430f5e24a0b5d96b7e0613380ab48259ea45b67f6d783ee9eddf1e78fe3
Date: Sat, 25 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785018033
