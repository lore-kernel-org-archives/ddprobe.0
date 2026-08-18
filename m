Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC873815E3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787097034; cv=none; b=Qu+hsjabpUd7Pt5Kqjr45O3xVZ3TVr4OFgnAHPd5UwpAps1o5IqPJT58+NzURMDlvIh3NAdYiEfvBKXTB17tqUpYagkdkOmlamzSY/RSwTLaysvcJwwk3mJ/6wjv+XXUC1LyJvwsVfSTsVzPr/chieIjDr2wVPsTtugWgCUMuok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787097034; c=relaxed/simple;
	bh=0U7aCIdLdZpX62ovXb7jI9OPDOuEeLsMqfi7FLzHLfs=;
	h=To:Subject:From:Message-Id:Date; b=HncjEMPi5p2EE9uGXG6iKIDikAbXEzsPPkbwjdcWBZLXo2brWj2DpuciMVoAFiGqSZL+JVaFmyTJ7qj7Gkd1FH2D48tjPIrx51xYS2DYfulHke5b9gvjtNubNlOiDyQXfY+Zmm4vQFKvlG/wbh9EtnkCR2oiJQm3MUkumX3MJVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZtbw6JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZtbw6JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E93C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787097033;
	bh=0U7aCIdLdZpX62ovXb7jI9OPDOuEeLsMqfi7FLzHLfs=;
	h=To:Subject:From:Date:From;
	b=jZtbw6JFtayRXW+oVVF+a8ybxmHtwBT/RZwq9c055BfMGaJIzkjtdSsCv/p2gqseO
	 ZkBCxYXVOZOawqTSzaUwlyfN5vz2i5SbyjsSbqe0BKkLyJltyT2AN1IVFeYSllrY1t
	 j9hdvVkvOSJkKimr4DFpa21qBqSbiXWPEXncrKPV+y6sqPpO6pJQgrnoa7cKpAGrWD
	 /r2UC1JT+8aKdYuRlQPjQQ95K3wkrkQi646vY7KWdFOV4uhdE5iGWIS5nrDrTtD/Dn
	 0/Gd6zD7Q6zuW68BBwU+w6sPGOhRQWDymLfZAFDeHl0VWznPhmtjcylNLvhr/NYld4
	 QaRc6v9f3ypmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F7C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709703369.17497.3272062108839027747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7aa511a84f66b990839122962854312f560178602ea30aadf7d9598b84c206
Date: Tue, 18 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787097033
