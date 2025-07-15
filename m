Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398B82248B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752592794; cv=none; b=aelo7oZqVYo7z/VdFVsQj3P4voqSr0kWcGkmLO4pr2ZEFcr49uRox/0pCOghyGHkhlVOFiLIsqlVFz15SkdDgISHldK655B63IE4zTqIqVWjfy7H7USiQD3dTONKPebNzy5Zs8FuMk698n8HOyJH4KOQwzstkemaX7/8J9XQyJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752592794; c=relaxed/simple;
	bh=X8RS+BaRqGThgy9gML+tNyDnh0HPHLYAj4dKbOkAKnk=;
	h=To:Subject:From:Message-Id:Date; b=MWbgfJij7RHTQDgmBDTONVUdSa5syPPNtPXDmmrFksA1ydFgfp71k5AjngrGBu0OfNrdGLbdnPEjfBToWretL1nf6YTKqJL/TDDoVd9qZvql3TRLmpAQuvr3nwKPZsW1WQyaYSB47NvwLrNgiUrCTz39QomqC4N9yrCpcWhODkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRhs/U2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRhs/U2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752592793;
	bh=X8RS+BaRqGThgy9gML+tNyDnh0HPHLYAj4dKbOkAKnk=;
	h=To:Subject:From:Date:From;
	b=GRhs/U2yHOV5bO4QfGQI3Tne5Yv7ClNbRKIsXrdnTcCcTSyFPbOfi6lf9FBbczSBB
	 PX0I62bNNHlQLMfhEim6YFM/RZMzraryi7E8R+ZK2VhCLFLvx4OMlTi6YvAnbs2PMt
	 q61eBNZJI5u2vDZxvMCzoefgEogE+eGrEIcYgV9VfdhyKn6heHDvkX46ffnH8I1jy8
	 d9UH0Qk+Lxf+klOFZet9du5mV8IbcIMSSh0KIDaFwL7Svfq82NEK+127LnNtGKbNoZ
	 W97aqv4BFOdsrGVr88ss71nICg4d3WBUR+NrPQrdqxZMmU5W5wwuGwjOGw6Itn1mGe
	 iUtsCiJGT8WGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92307C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259279357.26850.18346410782525197162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515f9c9b4059dff18e01f926895fe1670c5912b6410c90c28d614e5102459f41
Date: Tue, 15 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752592793
