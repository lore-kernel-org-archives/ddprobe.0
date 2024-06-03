Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AB3B67D
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717409723; cv=none; b=dkp8h50DvyaH1YmHDtealxux0KeTG90xOthtUdzw00XWJeiswUUlHPpkWuBmdBaIN7SitoekIoRmbXFOR1Ef+W/Ssb07oEiEqSJeqEn/1sP4TbNMHerroqxZmDkvgOIYgGTX3qzDjoGSuPP2+aC3UXW24mZ2RC2Gw61Kr0Hwa7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717409723; c=relaxed/simple;
	bh=5vJs2WsjNvV4DZgHo45lvFBbiTJKrGGZstlLJwpm7hI=;
	h=To:Subject:From:Message-Id:Date; b=jInl0oGsUw/+wxAGR2E8ksldL6CTSCb4pznYvDaG6v8ba6I+owJ7nGnzO5Z7+aG9JOR84BU3nbCxELgRXSafWmjxdS2BI2dv6IT4HYOkqGXlIX3tsTxLXkvsmhYEE3tFIuqxwqPTwEC9wFnifBeli0ishgtEgW+1ItNVbpkYmrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAunf92F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAunf92F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4FEC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717409722;
	bh=5vJs2WsjNvV4DZgHo45lvFBbiTJKrGGZstlLJwpm7hI=;
	h=To:Subject:From:Date:From;
	b=vAunf92FWMrD21YZY8vCcmrkX8hI+s+PDoYCCGggZBnCDD377Lpfnyed3JOzAhoAu
	 QfSqAmzi4yZJdavRh9Sls9xdMF3FVpSTBN407ASggGmf/bhLDwzFfmO+bzxNi36iTh
	 b51dKTuTClgOFXpNmNEe8oTYApHWl+dtjgQZcKK+qIxIKBWgBuA2DLk+0RTp6Tm3+M
	 gzgJFLOErbCxoQsGyUXnbbp8SpAtnZZ9LPQH+g0u2pcBa6d6p6cgnKdIrTLW7YTdjy
	 35owKXKPJu3jZNPAVRtQhnzTmarg+2KqXeooA8iCOkiglxWyouIwvDlRXp7vuiF5/m
	 TWBRasIU2DAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE70C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740972278.32304.11235200612804069951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d42c21739d15585847cc9d118f2a6508cc6cd6422463b6f01d490398cc73a3
Date: Mon, 03 Jun 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717409722
