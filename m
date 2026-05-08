Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2262637FF76
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778242654; cv=none; b=jNENZgL+xJoHXt1cen/BLHoGx6FsGH/RxAaeYiQ9rY0Kb3Y6Pe0NytcAVAsPMAoOs49xlfFIbcEP1DLZ1MxsNHUblzFz5ZRa6GtZSpqACGe78pRZwpPv9vlE1q2WAE8epSuVCngIIzm8o0Cv6B5h2YLwvEPbA09+vI9mVvnyJNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778242654; c=relaxed/simple;
	bh=ffX0sxjiyJHBh0782BsnZogf2M+sB6zzSrrkEZZBN/Y=;
	h=To:Subject:From:Message-Id:Date; b=khwFGc2hwmJDGwcb7UgsUOaruqe+AO/fwUMD1ogpSh9n83LI5vUP/YLanRA5OdSCbmPifiuSGnakfb7qVc/UtdmqOnhjMitn4FS8/sXKIQEdEFckgXoSkxN7lFcIfj2NmAYlvViqlUWtpeqTrb4MwHiltEDYJ95ThiI6YsbB3ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+gVLRkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+gVLRkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB42C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778242653;
	bh=ffX0sxjiyJHBh0782BsnZogf2M+sB6zzSrrkEZZBN/Y=;
	h=To:Subject:From:Date:From;
	b=g+gVLRkmjnX55B56YdnLim5Q0eJzLc4oT+KbONpjH8lvnLZJXtp8fuaL8l+RcgP3D
	 HiEKTR09MgNzG3yofYci/oQWi0+wSqnGkuKazCExGsrOUFka2fPLXlhZRjJgkob4fM
	 HUpw4G0n2Vh5uTqg5TwzDR7Fs1MftF+I59tu/oTABoed7sAWEhvRR16v3UrH/6tSI9
	 Zi/XXxW8AM4+NGmiCxRiHlYSRiu7VclAnsCnf9w5GHl9gfC6nezjBONPJ3N3uLKcxl
	 rU0LX875o+7xiR0EyRkyV7HmdrlRyIY5d2CsDrUym966Oq/sYGe5i6azm2B7V0blBw
	 F1WM6eIia6uFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD5CD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824265369.5435.14091971787015837785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e63ac58b6f125fed6aa887ab13f1af6050cc2216f7a6b0aaeb8af3124518de0
Date: Fri, 08 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778242653
