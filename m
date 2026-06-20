Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A26D34574B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781955994; cv=none; b=Ve6BF4z4AY3KrVXAJ51ftk0AiNcJlS44ZoSfSV4OO2wi674fbZQF/hpFZCbqWhhNv1NPT8IGfHJN/ae3fBbDjwd88bBk6hfp3OLHH3GahUBUoKlemxh2JQtunyPC7fVb2PBdP4lVo5x1zmQjTY6f0/drx5oPbuVcdfkcPr08wGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781955994; c=relaxed/simple;
	bh=xKVnbxA5x6Zo9hKBbVBnwVD+cGEKKefmbMovIm4xaeo=;
	h=To:Subject:From:Message-Id:Date; b=gb74QcPNmkyQHbeRwGc42JVs3jA9RC8wX/q09TmmK+laTPz8OnuPZkoC2av/Jw37hMgv2c7KxRExDgrfOEhm2xdAM+rxLqdswsQZr5PSnSEJS8KEp3Xs4RQGOTrPa93yhMYH7rPrxCDKlQnYpHsre119N+HWxEyqj+8GGgTInYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=perdv6ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="perdv6ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E559CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781955993;
	bh=xKVnbxA5x6Zo9hKBbVBnwVD+cGEKKefmbMovIm4xaeo=;
	h=To:Subject:From:Date:From;
	b=perdv6ZJLMNhhS57IhIH+0bZomfDg6r/joZ2Mjeh1VyYiFV+jBKXUvEfR4ECY/OAH
	 yb16j/LtU0NAimePM9ge32NtS1z9JxzF/9pmq/4LtRDuyohbi8isPsxtzd+/1jAkBP
	 1h4GdEittfPW9LSpoyXR1Ex1F8dHjt0PqBKnIrrJGZEqVH3BMEBQTqX7qC6v49BEXi
	 iPlMpxJu7zuxjttDWJujf+qStC5lx1RYmuKr7uyGnMCueexBGbEPYYHw3OY9xUs/Fh
	 QMBf+ZyPbBVyy9cbKztILKniede8HUY/9oU3solUfYxLQBCKSJYInauD2bQA4jHZi/
	 9j82KLnqKpXcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BF5CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195599373.18519.3520773047628034963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac93980f2c861440ef4ad106b7694fa4bacd761041ba56be5375c3c6627d3d11
Date: Sat, 20 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781955993
