Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F1E12EBCB
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713284363; cv=none; b=UDLHUwTz9bpBJvlLzxjNOU1cuyHUxanVFqL1Vsqb35ySzlo5uwdeyZH4X8m2RalitJooXzCjK8NGTS3DLvIv2Hx+Hft51zaaIg/XHpXmE+Z22/JTIpFchVC4gEggDLXRmRujjovLBNmU1xFzd7KpfbIiPqRX+jdCHXaPf2XfFfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713284363; c=relaxed/simple;
	bh=wYvhKUd8TuBbCpviomfzZkqNPjn7TLXJu7FIAMoidB0=;
	h=To:Subject:From:Message-Id:Date; b=gugyLJOcDJZllDMnb0D8oG8yu9TuLUSOdtJBHjH1bsq/BDugmTFRB30jrN24oxOfvxIzUBnMOvMfIA7wHq2/cl3ZeBmOmBC6U9GFlHThh9AeTRrWtznedDnms85dSbN/rqWpQ/lPcCZBRo01b1IRymaLsm28RYiTu4Z0HuqYJyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGgThej2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGgThej2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDA8C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713284362;
	bh=wYvhKUd8TuBbCpviomfzZkqNPjn7TLXJu7FIAMoidB0=;
	h=To:Subject:From:Date:From;
	b=aGgThej2M6PAkq4EIrsvdLRdFk6KSFbKT44BF4FuubJSn7Wum7JWkhscNBxhBLUgA
	 YjMJ0Sh6/6AGlA7lpSp78dEmB4bmJvberT32Wb2NzVsHIrMTSU0BwcbDdwRbDO4FC0
	 yIm5QoRk3Q/o8qXgQNl227V/iwmcBkBrt5b9QXtNqgEIGFEU7gjLHvgBrBoVgdlP6q
	 k7pLD52juo0OT8QjSka1r5ZLGf8DaSvKCH0d5dvyfw6JZz+kBS///cbFBJEUxtQb5t
	 2j1Zyy99YOjmzDP7kgqHXNnHFFYsjZWPNL7oSnNfrQzN18z5JReMfhUZ2id6UA+o5S
	 hmrR9xDX/2pkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9396C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 16:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328436281.25432.15466775328234393061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abd29fa87fa240ae08278f4513cfa1cc2b7a2cc6e6a0a4a67931a89b5ad4859
Date: Tue, 16 Apr 2024 16:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713284362
