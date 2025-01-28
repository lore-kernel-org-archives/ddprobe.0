Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452E6165F09
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738041955; cv=none; b=By7bKQHw+Xu2ybfLpsv39hAcg6sQj3pzC7oDj9RRlWPhd/cHODs/g/RkRBur5BUm3djQx9XnMMT/1kwoBlga0QOo9Aex2ell3R4U/Ic98l1TIiEtAjpLoH4AFBdi1gfP8x5AEI0hnemw/LFOWcjSwLpxfVnjCldOFKH371MIxeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738041955; c=relaxed/simple;
	bh=c4k7TSLdZNZ6A3tVP4z6NzSjF2yhBHLs+GeMeoLHIhI=;
	h=To:Subject:From:Message-Id:Date; b=Gq7A/K+4AsyI6zaeQUmHgZTfunST9wkz8kssuA+ZQWhpDc9HZg8Savz4l4I3xCMXHCYgordiDvxigHbELKuBAg3ayA3v97aAVcFt9MEdrclkEKBF7k0h/3JQNRp14Dk2fFQxoh82inHg4dVDv9GfIuAxpToPfFwFPiI30DWuIKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkMKTNIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkMKTNIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6737C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738041953;
	bh=c4k7TSLdZNZ6A3tVP4z6NzSjF2yhBHLs+GeMeoLHIhI=;
	h=To:Subject:From:Date:From;
	b=JkMKTNIW82naj9bGh94jdXrRDdRvmWCLQnkaztc7F5MWAHAveXIIOPsvQ0A2iu67B
	 L3nqr6vKzCP1GksNXnZz/2A8KkD5VNEVfTyovrNV73V/qNJ/KFXGhrYC46EYMTQ4ed
	 tPidMvLSm/hVieL+r5u2oGkGkCY8HHGLXEdpmkCO0B8wWksXYHVLR4UwdGIW25kzfR
	 SQmpZiXCK8jlfJLei8G13QNCitGgRcnT/dZe+NIrtfZ6tcAICcd5YOeUphDyrr+/a2
	 TSs2QhxRiMknHpUpC0Cj2ccnao8AQCy6NLEYpOfKj7c/TFRmlWpm8UgodIWm9woMWm
	 KVU1vv65lHWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DC5C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804195362.25245.16268173151022235607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9bd21e303b816f8fb95ab799f60e044ab17ebdc327589f38496f4cc4950141
Date: Tue, 28 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738041953
