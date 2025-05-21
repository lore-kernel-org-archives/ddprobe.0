Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3164219C54F
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747837794; cv=none; b=WjpT0LhR/bPqKLvO82r+ZpCa4H2HnHKPlD0MOH/sqwxa0PvFuQdk/WCUCXVg9rLpvz/qkWwUyGCSdtDQ/Y4IpH4whNytqXIQKSqkeiLuvqVubx2lW/BR+xSaiWG4R3ZbF8vm8zdH01Jwr090xm5WmIIcKQElKrM7Ho2J+8n1PGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747837794; c=relaxed/simple;
	bh=s52Ee/N9sRPmnlRPqVjDuNHRwz47CgpnzBTobX7FWow=;
	h=To:Subject:From:Message-Id:Date; b=HWcK5esHttjwUnA/25codcK3qI4FF9xoI8a8tA0Gi5MZc29SXWgniPlTEfllYZKL7iyh62P5qQX6dP7/x65MWmVhP2ykFMMnxPaRkepBiC3diolKateJimLRsY/C6teqRU+dTCWWTlg+kO8BXVpWt/lyuDUdgsokqS6W8tESQnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yaz21HVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yaz21HVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F30C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747837793;
	bh=s52Ee/N9sRPmnlRPqVjDuNHRwz47CgpnzBTobX7FWow=;
	h=To:Subject:From:Date:From;
	b=Yaz21HVzZThb7coK+lJzAIfzU81V4qx4FFbGWXIAJkuqyi8STrwYf/UFmUpSItCxA
	 ywE9XQqOL/4gt8McJ7JrXHDXKFdgPYkbKevhTOtE+E8BAusw6Dw0K6W89vW3vjfCJ4
	 PftMzDgFWmHKXtNvRKHLrZ8BMY71GQqKQK0DqN6hB572vMmLr3C4QHi3spvZyfJ5UP
	 6e/Ya7eu89dtnuFoljIrRaeo3FMfUa/N3Tx+UjaVt6HCcw9y3SDoCOW7xpSZquZ7rh
	 s2zW5yn3l44BoU3FfiqMbXD08lTU374kkUH9le++ecf4OEUvrxSI5U0cKSK2QeOImN
	 IhBrmHCEO5wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F228C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783779357.30520.11727418383576453502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a7df3d945e6f25e24400cb30d1467971c2caf996e93c6740db240c04290515
Date: Wed, 21 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747837793
