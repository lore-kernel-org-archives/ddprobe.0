Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271E63F7A86
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547314; cv=none; b=i3qngpbenIrEZMf1frHyNGuzOqCCUvhyUPIeGxFiJs/5qfOOxs+rxkwWg8D4en3jV+zI+5UKcampPIyrhxGRnvTlTWPvi9hEuZEETuSbP9zKvIysjk2Gvc/Hf1Hqvq2is3tgts+sfbKlujLjJDK/A6gTMUCPea6fE75d/uaZwtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547314; c=relaxed/simple;
	bh=fSjoSaNQVCzG6EJltRGciR6L0Zig/JWwew84r2DIT34=;
	h=To:Subject:From:Message-Id:Date; b=toVk1FC5H75xdlpN2Za10uunxZZ2IxiPHCvDhbzK8wGi4RW3QJ0YjZ9Aeaq9nNU62ULAq2tfJoUlYhViIuJtbZTE1fbIuGIm0krcYkCSngeYB6S9Ztm621M35xix/qcyMKYflHLJaYmFjgYPj8hXBvrOW/2IMVxxOi7bh9MjUMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMN7w+be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMN7w+be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A5EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783547313;
	bh=fSjoSaNQVCzG6EJltRGciR6L0Zig/JWwew84r2DIT34=;
	h=To:Subject:From:Date:From;
	b=EMN7w+bePBdopB6Gk5khJkLtog2uQFCp5VUGL4oxfis4NamqbFNYDmGhkXB3bpgpu
	 +YQ4Ln+neFk/uhg/bICF9LXhct6OTO/BmVc2yJ1G26UZOereQ6QlWcFMA+ou8uHdus
	 Kg+P1FcONEmRUMJZm7fwlrlcyf5iiJjsHRz+RfBWAlr2Lev31eQxW1zy1a7ndRxlYC
	 yLm1S3GsoLSTn120ZmFGQPUE72/V1kQhdzWVlrXV1oKabUWq6wjplcvFJxnKzX/6SM
	 u/H0OcXWYLEgyYSLIbVO4FWhhmGxfowrJuIwQYu/TbnNvmEBcscg27fXyXCsMsX8LQ
	 qmw5zmGQWNmlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C4C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354731368.2150.1955787982664284366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa5c98c1c17fbfafb5a40e84fa98ba5b81827985992e36fa6d32a9350ec34ba
Date: Wed, 08 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783547313
