Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467391C2D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722075354; cv=none; b=kHtWsU5+8kf3CRvun0WC2T/aNVo8zOsaAROovMhwsg+LnK0yXkNOdXH5vRJqFMTBSZD0/vgL/NYMg5xcbNRPZwwoyY/JG9CQFtzEc7D5m+1i63HnnodZ2lHxm2CnUrifg9ulSGjjJvAM1S2rqeFZ1w0fVtoODKJAbL8QfzeV+nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722075354; c=relaxed/simple;
	bh=3AEhxhScpihcnh/koBmP6Pwllxo1+DVETi583lWzoCA=;
	h=To:Subject:From:Message-Id:Date; b=jwklpz2APCEdS7ZrWh3WuDlrZzxJkjgUicYyIqSBiCyvGnX/P4hirWqkeWrQCpaLGZsqTCOg6G39L8nR44k69ueDJ3f+sUl+2kd1RflHFtVUAfCRVv8sBeyJpUJbuW6fMfUI/sfCN5/lTfGN6dR0s3UusYiT1CLDEljO1bXI+ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl/lav7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl/lav7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA30CC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722075353;
	bh=3AEhxhScpihcnh/koBmP6Pwllxo1+DVETi583lWzoCA=;
	h=To:Subject:From:Date:From;
	b=gl/lav7AytqM+YU0X6WAvSS6Uh5WpqsOfOrsxPXIj3cnYkhn89CU7J2iRjqqiBZ/j
	 5agDQKC/KACmnJjx0dF+cygIto1zLS588799zUy0sp5a6bDNpP+sJdKxg5t0HtNfs2
	 FRPV3lM8R0r9TAMtUoxovpZNxrgLbuEU2n/DTwpBEsGPLUY8QL2H2grvp7akU12vkr
	 qbl+INkGEgSlZpKq0mERIBV2d/gv+deusTr35FaUX0Q8LvMEDJ/TdB/WLYEOxnAdcX
	 3kqmxML7BRA7BRLpWxk8CkjUYtproiqJc578q1m4NLEhuYXRqkS8RjSvMLSNKI3kqJ
	 bqBbKdvvM2zlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F7C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207535362.9614.9675784965661061515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef4d8c5ca87466a4756fb9e716c626d1d7236a89208ade33749ce9e9cb75d56
Date: Sat, 27 Jul 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722075353
