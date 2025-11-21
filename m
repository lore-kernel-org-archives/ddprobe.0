Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C748D352F9D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763748113; cv=none; b=khYlEyLXoakbARV8Sgi7OwH/GIwzzHlFMDTIHJcoOgC4XeSzVe6W9GknMoNqSYwxOI3QuV5HHVuhdcAOJOuFBcZvWJpxBpXdZbn1Tez8NnCX/IHWUdfocKtrdAL3xf4jOBHAZQIZZC4dqcPUjTUExLhh2MlK//poJy1HqoaY6JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763748113; c=relaxed/simple;
	bh=YSBUm4ZtCpsYCI1jrk2qLKjTJhZYZbcmZFHNxaRhlUE=;
	h=To:Subject:From:Message-Id:Date; b=LhHzgZgKPXpkomptmzD3RoPUtTic6UCa49rXgtiDawK2MKDaQyHMqjPRAu2N/DfdvVRJLxfxplGGhX07NnNdNtxPog0lojBF8E79vfoKUwLjfY8ldxpC2o4osmSgjIAietObSIZljO1iRPtkoDhXIXR9R1X4SPiBg1FdmuMvAPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeYyjyT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeYyjyT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7CDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763748113;
	bh=YSBUm4ZtCpsYCI1jrk2qLKjTJhZYZbcmZFHNxaRhlUE=;
	h=To:Subject:From:Date:From;
	b=EeYyjyT5UmFfx5aJACfSd2irkJ7woYqT+RRgH+poT3RphVA0cDVXqNMALKRZfMWOP
	 b34UYJSfnIlu0+ERrk7O6cSTl7yP4cqZwn3iRbgeMbMEKaz8qTCSR78vt6Kyvn6iap
	 1sGp5z5VOdVRRWyETvYWmYku9PsRLegf9KsgW7ZfHCpRdDH+dL+fVLZ0vnCIQhu3ef
	 j3dHc2oUj/PR45/9CuJUzWRO/9UD0s5kxPCW7fRjCXWjX84SLVK36HGhYcKdlRSB+y
	 zIPHJm+YehThplqq4bc1VwWFeRdzgBhJHTCg69rB5Lu4nuLJ4LEfrNvSK83pP/dUWS
	 tHTMV60Odnmpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCACFC29A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374811359.17654.1685678906095575064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abfacad40e849e8e6984ebec3d840bfaed7e4ab851e8fd32d8dc21d02561d9ed
Date: Fri, 21 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763748113
