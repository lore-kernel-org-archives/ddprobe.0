Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CDD19E98B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748866194; cv=none; b=XSPzHKXpyy7vqRVSsztjZkpXPrG3QYpPSHqdu1W9FYw91uEQz1rRDvO9n83w0y/D4VGgJ5eBliz8dCDd7A7zc/PHbVwdwWwuL3clMAuvfRTfXN1+To9tpQi11sCsAdtMia9ZSXTtg7tEtkEfFObZd6oRVRLBRhQ0s/8GM4DMcpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748866194; c=relaxed/simple;
	bh=2R8kUzI+00SZYD3SDKQULpcpbjEU/vRnWlz1LSgidfg=;
	h=To:Subject:From:Message-Id:Date; b=M/6FmADkLfZus6qBXQwOQ/3/qT3ObYzgAaPMCz0GpuoxYbsYa0Kx4ualznUanX7Yp+r76kBZrVeSUXlsptdvLVcWoVjq1YSTWkbNdim2OGkAprFCcyUKLa+pFDELQ/OM4pBUeAmodHYHlBjNQU/ePkuUcvWkScBjmdDxwGMTZIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6cL3i3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6cL3i3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D314C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748866193;
	bh=2R8kUzI+00SZYD3SDKQULpcpbjEU/vRnWlz1LSgidfg=;
	h=To:Subject:From:Date:From;
	b=I6cL3i3EcURCGg5iQ10quFv9NK39vnVe0ueVj9+thXqswB8OxGohfDmI2gBoGI9He
	 uaSs8CU3BYr27hFHotf5uYW2zlnHmf2NEdHrN0I4Wac7ORTWN+7Qfc2cLyru3eTnfP
	 JMuvZggb0SEbnNj9TdF0eFjzj0SRo+sXBVXTJDiyy87ErLKFV7diotiP0rRf2aOPpG
	 hfw70J474KPj5XsTb/AQ0lWjPBlNyxv1lgIr7DiE+3PSRiuPatycZPR38CeokfN3Nw
	 pjdJNfIeEBaYjfejP7vYQDmOb2DyAnqmIF2JahqqWueGdZc1Jo+SRxX0vU2WM5o68s
	 NvI+KHgIeQOJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F770C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886619357.12672.16978346100248917933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb56e5d613865adc68a93ebecc6cfc10b6bdf5619393a70f61049da29ce986f
Date: Mon, 02 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748866193
