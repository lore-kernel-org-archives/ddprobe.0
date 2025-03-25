Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48547266B60
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742908194; cv=none; b=VU9eWrOVqVIeQKPFSv46sPLHiQ+YU2EfjUAbXp2JHhfJ64/Dw+nJmJ8MZG6weUJBJG6y2O1I+KwG/rXErIkzVRb5QDpPTb0fVHLOW3bZMACZXUFZJaHTP8WOnCm4N9wJIPoqKZMq3wDTfJY60IYxFMCe4A+v/1XlCWDSAuTXaBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742908194; c=relaxed/simple;
	bh=UZjfYaOPRfTyMV3Ri2RYvI14e15lBZIG2R10zIHwyho=;
	h=To:Subject:From:Message-Id:Date; b=l12ZOU8IX3bxmTAyikHIRQSXeSsoyJJvWarj3GhkuSXtlxztbrjIQQs3qxiW4eB5tUS9qvCkrEk4y8PII/9TuKkXjbKHP5pY4Za6WqVlRVC+q75xSZ7qlmMV2X5Q9LrCVkzWrR8OLHZVCN4VJY+wAPWOX3WtDvy5g5X3Tp7gvK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zijwfy3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zijwfy3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6119C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742908193;
	bh=UZjfYaOPRfTyMV3Ri2RYvI14e15lBZIG2R10zIHwyho=;
	h=To:Subject:From:Date:From;
	b=Zijwfy3gRMm+1rU14taBqN1agXGn9T3QdD0cflOVfIuAoPjewaYI8aKgxscCB9JhB
	 4jtoiNUWOeeruP1P00/ls1/0riKWER6LlKihMaxHoob5kmvajrfr2w5AQOEYZEAEqH
	 d36AsiJk0vyGdP1OTt+989xuhZHEBX1y1WqwJoDEOvjOmuxoz60zX/dY/UshMWH2J6
	 Fp/lCAS3NBXfzWvOh3OQhp4fHJx7KFEC8wRjnEh0QeOKN2uNZVn6WS1sfGxWWNlqSI
	 CRnMOkxHeGF7+ePUnBqJF5d+LAUuuQr0qdZ0lwlEyra6TRuKNYToyTK1PExkK16i3x
	 L0gf6l7SXLPuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FACC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290819361.961.14784789309831196982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05408a63bce305ee86d963b50d2f152621cc9d9e8de8dcc3e368e7fc0ae3b46
Date: Tue, 25 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742908193
