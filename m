Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE5D3207
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718939543; cv=none; b=ABBEVNbm/iV5TPqEY6Gz3pVEtBjGuhMWDHvkTi8x9QvpyGbCVYVC8ASP3EcFqa1WFH4NRmM3c7nNGAQZbeGzf0gFhy2u/53EikpWJDSU+z10wr2iW+m5YFzkxi48G00eZtW4yGgjqWJXzyx7SZwCKIlf9fmzLj7q4yGJ5dQND8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718939543; c=relaxed/simple;
	bh=Ih0f33SfdB5+fouQbD16kms7udDuYnw1uI9dfVoh4/w=;
	h=To:Subject:From:Message-Id:Date; b=ZsMI0HIDGGkuwsXIeDCI1o1WiMRiIQG0R4gsBapZjotap0UZcWnvmv30PRJoHHtRiNB+Ct2gDU3ObyeZJ48UcBhNTT+otrSy5lVuzflb/Iw3lKw4pG4YxJw8vi9HPur1y+3QDkgdcMp9+bz4++NSko2t/czVBxpASWy100DUj/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gazY1rfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gazY1rfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE47AC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718939543;
	bh=Ih0f33SfdB5+fouQbD16kms7udDuYnw1uI9dfVoh4/w=;
	h=To:Subject:From:Date:From;
	b=gazY1rfv2Kt6sD51GGjL4gXLfuNuqGRMCJFldIgVEITGkzZe0iEZGnJQMwtIbKnIq
	 qrEysEoazK4lC5gy00emsa5cEQxTHoE0Zntmv8b46wRbH5D7X0snFD0b/6SXZg2oAN
	 UjtRq/R5INqwduY/ZZ9AgGyQ/lLem92l+k5j04Ez09v0jawMX7cEXXIzVk+ktJCDtu
	 2r1Fc5zzn6X6jbssKnmig8wjpMBHKGYcMSnSZTMeWi3jm0oI2/pvZIFNc7KPoh28kD
	 f+jEqM7lxlW+QoodOv4bJJT6Bw6lt2Mt9yLxxLfqwbYOhq7buEb00G8Uqt+1xWoTMb
	 dis9ipXZ0PKJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09D8C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893954281.25391.4454347296614211426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762175e1c924c7e31957a44e09d055e973999585740bb92f9066fb57b78e2573
Date: Fri, 21 Jun 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718939542
