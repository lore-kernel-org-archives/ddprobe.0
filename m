Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A920404BED
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781006134; cv=none; b=Isu3FJJ2MGWjJEDL6W4Tld0sNZjQiVlNDFMQOtG6LrHE/V9NVFlP3mweqRxVSAItxJcDxoyH1s8tlSg7+4c+9/2aJkWLfp+6Li/Z3ZndUUhpUne1BGZsC/WKSvcaWjjuYV0yvXroX6yzwV0eVOXTi3H36HyzY2hPxTuRVy5Dutw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781006134; c=relaxed/simple;
	bh=o/gnfpsp7c/4Pk2KwG71xKGh5tyHTGy55tI50+GKmKw=;
	h=To:Subject:From:Message-Id:Date; b=bJL6Z9+FYOSfkPktDrE+5/66pO1eISeSQvQltK2xNbDuDRr1zOVcMM3nTSMRz7jFYgYelgEsqWdca99Uh7Uxda2BA+j9sdk6cU7+ceDBxrxHOfHFyVUxbp8QRFa2iyLFJsRCh8UdK+qHaM709EwY/le2fe5SlcPAwfYMz0j/iTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E43HE3VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E43HE3VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA73BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781006133;
	bh=o/gnfpsp7c/4Pk2KwG71xKGh5tyHTGy55tI50+GKmKw=;
	h=To:Subject:From:Date:From;
	b=E43HE3VWdjQ5ZoXgRqBPCDisqkCLfpbjRUTIFS8SYt6Qw+ZSPybtgZOu7b6dqebLy
	 SSDI3ZsnvgbSi4SjI0kulV5uhvcZYkiJB2Y25w7wYvUudTwyRacEd6OjR2H9DH3y5S
	 DmCycPu+zXRo36syvURXz25gX7q88NWSMt3nbDORz71h5M3wZtoNTFYwRGWgC7SOwf
	 0lAoMlMrM8FYor6Lnq5UOykzqBuBzHT/X8XgtC+hTrNhgfwLCrz1iBWXXZxFcHQLxu
	 /W5yp7jPNFvAmPiU4EMS0RtkX9+EKsHMrp7eNOgGF8+Afgjlo/qcF+TvEU9SFeBB3I
	 7z0sypRNOilYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5922CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100613373.6980.13467541309769677740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9d4593ca2568639aca321db2b5403cd6246a09c8d7c72cfe92f81379094106
Date: Tue, 09 Jun 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781006133
