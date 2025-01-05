Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338C863A9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736056554; cv=none; b=G20w0Coz3zn3wa80Wwr/xO5PsglSS4xXE+cFBAiY1WVVvkmeNoMexDSucFFv8x86YgwZ41Ny9L3m7p/kexXItlGMjnF/gQ9kMXXi1joZgbv8F3/tRPfrwvUMlF0fbI4zVgASZr/qM5i0Wn/Tz2ZftICD/2KoNrcnUcVzedPz+0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736056554; c=relaxed/simple;
	bh=VINPvKaSD1dfSKVUiC7jgtCtt3ejR16CaTjY5abJRsE=;
	h=To:Subject:From:Message-Id:Date; b=Gf6yFbtZ/aDjvls68OkVJd7vfYwb5JRYH9kd2VkJcn69hvnMlCqde6ZSGQAL8+OaG6HmUF+TAv0gPLhXDD3CelYIL40YSihpAS97khu8Kkv9IHoE5CNcyv7hfxN/PZOYQNZWWJhraczIq7LRaoUi/NIdylTsmV05mVcsv1X0Ohs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx6HqAIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx6HqAIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A991CC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736056553;
	bh=VINPvKaSD1dfSKVUiC7jgtCtt3ejR16CaTjY5abJRsE=;
	h=To:Subject:From:Date:From;
	b=Nx6HqAIKPmGZ7yarmVe+3I6CtjURNNmJ0KQXjotAihWzQIpXGE5PJVk3BURGUuSmv
	 Ve8rvdPyI5ZEJXdmSpMxVF4CzuhAXRrH/g4fcM49GnQNMcsR8uCzBEgANA542I77FV
	 UWnOEl5ECOQYTPSPSD0sDojaCief2R7dTuKMwYqLOPFrse4xO38/HcB8oVwZn8jIMB
	 16iHH4IKJtkS+YFzJHGhorBnnEVojtODoCXFhJBtQQPU11gZLt+08swhrVTWhP5RMF
	 07rUb9Wx5z51+K5qZwnTPzMRnElQhFIx01i+55b2kYQFlhDR9HM8SgrHerdP2VGV40
	 hNY6XhiXLFRQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C61E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605655359.16467.5550935286704233168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630c5611f84dd394bff0d524583f47886d39c5a96173b5ac3edfad047e90ab97
Date: Sun, 05 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736056553
