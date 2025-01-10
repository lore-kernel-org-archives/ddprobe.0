Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4E119AD8D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736499954; cv=none; b=rk9G5OzRaE1tBt+iCwvv5o5hiwLRxP6EyO36BhEIgZ0FiU/sfPxyAwujNYvY4Tkj7efpM2XpUpNVm7nIh2EP9Cj4pk8B2RihGa0qdt2cNPH0EsnPedZKuLIPNWu2Ipc9T6pU7L2o4Bx6P/iBTqarbwXjs69QVzVMNVsDc1dPs/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736499954; c=relaxed/simple;
	bh=nPb0gpOqYtmiU0HCz3ADHqfcRhfnMhUtGXA62aRZq10=;
	h=To:Subject:From:Message-Id:Date; b=cuCAacIxbH0vEwc/iApKDLX112wCh7OmY5f8Ze6pf7Lk4AE5GkMhAKe8SOo3myqVNeMqHU7kZxemwm7Js17gwAdVrqNeaZCeLzvGZrD83DFZcAgAThG5F9CeNVaexLMUjfFLk8RWplB3SA2j7+0M7dtLeIWuPnTd487I21L2ETc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZFtAzyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZFtAzyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1D2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736499953;
	bh=nPb0gpOqYtmiU0HCz3ADHqfcRhfnMhUtGXA62aRZq10=;
	h=To:Subject:From:Date:From;
	b=iZFtAzyCbgDZ0T/IrryRe8t6eZeKqNn4+3QfgDa5Bx5RR7N0AwsEL7Zs/g/RwjTMK
	 SGRRxLbR9u2KTMrcNvsFWCh/UQji37A9bUrFV+GoaywTGddHbVpmJXOzKIU+itc6rU
	 kKuFTx9jer6INkZFhXnjcQONjXyffPGXFXEoFshJZhWaREQRFhJHN8KOBvHsoJq44h
	 G8ZFI4XHjpk1DVAxEjxQ6RHVu7rqQUH85QPANNeJ1CiYHAR9JnSaA08eu9Nm3aDH2K
	 l+MfaQhVIpnZ4lWWtf2QxRivRwyfa2HstMVrs9y2F5h98zGfwnJiP8jigvEy6JQCZS
	 wPk4ZkN5mO4og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96979E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649995360.28809.3048879278788330127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03592ceeaf4b64dd8fcc62bc1f95730c8052ff0f2d458c22f0e0fb88b843a4d4
Date: Fri, 10 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736499953
