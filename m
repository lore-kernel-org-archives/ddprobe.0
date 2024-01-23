Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D793A5A0E7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706002096; cv=none; b=F2D5e/AR/NfnhHnUTmATzJvgi3uB1VO3U5RdLw5rSRHAGhSoCvOBzixTaVhA5TrvCCkYgsc3gSU0oE+Wfy0o58pvTyx+B7aOaBQz1oNu9sjNixjp67RELmq2D5N0Ym16ZWUxwhpQnt6BvSAGbz0WR3NJhYc+CnLE5PSKJzCU7Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706002096; c=relaxed/simple;
	bh=bUecMJoOA/FrSu19IXo67AqOr/Ctd30ePRKeDSOu4n4=;
	h=To:Subject:From:Message-Id:Date; b=ZMvioruX2LlBBjaAePmE8CaVI2ofIsSaJbF6XMTvPqO0/9u+iF0jzwBoKACnE/VgqFh7NIExPUZ6FSF0tDPawfzi/y9tbof4reNgNrXV5DCGo7fEXHwmzCHftlmHLJk+ctK6z5bWsvDrXgm2M55L+hXmS9S/AN9Gus2NqHHPf1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVO8+49p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVO8+49p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C20C43399
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706002096;
	bh=bUecMJoOA/FrSu19IXo67AqOr/Ctd30ePRKeDSOu4n4=;
	h=To:Subject:From:Date:From;
	b=QVO8+49pyBPNMc+E2v7gr5peMXFhP8e3v4Y71PQNB4HQoaBxbRobwgO78Gypi2PT6
	 R6QgU053ovodyz7SeEAbmyHCOf4f8O1FetunwgGUQgI3d8b6bHItOqFxm9JhqEjR5J
	 T23bwB6rgwbGoVUXThpNL6SkXy4eeTUkNV6pQS/cHjBb5659hG8gHAeGempfATVmAH
	 NmmQDCSdIqdSyP3AJK4uDUSvRhVNpwRsayL+39R6CDq1Zqrr3emJxrJdcxnqalkAox
	 n9mG5BfGSrjzWSa5leaIYhLWn+Jv8LRA4+pQ4AGU6Vo203o5aXmb8gTzMK23FkQeGn
	 VHFXREqSh6crQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF68C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170600209636.5710.12438834018000038353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2e8b4fb78de13c77e51032fb5bd75ac9775141043aa0531538cafb09a81c04
Date: Tue, 23 Jan 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706002096
