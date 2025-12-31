Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD512E7179
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767168234; cv=none; b=Qrb2q+NmKqiob/XQ7mKgri2h4h4j4oryp17SF0oIRhcs/Lrjm6SaY2zYZ3QPgvzrn6n0CH2ZLfTfS+ITpoH6H0kbU2uEd9ccnZGQc2a2VJ3uNAJfflj79Z+UR+ACDjpgJIIVwPdzTvGtbbBCzOASUAsSViIqSNbDS+KmrpF3GHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767168234; c=relaxed/simple;
	bh=KesrngpfUzeIonQtMmnlwOf3JqkDz7xMPM8b/kboNt8=;
	h=To:Subject:From:Message-Id:Date; b=FAFxgffCZEUdTpwLoYgpSUgd/DAmiAJq362OBcVPJFMy9O4DfdroD0XjJgFTNff8YAzm3d8YPpvFWOI9LtA2lPZczL4iAYeq+aGk7zgUBDfY/ze1u3hHPlvj+XyFRNqTKQ3SNk5AyyGRYMeyn7VtUaYwKlNvfNvHLA82StzCh+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suzZN+Jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suzZN+Jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8049C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767168233;
	bh=KesrngpfUzeIonQtMmnlwOf3JqkDz7xMPM8b/kboNt8=;
	h=To:Subject:From:Date:From;
	b=suzZN+Jyqg42aiUKpOBA7xEn5GutecVrPLEl/ND7WGT1gwPWglJAHAj08C5xkdBw4
	 hLWLGgtNkELwOMwe1AKBGpxu4CgcM1m9Z65vYJx5kNNUANZRSp6X/s08fDmgLh98IW
	 cWvaHhoToIjDFPizLnAJiQLa9oi/DNncU2xKdGb49vgyqjSAKQb6wZCM/C4+TAgCcw
	 sNT9E7W7+OBKJ48M/j9iUWMfsCsABvqsBXW+jisW/KN0iLx0Xd4cawuAp3Zawg1PDR
	 vTcgwh9TMHQCnenJwZqI3Jzmulm0LYTOIZvjWrEDDFZKZm5cVlRFWevG6xT+gPrjbO
	 dWe+OsKn3SNYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A3EE57D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716823357.30934.16764572732802589365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e6bc50dc0ef3a734e53390b9d80d806e5fb6d2d264310de6f818eea9c9e9ae
Date: Wed, 31 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767168233
