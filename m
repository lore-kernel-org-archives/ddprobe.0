Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101CB381AF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764789174; cv=none; b=GpwQr5RW9AOR6PHy4czhA89b18sR/gc7ERysF/65hZZcRry9LB6dzVeUTPbQ6txrmL+r57e1lQLmGZnCi/xilSgIWyl91c9Y1f1gGjy1fCGT3NFME5CKTxspuhlkcZs/vRG4vY5m9i02b2BgISXEJ4kL+klCEFJNEFCIAUW/9o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764789174; c=relaxed/simple;
	bh=oabV8V6tAh+VJanFXCYHWsB7jeL+ElvDdzmZrUi7uH8=;
	h=To:Subject:From:Message-Id:Date; b=hzrYgCsYKTvBABP4a4GX4so8rqHDaNy8s09BCl9KaoStPdV3lVB8LH4zr15gXLCExm4CY/wFdZgl6pXeBPGin1t7WaI3YaSd6YfUw2r4mDpyaENg8i1nID4MXp3TYlEh/f9jF+6zTdtWGzK5b8PVoLeQHMWAlfsV2evObVHpmdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP1qUSgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP1qUSgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA12C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764789173;
	bh=oabV8V6tAh+VJanFXCYHWsB7jeL+ElvDdzmZrUi7uH8=;
	h=To:Subject:From:Date:From;
	b=cP1qUSgGzFjpGlHKc2FnxvD7OuZ4T5DmuEOTjjnlVtPxmVSGgjfoqJJyh4DvZ4Mnw
	 y5b13iTwMeLoTkQEL4omFuQ4abHEtH4y0swleug51i4tguqOfVEKEvoga7a3bTSYzU
	 uQ1dfco7yUiX7X8aDeoHQXaERgk9pETWseR7MKu1CFc/Flpc4YRR6Xq1V4mv/Bq4DY
	 jpNMpEROzvzKlW4PSpz7d77/p0W2iyhKkibWD7khJ4TX2SZgmBWVypZuKS9nQ3/99e
	 weitK6JmiOoLoZ6teNBjeBDqfa6xjrxuxIOt59Bpue7quf9DQ0K6dKrQNy7kUpv8Aq
	 kRbBF41Azg70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90528D1BDD0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478917358.10524.5134182214461942457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a9efa38a3be4811a7305e4f311e8dc786341847852c8005b13f82631381af7
Date: Wed, 03 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764789173
