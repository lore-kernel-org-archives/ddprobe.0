Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595119884B
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734517554; cv=none; b=fjx7N+GooY1gvyjh3CqKKw3rcBaEoxcGqKr1YlEKhYgkfvZNnUGLeRMpma4rk1ixLSV4J2EatmXgubb2uQCe+kMEurZjw0L7Fq2DMKVXwjmMsSY4cenfZrV3YIm4hBF3wFFGSmz6lofkzZaBayKjFB70ME9HfhxVomA4yH02AhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734517554; c=relaxed/simple;
	bh=RJCvgDsqvQIbs/W4BbyegZu/SwvAzTXKdhI4ge3tMUg=;
	h=To:Subject:From:Message-Id:Date; b=sTU7ymknX8eXMF7tRym6HofnNSJQP9OA+8kV4+vX7vU8CmUNCpzlG9Twvq8TqeLgEgAcysd2xP+Z6vsBwlnbuHHvS89n1jOajWlRS4a8A19FR3AgLaPgN25Il2iGTGAtjOceSFq2tG+0Y0PCtjBO0uhBW+K6/ue9YfqcEdyeC8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srEUqvDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srEUqvDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9BCC4CED0
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734517553;
	bh=RJCvgDsqvQIbs/W4BbyegZu/SwvAzTXKdhI4ge3tMUg=;
	h=To:Subject:From:Date:From;
	b=srEUqvDzsI/tbVbsAaSCggjARIPV1P9olsSqBvYS/eK2kW7ZWJeAVAMd3w5zkLnj7
	 3ql7tIH35BqxAM6xnTRsiAYpNnMvm8TgdYT4MtdEPUV7KFHFB19kyotxEpGQ6XJbMs
	 l6nCIdYRuZWEuRk1oxv7JR3VjrFORavohmL0Vjm8SLxfumvymvpMNleN1ESNjh81nY
	 nXst60steSxQUyT1GoneFcTGvuNE9pojbAlT4A8slo0K01QGa8uuG8gZYF8EDhjBrw
	 Av2tVwemQa3nz2KuQr4qj4xUgRbQfngCI2NqHjuDLqHTHpIYPilZWKPanX8+XVL1Ne
	 ErHpb+nDUgMyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B85E7718A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451755359.18231.12777347733709842929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a179a8084b7f912f211e51236c953df5588900e267e16adcf3f377518e585dd
Date: Wed, 18 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734517553
