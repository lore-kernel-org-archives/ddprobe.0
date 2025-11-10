Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BEB1D799D
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762750194; cv=none; b=RBcQWL5dOILBFJrh8EuJIbSwu7DctuvsVIOgsL7IbXLP2va9Ooc/jPJN80YqGeCWU1qFhJQpfaJ+OQcMh96DfCcnDtnSsCFxdqpqtgDZYy1w/DR9MVdsWs/vsBc5pNELUIddfDZ+dwIVkaVVc43L4UicIZjiDYDzCxei8nkjapQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762750194; c=relaxed/simple;
	bh=2LtCv9m+WIu/VxumRmlr7f5cZbBF4tXa2rGL0yHZ8ls=;
	h=To:Subject:From:Message-Id:Date; b=GJD+izAm+5zX2FNV4BseH4witnGSYjh6ji0+d4k8pYR0QvqpBPXsgBBWR+yc/hT/Deo3xuiIzELj2MT2XVmwrQCxexP0Wwq513NF1QMC/rjjUDAHkDMMm2c5QbTiHIkEjaaE+NSzVQs7oc1kkMW0vMWrQYGMYh6CKKPdvwLPcxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOPushVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOPushVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFEC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762750193;
	bh=2LtCv9m+WIu/VxumRmlr7f5cZbBF4tXa2rGL0yHZ8ls=;
	h=To:Subject:From:Date:From;
	b=HOPushVBJQAlFI/shFDvfu7/Mgq9KtUA1ec7QoNJw8t/k6lpFC73GWOYiHGY3MHDp
	 WkrZAV5uzSz6iomc71ZLWn9Sver42ogkPKabb7n6C+f3OG3G3jVO0QxER9eghRKrMq
	 przDrS/Ek9p4QChfSLOJ+CVpkqWtDvbkHA0mYlLqUv8YL3Z/jpelMmHrSHbvHmf3US
	 0MWnvP7vrvT6deifbUFMe2O37q2mtFb9WHvUzEHTdH9YsvM4N8CQY7l+T0Nfu+J0z1
	 OtHFkoCcZ9zaKYRVKgYIOorcSfkzJRzCMUznf2NM4+hAOUvrBs6wXkYc/D3fB4B5nW
	 T/fcXGfNI1zrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFDCCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275019360.7466.2869514793748102797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1afa6ce4c6b9050cd3a4e0a8300b60722d9c55528f55e54471369236d4dc832
Date: Mon, 10 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762750193
