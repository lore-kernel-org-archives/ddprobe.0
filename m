Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C4F2D8766
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768339434; cv=none; b=H1Fbmtq5bienuA6VSIPTHxSlM5lahxeA72jeHduPrTILNOMs8QsXLapc/JSVkAeuM3RV2I8uXRjec/hAvHhO5/uw37DNWq6FwDvqkORrXEkIsGS0Jw9Niy4aSQcffpisJkhf4vSu3VgFnF5QHUVpwEhWBmv0sjf1A3/ldVyL0zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768339434; c=relaxed/simple;
	bh=SXYcXPVHHVRU06fcEy1vINhC1tTjWYdD788OjJQEaLA=;
	h=To:Subject:From:Message-Id:Date; b=TBOIVLh1gbNPZuRnJvuubmBSoHjmZHcsNZzDF8+qLmMhpuzQV3EL4NeJAsRTCDA0ocCJHsrpdAou2KIJdzOnBHvoZmKFt8tVbS1pqaFbPvOLCo2tAcX8ZKA5fvm+v9U9sL4k+r61mAnKP6UKQSh+fZXnSFUmDBHHYkhyYyiM42w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpSBqkg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpSBqkg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C18C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768339433;
	bh=SXYcXPVHHVRU06fcEy1vINhC1tTjWYdD788OjJQEaLA=;
	h=To:Subject:From:Date:From;
	b=cpSBqkg0GhKplfPKlLEcvxMwTEESalNOL98yaRHWoPkX/sYaM62cXacYUOmUaR0cF
	 ol1DO/6Ylo7h/L5UWyxJLco4b9aAw+wCDpGyoWeGXYkEjKTfM8e91wtZIcLL39YkHr
	 tIxHMuAh9iSHTvAIygsqPLeKyuVsyZcE2R0atHDxw51n9DfqOvWSK4/1g/Y5lPcmyb
	 YLQldgj+qvGsSHJGrAYvdktiiNGMQ1SJ5i4wpQtMsorxTxV8Ly9+nwJTDeG1Y7H9aD
	 DfDcfvomEWicrNCoqx9bz5ilLl8LKJuqSmTEnoIIrDHD9CqwoDGIdIL6BAOJ4T1LJE
	 /6qaBbxN6VAqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C8D30CC1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833943358.31251.16754488856678761586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ece481bcc76ac07ac8c97d794759b134afd5ff3ec7224b83ce37169ceb936b9
Date: Tue, 13 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768339433
