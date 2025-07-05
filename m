Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155BFF9C0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751678994; cv=none; b=XtTf++UhW46wRPtpwpIzzgjuKlISbgNZlIchFLrjb6GQdmH92ARsaCgqkZzRRZaLyMCWnVIdmFOCZXDqNtFT5eX/Mu0xnTlLve++59nrPC9OD45iDmon47dCHC0bd0hjpkS59Ak8tNtYaAMZ5NYSWgYdY3N5T2Olc82bJfsoJns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751678994; c=relaxed/simple;
	bh=6Qu2R+2NcZbXX4Sg3TSu8bpUNdS72XtVsGPvajF4R3g=;
	h=To:Subject:From:Message-Id:Date; b=SQ9vjzCLUx9j45m74ydjQyuUw+oZKDyJqrFaVDc9uvixA5D9u/3eQbTh6ItEdUe+wTaoPvVq37UP2C4SavJh6R0Ebg21ip7SymlNQXSft7W7Fmt5JHv0J+R0f2Vt3nin5sbxqMQMdNvZHjxLqeUXWlRQgAODLudKkQbCdDcMPqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j98GRnmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j98GRnmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751678993;
	bh=6Qu2R+2NcZbXX4Sg3TSu8bpUNdS72XtVsGPvajF4R3g=;
	h=To:Subject:From:Date:From;
	b=j98GRnmHXafeW6/J7hI7zwdL5Ta0B/mXsLqcVCcUyV6Gi3Si6kuie5ebBBLweMcqo
	 Jf0FJbJJdZxAZQ5kM21OXy2+I8bK5BWmUghatlqVbuGZV4tfV+C8jpgtc7WUwk01tV
	 ERV0t4SsyYxnz4N9dqo8cmyR6V2TjvhYNIcQiGOPWbERxIlf9bqA5k4cBt3MxCXrIY
	 aQND6dgBnQghq0Ht+MjGirU0jX5LTEZvPO5ld3KRsqUMhu+t2iq3nWX+kQSiVZTppv
	 50BAulFc1TFC0gJUfwenpuYOunPTOvlUzyrDZrBVMs7RYoRZefAyUPp0n7qeLDvvot
	 Xc8Ujp9XKEcEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB96C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167899357.32108.12147503018947255807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238a2623ec4c289d0f3cbef5c55056d9694358b928884494ddd5f7f41774b595
Date: Sat, 05 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751678993
