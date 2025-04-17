Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E8F2DFA56
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744852194; cv=none; b=SXnsx4uFy8wc42h960TlosCIAZDcat5BNS7KaoyE+wdUnSHFgv6Cpa1qwOF0pI5/m5DIkFNj36WSHyvt8s5a3NcVhgSlwDxXrND0MLxyS4iK46+ReAIOBfn9p+e72AZJEICnd9hnzSEnJPYTUyY+VTzSGKgyICRrMwLg7Q2o8gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744852194; c=relaxed/simple;
	bh=oL+hd1hG0rfQvKHzbrN0UWRNMOV9bsVk1fy4gmRsMsY=;
	h=To:Subject:From:Message-Id:Date; b=cPmqBIPZIr14bcqxvTYkf/oe3lLP2cZ6nq6HzRWnLy+B871OduDL8kU6aj7v57w8rH/6s3poihFb37yw8w9MvwUQH/A4S/h3XcQ5T9OaMr0vahqTd9daOJqvWCDF8rjQJ2q8slH/a19o+xzYScOmGIwMTskKJmJ66MNxM6kXIkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibmX7SQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibmX7SQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD528C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744852193;
	bh=oL+hd1hG0rfQvKHzbrN0UWRNMOV9bsVk1fy4gmRsMsY=;
	h=To:Subject:From:Date:From;
	b=ibmX7SQN/gDE5GHTMu4LwIwzAy3XJNSFnlogiORCh0ftGvr78iQWGGD5/QQ4/co6I
	 kQOypFDF28ItmD0EZZ1P2eoUq0nLqsxb4qAULMD/XR4IU6G07ylCNUlND+5K234nGr
	 x6v61p25fkkxINYO2VH3MAzN5+rS1E5C8A/PjJJZ4puwYTGX9lFi2AutsfIy2JPXFg
	 25UOjR9Hr+QvaE8HNhp8HltfXleNq7O8E0xmejz6tX+7MKW141i4IKDOifbohRPm0u
	 1eViYURYID0nns8BoJRUVclThNlKmNcuhI5AOeOkgMPtBx0yo94pPefcsKqqydJ5K9
	 XQMwge+v+yReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DD6C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485219361.3904.5554969168958733052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca4a353aa8a78e912dbdb62d48bf6f45cbec93b0e45f7e7f3d836da0c953b65
Date: Thu, 17 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744852193
