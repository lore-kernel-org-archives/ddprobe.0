Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ACE1552FD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783752514; cv=none; b=gtbBbthOsnvXKSUmmVfb3wrmMiUCq3WcdPYfx/xc+uBY6VSqC0QRXcYnyiBmepGcuLRnZ5uxWTDMBzEt5aq7uJfArxqGQjtqS5ZK/99BesvoggV3/uYN+Jb68g0sEmAGbsOTnzu89asGIUemQqG1ghE9sjBttVpaDZUGOUn+9W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783752514; c=relaxed/simple;
	bh=3Zo3bP4k/RTkhWBchriJgMvAOcfMsjDqR9zQ1ant1ZQ=;
	h=To:Subject:From:Message-Id:Date; b=YoUHYQuq/7lANkg91bB0dJf8VYPpMimE2uEovvQgRzI9g2iGKFmExt0XXx3I9gQtE41/mFN8qrDSB77T3CP+NiXzqdVh7HOVWsCz95b0BmVEDgswM7M9n3evptYKSHvDacphrSX0Mbiv/Vpyvwa6NjtIGU6tUH0qOGyW0JK7k7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=so8kKSJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="so8kKSJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5B1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783752513;
	bh=3Zo3bP4k/RTkhWBchriJgMvAOcfMsjDqR9zQ1ant1ZQ=;
	h=To:Subject:From:Date:From;
	b=so8kKSJ+EzdgmQFNSW9cuqGTCZ5F0wJjZqTODU9knvHgR5JlwXtNBANuZ9tjHuUR+
	 K79dZmVsbohySU5MmKmbkfQskRzqWwG7xxe09Z8/gbFhduvZeR/EVOepJ2u70BlInE
	 RkmAR4384LS9PbG11HMRHJELnN5HhROVW3R/PV+tPAHBdBUTaEDrpFZn++Wjpl/DLp
	 IW+ukGgBng6YtvhOsvhBl4IDTxeYr7m8eNDFTjMDZ3ISpVKo7h39Om/byxH5wGDCV+
	 pnsJx2RRXQbbv+Zmtn9XgZ2G1jiTyD2gs0NY9kjR8qeNRaSXHybJtSdelCJDR8HiXd
	 SbfCqlHB3sAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B4DC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375251368.11163.11341402088409626705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b12a5d8eca82b15c4b25b2a3fc6b4f1b14190b61f7f0cbae166a17041444507
Date: Sat, 11 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783752513
