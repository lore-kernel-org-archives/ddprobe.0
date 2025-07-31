Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254A224FA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753926594; cv=none; b=TPCC3ieGvwYYo+3AbjCAoRSx87ZbLwYnk/m5+PxsrS9RVa6ctVUzm7ah2asUVjloKEP6BjievJIxliTv9t7b8JSFVNYB0xQ7UX2KBUkRAuA8KG7iaKB3YEZ8AwEG+0pwyrMhITgp4RY06ZUJ8e8uu27IgeSh9XmTpZ0jtIlH9ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753926594; c=relaxed/simple;
	bh=A4N5Y4HlaYt9LaZEv88/qk3RObvV0BtVFKYQpXAk0TM=;
	h=To:Subject:From:Message-Id:Date; b=ZfPnGVamQ50qGEQUlI5UYMPC5yqu+wa9fARbXi7KZqEsNgnaGYJ4/N5y1UntjBtygxU0rxSUu3z3TeZGPRO5YCqzUdrfyMV6kxQEYp8XZq787koKq3mQNaJt402zrN9zsjBz6pybTfF5j+vXgf4mKDVYfeXhaVLM6MwQS5bO4Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxsNNHWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxsNNHWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753926593;
	bh=A4N5Y4HlaYt9LaZEv88/qk3RObvV0BtVFKYQpXAk0TM=;
	h=To:Subject:From:Date:From;
	b=bxsNNHWaXzgDCp2DdUKzpvIAVvmm8NwnTz5YVjj/vTXmLerQBDeqb5VgI1sivsgjp
	 oTu49ek7Vtkhr04iwzTSe2tYa56fLYuLks+IRdGNRKzB4PIJ82zDSDKS1+KRgBtdlo
	 yugTnIJBK++ey8VmNR4M6AcMVFF7+ElYw0rKYLrr61uCh+jqxxyjPWxglvkT92tRcl
	 kQX17sdiIYTMVOXG1mRrzHrDFOc9zr4hpTPztxFiQqD51vWhijxjV1Ore536a44sbq
	 wn/CQtQY7RN0jdV7zgbqenGx0mMSijjFVOObu0CyindUPUOOX63IzYOGNOdrQctQV7
	 7EMbsS/sc6/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90463C87FCB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392659358.2388.18151160689584624178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de17edbc43a3da876923578e96afe04cbbed69d7217d28ca2ddcaef471f50b3d
Date: Thu, 31 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753926593
