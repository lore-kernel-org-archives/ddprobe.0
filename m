Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3D421883E
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785807034; cv=none; b=L/ThwHrB/fyRA/YDASGldJP3V7dyAz2gAHVjsAuVTOXwZc2RXQ4mpnQhYx0mMVwsdXJmBUWoKuzDKIGydLovS67z9lO62vdIwFitib/g7BTmdmMJs6EIQrGp7OT6WNkpOPHkkRtzyrxMrs8Q/qQIn+yP3xNyNubUs5l7taCDBcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785807034; c=relaxed/simple;
	bh=DmeRsu4SL2viWqE2KqaqYRqnXsw8hfiEfvXkgtMzn8U=;
	h=To:Subject:From:Message-Id:Date; b=RotGePeUXYST84EQ1L+50Z+9+/ctMcJeVPlwgsHqVvhfne4coaM+8cPKHwxvmW5qEau0em6Tn/00lE4nwAZKUuJf5OEIc0DhiRx0+dr7WdbUz5PvBH3Tl318TMz0MDextQP+C5nVSGc0hnIJuRFSrllTqildnk1QHd2CTafBE8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGgHWlY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGgHWlY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7926C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785807033;
	bh=DmeRsu4SL2viWqE2KqaqYRqnXsw8hfiEfvXkgtMzn8U=;
	h=To:Subject:From:Date:From;
	b=nGgHWlY5N6tafZjX6Pjo/304yZ3sSnJj2itmEta9zP2AegKky2ioq3JENNC8uQ14k
	 6Ze2lNP8j1fpKDERuh7aKTJ1bWmvTvCEHWeMpuRjJ6dzKZJPYwNp5RhPiB/JYIZ6Kn
	 doNitO1F2zZ00JygFwQkQPxmr68MkZATFVUI0IGUh7lmr62Iux+RzCX0OUtoW9MRwU
	 3kt+uGJUHcVbNj6Zi0Wc8Cok4OkF8Dt77VfQ7GX4ufKuEVV2qgAiXy1FuXMMECnQxV
	 mqpQrkdDN2uj5ptZodyabFf+9FgooqqzkTKW8VJ52KGpQC8hY9dU8kymXGRDp2xOt1
	 2XvRuTejS1xhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1003C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580703368.7348.5326871305721045157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ba49a2d2d09be2833ca54dc6e8db6416880ed504b925993fe692993a328fc4
Date: Tue, 04 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785807033
