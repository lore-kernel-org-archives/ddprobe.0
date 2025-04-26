Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54185931
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745666994; cv=none; b=RC1I5vSYXWv2vhfskzsebB/cQYvGbLUp+8GKsGXZiqRM2NeEDZ7p3f9NgKqOwqkuNltJQ/Laf4Lwcr13Ik4dFKd72AnUWiULDUV/SX5h39KkKgjuJxBNAizy0mX7dA8vzKGdemDlaTHpAk3yxiGetRDWAkIiKj/5sttA6zRrxZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745666994; c=relaxed/simple;
	bh=N/dq1iJwbYImfFTd5+rD9GhTBc5AVg61HSyB7wSIYvQ=;
	h=To:Subject:From:Message-Id:Date; b=TfMz5gY39DThdn1owp/oUt8358oVEoIF+r0+PUetqVr09HkCuKRnjabVrdYvg6aPmhYdS9459gdzyOVc0WXA7AKiIqR+eeAxHCgkxEyz9DI2m50UMIwK8n3DcgdmCKAaM5NpI004mUE0WIihBh2CxPEXB6Z7ysYwYUjQ6OPzCD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INOT3h8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INOT3h8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745666993;
	bh=N/dq1iJwbYImfFTd5+rD9GhTBc5AVg61HSyB7wSIYvQ=;
	h=To:Subject:From:Date:From;
	b=INOT3h8aUbS4W8SrSao/PvHo1ZrHfkDCupdjHowQE/p256dZOFOdReP7T/DmEebew
	 FxRMY2Ca/5u3y8ho92R3yuSVaZrk0HNzyLLhyfKzTLxavGiqz3QBK1JMpTY+vi/vwd
	 hZU7WKZvRvGi2tlbXxlo6smJm1uXqrDwpysCPMw8ilMX9TywcHkt0xlL7prd6AAgCS
	 YivYOzq78WzzOwdEc4u/ZxQ8DneDXxo/6ARgVsC4eLc/XpSwgvgvmAB7g8Llrqor1A
	 mHcM6/PaQOljlJz4tOUlkIBpvz/YzxO5ih77wP9vN1WfaVC9RlgMBQKtj5FUoFNoKy
	 EUT1ACkwOJERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93688C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566699357.13847.15195318344025083518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13d735e46ebba6dde5a522bdf4a570071eeab7e3fe7f4974916728f77389b29
Date: Sat, 26 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745666993
