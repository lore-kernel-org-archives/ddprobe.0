Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31926153800
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746274795; cv=none; b=SZEnkDiZVMV9asdik9dq90pnKHLM4cIpDZ6WdXdb2/jRVBU1FudLBuEdXReOfOT0Xysqu/e2nPl1UUaWWcoNTJNgHPDYSBAcOdWSjpRlZxYOhXh96l2mJxuWiVQHAM/RhOk1GVvaZf8AzntTROQGRYu7+owBMtbYyjY88jdSM3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746274795; c=relaxed/simple;
	bh=+lMVYgs2Lnp9m+vZxfKwtVCnBm9Aizn3hLOJdUV57rI=;
	h=To:Subject:From:Message-Id:Date; b=LWM3/wJOj7589p3DlniAYt1NFJop5vScjZqsK+Jvw/P0NVEhSvt3IukqorVM8zugxryk6xqnCcreSZVvQj+HaWuUs0O32oM3gKbY52KwGUFywGSCme13bSkAoBfdtfFXB4O9E8ywV9glAQT5kL5cc19vVHfTZHVFSvhU/eKFVGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtG2KmSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtG2KmSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD86C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746274793;
	bh=+lMVYgs2Lnp9m+vZxfKwtVCnBm9Aizn3hLOJdUV57rI=;
	h=To:Subject:From:Date:From;
	b=XtG2KmSuNOwRTj0/4VggUwU8XVdBhBvMaBaBcQKXqv197pUtJGOSvEEi7RNA/eoHE
	 msT66kh3d5NY2kPdP1E4pXockKnHv8dBFflYtHQbc+1LwMjcQheMrfLfFyOJtZ/lnV
	 T/IIeATMciRvPHbIDrvv9Oh00ZZK8xhGlMnNb7l0rwf3tqUu29BXU43HAMG4u55l4R
	 OCSwLx6kmkRRGcCkWQc+X+Po6UQ2LH/cTvi5LpdecOK4q4JjyaD+3kVY2wi1WNRj7K
	 m7z5B9nKE939u/Rh+hNxzEZ90Q/D62Zo4bBPI9ttfx3zmYuynDfOZn8RgMCPYFpuuZ
	 pn5Fs96lN2dmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E977C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627479357.14746.3717258205158827730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cea7333377483119618cd9cfcf2ef3a0a85ce0447317497e466e1a7ed175f4
Date: Sat, 03 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746274793
