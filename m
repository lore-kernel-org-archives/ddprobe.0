Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AA4B7A50
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789672834; cv=none; b=Qh9Hwml81S/PdfAgP7rwOi74hqD6TkL0Y/8nZpK3h40GkpZbaZ2KyayRtYEYnI66nso2mX8/ntuKjwmttF7+NThI2V3Fso58UhgTc/Tx+De7En0nwebCm9hsZZ9NEXnkckIA+p8WgI4J+KsenOxLa45YFlE1Wjsb2kZfTHZBJ4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789672834; c=relaxed/simple;
	bh=ZmS44z/kZt58mymcrEzmABWRYk6ytt0N3S4okWaDJRk=;
	h=To:Subject:From:Message-Id:Date; b=sNcqGWdmognj1qzJrVmz0IuKlJvYWEVf45v1MYjssBXVJWLt49P0r/0jwMsh67WZ7AiK/C/hx3oUHrs7o/gEMM21Uvzp2XXnyo1U7sFDhZTwhO7WC081+ADH0aVm8xet2Ltt8mgJKPfXLsFIgBm2dZeWI0/qjJkRLOxDMUrhSEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDibvLfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDibvLfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D988AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789672833;
	bh=ZmS44z/kZt58mymcrEzmABWRYk6ytt0N3S4okWaDJRk=;
	h=To:Subject:From:Date:From;
	b=hDibvLfLR1g+Sc6zfZxEVTpcClnu8rpFU7TMDgWw6/BRqEptKkRFdvcXzZ8Y6ILa+
	 EDV9gEnUrsROWv0bjLs6QtCuDYRkobLLnNKInMgPXT+H8G7yfAm5SD9f30GG99P9B4
	 RZA3EDr3yJt9Mt7zzpC/fG45q0/YmK4Kq3GXrZe3xyvYr/I2WJqK4i4S+Gup5UA4E4
	 lis/enQUKPLrmEQojVefAi4HeQnpepoStqI6PAOfSYaJWroDS6Rhfqkx7pcefsCiuf
	 2qOCNR427e39nS/irBXr8ebqXsLE8aJEg4N5ELN9BDL7QVhmH2FZRqN2U/InRDpNdl
	 Ib5EZlHO9PzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B273EC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967283371.29507.11138788868391983728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92990133ad899cea5e1ee341bb377ebeea80b42ae5def588b6994a1e3f8a69f
Date: Thu, 17 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789672833
