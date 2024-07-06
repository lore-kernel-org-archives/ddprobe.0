Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FC0DDA0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720241123; cv=none; b=B+oHmcL+x5XXEINF9F1djvNTHrX9eSmkOUOso/g4L6j7KIkCoDfov8oiSJApnz7HrK/WVexcvEyyxLnildiwcdSA/qaXpNIY0wiYS12hyc275RYy1niPhzd7UPTSRZEvrZcvLSQaKavXD+HEXMwsO1cc7wlWLPTG5XIZzRGwipM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720241123; c=relaxed/simple;
	bh=jx1FvOOC1cvEbnuKnWlAoIhhf6ht9XPZX5WZlkkPvis=;
	h=To:Subject:From:Message-Id:Date; b=Gp3YExJq8qDo5x2MSsNAvvXH9vJdY0VDTTGRnaWVIr6Bbg+YU2biatVmSMi86keOZDi8iEyBLSTqM+dj/HeuTizyDsE5wFWhwNOKZ7VGQDwLoul+rtVG9ftr9GXI8r0e9pMrbj6GT+vjtwY9d2jod4A2VefV0v0sF7t6FeBMW90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvW6qtap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvW6qtap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB1DC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720241122;
	bh=jx1FvOOC1cvEbnuKnWlAoIhhf6ht9XPZX5WZlkkPvis=;
	h=To:Subject:From:Date:From;
	b=LvW6qtap4sXX12GOQXqCHTuWaV+5gKztITO2kF9T9u96DqvIbdJN6wEECznbxhfG9
	 dhIqQ/ka76cCqsuZ4C8uN9liVEz9nWSOED76BBruwuuwTjGpyIM4qexynPya3F83Xa
	 O3BxT1cTzbMyAMK+BsD9/3w+INHWKI+YFk9PIsHyAgXbv2EGxIbMDW4ClMhyIV7ZkP
	 z5Hrksb0fFX7Zxsc5QRh33Irtg73V+mYifyk0GpzH+P4u3o0mBi90BS98+bbsWgQe/
	 C4MajJVYTm3qMscWKwwL8HrKEA9W+AMGim1EZ6zctkfzyUNl2j2Mfofp0aJmvxnx7u
	 r9ObGrjSIOjYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E4CC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024112276.3989.2914895159167205876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dec62d39fa98c564f0ca5bccd9ba109363b4870e85f67e9b452be3326d669ee
Date: Sat, 06 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720241122
