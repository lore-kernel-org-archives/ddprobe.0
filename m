Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEC3381B9
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715746343; cv=none; b=As1vMTL51rjzwLuUYpQ6FSksD5AqkeDftug4k3XZ1HHGYQ95vljs5dVWH0YtOjnoWI2gvsB7tQkGDRoZlAhb5OTGb2LJNNJkYS8X/ewiQkzn3ZiFONKQ/qaVJKDyodLchZ8DaD+UxWmo4YhQU+0/ivlhFhOPrDRT7eH41tSPlzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715746343; c=relaxed/simple;
	bh=r+/fPuf5MApVUUUmdyJUPwtxxWOmShgCJh/w3wyMcDA=;
	h=To:Subject:From:Message-Id:Date; b=DE2npFAbhOYDDR9E+oo/ehRF3GkraNTr71T4o0GX+rdLLNHINKBn4s7YvKdYXGefDF2qDsmvGRa9DNZKn3vnud3nPLuX5pUdKdTISmJ2gRXIMT9qFPsVMutrcgcxA9Ymqh9m+oaWS38POA7BLrtOPaRuGnwkFPATR4TWF8Eltlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVZ3h0Ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVZ3h0Ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B2AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715746342;
	bh=r+/fPuf5MApVUUUmdyJUPwtxxWOmShgCJh/w3wyMcDA=;
	h=To:Subject:From:Date:From;
	b=aVZ3h0AhrruJWURRbE4Hq16hngN3yzC7HYd6GnKcS1qH5ihTcZ+ZFekoROzqej6mu
	 taBcOA5giEgrVruFhFSBeZg6YbnUVrbrcfSnt6cso668BUFyFqqnrBtFiFOAJ8wrXK
	 ymuPcxd8vSjlyqZ1tICZoS4d5lQUImNswmUwKEdj94s6fj4KE296suVCo6+W+26VK1
	 8/M8hMcqreXYFU8PE6at1tGc52YOiVjES78blQ5olSbnp3cx3BuSG5ensDmgrhUVM9
	 NeYijbo2qvrE3PdpcCSvrQjIUkji2oGB7IAFb5HG1SCPva3naLHy7i2mgEnvtGgC9O
	 V0k0mw2K/8a9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA060C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574634281.4268.420069979047376506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed338423b69a40dbca05e44afbe7b505ef76b261c373d2aa22326e4fdbfbc9ab
Date: Wed, 15 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715746342
