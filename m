Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216B41EA73
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729316154; cv=none; b=l/cr+pnsQ6CnCy1WsWgGbdl6ikMLmH8IP5QFW5RBAC9c6gTfp1LM6UxAVe6MTs8Bk7dFFqEA2n7s4ImtZ/muN3i8TYU9yebg8YtIsVKbuMbVUfI0WoIPzW4n3D+3GR0mLWJbIo4rNuw1lqEFt1ulmhVIRFyI+g2TOOdsf4EbG3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729316154; c=relaxed/simple;
	bh=xn2/SjElp8pmAUrH9423vBcEr2AnXZX0qtc6P9j2dMY=;
	h=To:Subject:From:Message-Id:Date; b=VDxwoxXxBQN/QBO3Uo9BE7rz4zzCsnFGhT2hC+aQthcqtnU/WHErKHD+TXwSRCC1egS8sKoDY8nMnA4zYSzwY1w5VCUxEiR2fr9/opa77Hb+c2+cizoEjDTSlmUDEHOkO6Af7wqqBDCah2QP30Ad0WfaIrFJ/aG/+Cp8+dosorc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSXE17/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSXE17/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC257C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729316153;
	bh=xn2/SjElp8pmAUrH9423vBcEr2AnXZX0qtc6P9j2dMY=;
	h=To:Subject:From:Date:From;
	b=kSXE17/0Td1Y5sM9JVcaySG7vG7NHOymy4i2m4cNS1ge8mSZTDlwLugazDDFxdXMo
	 Qf/Sm+hs+9FinJba7OZBBEB41tEjyLB0HKJVLxM3S2A6iyCgzhdOZJy2JkPdWYQ5Gn
	 S+/9QeIcU7Ft6C7GRR+PoLQf6wxJz3qltNF3ZxMXuSLCHkxFsBQJrcaTqBUSuOx5Eg
	 7YWeyodWYXg5Aeb2BTips3yoXApdBHOfo6RbleFm2IDb65L7nn0e+/iplXq74K27s3
	 vHDCi9h+jBtI1/wP3FMskWCZLcTQ1K1MI57LtPE0GCpsMkkucEQbZIHuu5JVFppUuC
	 ydbFK1R5+RGcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971D4D3C547
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172931615358.3439.15006965706826130563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d7676b57aa73d65b54a5b60839fcce8c1886230fe2076392f28669313dc8d6
Date: Sat, 19 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729316153
