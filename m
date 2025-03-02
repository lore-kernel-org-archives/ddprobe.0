Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EB31DD9D1
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740910134; cv=none; b=pExThmAXPptlvcuF/f+C0IFWRxnPBGHVrf723fw0OK2UhcFkjT5TbyIKEbAD6KknFlYz+rWyaFvenCeTTXFpSrFojAUk/N+jJcQdmi1QWT0VkiRgubhMHpEwCDnA1nPx13IFOUV2GA8iT5pAFBu/MtbVYgJ+hT/YTy7WWrr06Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740910134; c=relaxed/simple;
	bh=HHgRizp2ZLVNSFCBH3R2lZoFIIe5A4gVT+7QX3w6cgw=;
	h=To:Subject:From:Message-Id:Date; b=m0kG8O4Hc6dV5KM3n1faG9VrY07VFcVRDvRzrV8aMkEUdAd81BdygAkaJj44HUKyAX1CjLPejiNezoJf3KsxDABJNcm7j28DsoseuvvIJxfmdar3prKwZbJytgV5+van1d0X5gnM0T7lA7yGff+Mo7nJvcRIef82QPumM+cOH/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBOG/lAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBOG/lAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B02C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740910133;
	bh=HHgRizp2ZLVNSFCBH3R2lZoFIIe5A4gVT+7QX3w6cgw=;
	h=To:Subject:From:Date:From;
	b=qBOG/lAU4Cw6RjT0xyhRYugkdoRoaT9jPFUbgqT9c5UJW8L8jecG8c5V44Ul1zE30
	 A6jfWoNgXGbjWR6jR+4LL43XGlU7F/GaQr4+JT2uXhxjcWAiF6dXjvlG8Qi+iKmsOk
	 CXgaaxq8XIKZVBzNZff0MwADp3KUtJuPxjmxltZzzvRrHsdHizWT1Jno8XU4vprrP8
	 jEJGFALvm0YnMcpd3SkGFdWnWQ4eSXgX5NZR/jCQaRcfRY/KBGuYyAxPjnXyPVM/fE
	 QNoofpo2vPHHL2w+TllErwzMH1VmALKt1EvQJVuqglgiLIPYG+dmxOnGPQn+EjUK0N
	 1trG0Ibf+4MPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD97C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091013360.6653.11783404904824602465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58710e7aaf390e191d956d9a3da17ba9568369637bcff67e60eab8c8afbfe0e9
Date: Sun, 02 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740910133
