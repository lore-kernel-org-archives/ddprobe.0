Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4D1289E36
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757146194; cv=none; b=CQGebkFZmGc1zsbUrL8KWBxcSXjdHIVQ45q7gQs0G+dx3aupe3jnT0um/Sl8xjqj79db9YoCEDIL/1BIig/X7okAag3flxfOFLjGM13lBHB9t6QfYDPtT1Sdf+xNxERhxZjlBk7I6cNTDZ6+FzPSxmJCSfqLrkeBMGwacfcDz1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757146194; c=relaxed/simple;
	bh=gIG98r6SZGhd+4Ob0p9ukHdM4iZBN6lM1JU6Q58uLys=;
	h=To:Subject:From:Message-Id:Date; b=GPfyT8TkGuMuR/Q1Y0xS8eX6MLDeLXp+bxHcxqnaJnE4qay5goHX3VuGJ1yTjjh3wwPvoueVpyDoXLG7hr1rnkF0mHOmDDsQO1tbFk4PzAioGCKSYoRyGFpfqOFcHZCJxyU33xreC8Qoc3NTxHIPzSCPpuT+GHt3XkJ+JU0GgwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4v5SQcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4v5SQcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757146193;
	bh=gIG98r6SZGhd+4Ob0p9ukHdM4iZBN6lM1JU6Q58uLys=;
	h=To:Subject:From:Date:From;
	b=E4v5SQcZpQtIsZkP+flUI5FyyCsGrYvEm08Wba2MgrwBF36K7ePCOEmoy1qYc4mGM
	 sZGSRHbZoSi9Zz4kAURuyQ9A7LS/UiFEB9vTfmyts4NzpJMa/HiQIXG3IgycXyQcz4
	 zguTPsu9nk337nyoxoRWpgn6jJVjIdyVeoey56PsoHJ8dRA9NUAvdimca19Mswdfqj
	 LftWCY/Dl8de1oClNxT158jqhtlsdvxtGPtZSdQ20PMjTQop/oKsmAswSTcMDN76F1
	 GLlPaeFSpzzMsH31ODVGi9WHl2NNAhOuaJjn9f8DsKwhY5bN6gH+x7SxvJYGg8GRER
	 UpXebETeq12OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD12CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714619358.1061.4020603367035800204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb00501265033717d14d74f598ab2743ba3939a94237e306b5db88b9ebac6c2
Date: Sat, 06 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757146193
