Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367BE27A457
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746300594; cv=none; b=Z5LH5edoFL9FZwibOaeE8u2TnPvN3GyobGmbeGY65rSRGN183RsUQ0CYa0WwD9Aa8HIElH3vG7aCgJ5mSjwuDOWI8KuohmRRnNy00MCXhe5FDKWI1avhKs5gCDzbBOwp6t1YITaL+9CVTOIKmpPAU79w6zk/BAkhSO1M34PNUFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746300594; c=relaxed/simple;
	bh=zlwAHjqzq4K5eHqJqE7NdzRDGqkkXh61OmthFjR+kN0=;
	h=To:Subject:From:Message-Id:Date; b=JRai6vPtOFP3yHWK+xo08QJXrsPT3LO3OzFCKfyNXYBiqQkYIY0dkmi2s1Y7v5jILYWinNlvmOV2ha5J75RG1mHjU+MlQuICqKnhNJVRuVQd7BVTqmp8EnYOYqcPBe5ivVYka1GX7gGRyuiZDk8aWMXKyvb4L5On1nRBhEr9g7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEMRC51r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEMRC51r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746300593;
	bh=zlwAHjqzq4K5eHqJqE7NdzRDGqkkXh61OmthFjR+kN0=;
	h=To:Subject:From:Date:From;
	b=pEMRC51rcMsBBB8IeCdoryKYF7cdmzQEzNDpjkLIMC+As9y1Sr/H3y3JtiZBKWeJY
	 00z3Nx2ozd6SF5Y1aF3W57PXHa8/6qA8KfG1Jm6fCPw4o1BC+tW/i5CSTKgKbQW0MU
	 JDvOdpjUSBg/5VS9nlXMZY/9N85OU4K5lv1vr8HYJJz2wEC+b06HSe+Ptia/KpqtBm
	 rY8tPbh4PBenS13Vh/9mm3HemhY+ztTQfJjyy1bCzHbvTPngyu8dySqGEF9foS9EOY
	 ayntGa8rpIbZaRx9tLIziQiibQD7zkWV9i7qRuyt4waW165h7UaqeQHVJHBcsX+sfr
	 OfsnlHqNZckNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C77C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630059357.5057.9303061687084115592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e24dcf8af2337a45028f5179e0d861d3e3c199c2a324cad3584871e6afa4df2
Date: Sat, 03 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746300593
