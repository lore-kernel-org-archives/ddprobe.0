Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD9E2E03E4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776763654; cv=none; b=Rn4VDquJNIijzepxXlQ6Iw0lUdqtFlVatBRvnrHIcxqcMYlldPUr+HT1Smhq5usZg23VDlydn1o51YMJHmZiCr/5nkQh57M8bGnfaWhiymd81jotUOsNnnTIlcwZQiVZJEJ97zyHAb2aVBphFXkB1v5mVxHCNNzkQq/M4MnF3F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776763654; c=relaxed/simple;
	bh=KOF6yRcfqjkTd9tuSPnrnpE+sBAJ/SwlCIj3clBjkQI=;
	h=To:Subject:From:Message-Id:Date; b=k5jrF3YmULWGNpEFsFMXrj/saoFdKYCjajg7xi2Lh0GsNqZzmqM8JfAcBLkb0YzdGlLr7YtdjAz6JMZ6AYRb/uL3Bd7yOKWjRw6iTriL/FwdjB8gFaXtzYNayPknkCF5tctbsMbfuliA1x/xFc1P3l6YinfvBK7qLuK3kuSIMII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AykYw6vV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AykYw6vV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7117C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776763653;
	bh=KOF6yRcfqjkTd9tuSPnrnpE+sBAJ/SwlCIj3clBjkQI=;
	h=To:Subject:From:Date:From;
	b=AykYw6vVQObM9Iz4w12Lor0Zkzf623iuo6f/c3lSO+2H2G+jrSNnNeiPwwTQBvsBT
	 sf+wlxNrZ533ty1PmE35murpmWhEV3drHXvE2dlwdMEgBrmDn/8i7LynzF+MA/IDGZ
	 BHpvsVx/OBKVSXTh3A68IECCx268562vHK9m60nb8ZUub1wrefxUo2YPndp14dQNUS
	 RtfbGScXcG6bfP3VyjN+40bcVB9JbnMM0WWZYcHGjzpjkdWr2ww0htMETLhQ/UCXTG
	 DwYZHbYTEz8ZZjYhniUWS31Fx/Bk6GvVW48aSptF65a4eljhV38WGbdl+U/nMMBDGo
	 qakAg/v6sCTLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EEBF327C2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676365368.4235.7204595707544267753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5286884e49c60ae20b60e6eed068cc1e8566274414a4acf6dc5f2292454411a3
Date: Tue, 21 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776763653
