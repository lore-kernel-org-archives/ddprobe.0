Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330681F8750
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746436794; cv=none; b=ts8AxyUShyJNnjypCaFcgRXoXGTd53/hj04QSeqP8WAs0kbt4q2U741HNV6S2w4fwVS0aYOVCG1p3XIT/k+icikUgh0rMiEzlGgJDhLBc7ITQtp/ok4Z4OGJBQySc0GcBb3jgxLUZtJ1Y3AHEfq8MpTEIqgEQblg5LyyULtqi/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746436794; c=relaxed/simple;
	bh=tCZgZ/ly/yWkv7ZkXclhxAWbs1PVvfkasulj2uaKNUc=;
	h=To:Subject:From:Message-Id:Date; b=oghXYABTvZiswp7yHaD7om5Jjeo/qyKGzB+VsdzE8S1qx6I1oIUHQXPkE2COUc7JTlYLOs5+ZeSX7TpsBPIJqToOljKGJybHLfR0gCd00Nq5ID+CYIMtUHN3Io1w42uJti5zbtXQ8OC5V98K+haKJzH29uKLB80VExdO18hnRQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYummJhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYummJhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AFFC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746436793;
	bh=tCZgZ/ly/yWkv7ZkXclhxAWbs1PVvfkasulj2uaKNUc=;
	h=To:Subject:From:Date:From;
	b=XYummJhW1+fbXFlomkVF6B7KE8lpUl5M4H0+QYamg71cZIplATn9VsygxGIkwgns6
	 PKtdac2aBSPCjA2S4b+ReCO2WUFPAauBLIrJZoQE8mlgLlSN2NS7kAFtUd5rHXY+2d
	 IRtqDgWildRl1JFdeOF/OyAgYbfg5IFyQNMTvEZeEDfgzRqvwiyY46FI7r/t4oVxQB
	 MBrv0tjdljJpir6UBugJdNDs5mYQw61H6YtcVIjjrm7qcDplxsLBgfiE13ARjRRl0G
	 yomaVw0ycAHXqCl/XFx24YV1rT1IuTqleF9DW61QLOibNikRrQME2Sxc2rMlW55ULZ
	 +1o4iZjIiaQfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B13C3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643679359.22082.4200754722137989717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780990cb6902ff22f51da8ecc30aebd22950ee1ca3e3a5a73b55dbba20241e54
Date: Mon, 05 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746436793
