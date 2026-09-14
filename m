Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348A8311968
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789360834; cv=none; b=JZZdRajmczCDnCkEGwPjAMjSV5VlCQaY1XgXmCby4ylXTzfJNpq7f7QAV2y+4c6KGtjtYdzrT8rrRkNMDy93dwV3+Ln6qN3/HNTUFynR/zP6Hkmq/wytjOU6MXqhfqbX/IYm4lHOSd4InYT45vhNaHn0+E0+rstB+JT3tdeb0mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789360834; c=relaxed/simple;
	bh=gSy1a0Sawu/+ue+R8C56Tv+DB+4P0vvqdDRWUeOZYWs=;
	h=To:Subject:From:Message-Id:Date; b=fFl4pKH7To5TfZHo504WSMwja0u+X1hpRLoNXNlolLDw5mmWmWYAVFJv++1wNI1+72HpJ8AfPSI7ThmncOcp0V9Bvg0XSdbblukWKZnCn/NLjlyftqWisqG0DuZagCyxNoSrvOSLO70WV5DxzNKEpcZf3x/dTItJoFQzWQKYFTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxH9az2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxH9az2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4AEC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789360833;
	bh=gSy1a0Sawu/+ue+R8C56Tv+DB+4P0vvqdDRWUeOZYWs=;
	h=To:Subject:From:Date:From;
	b=CxH9az2ydk931f+XD0Zcr9gaEeuhn8S/2yco9Q03adXmArHqxVZzbp9W86lekRw7Z
	 eXsBcpvCAVJJlJjtMfKi+pn4RSixkjZaATrlnR/SJGNvXmvgdwYAOKPGQ3XdfEX2qb
	 DsbD//g/nPu9CFyEZpby7xb7cXnb0sOUos9i8p72Bf+Jmk0pLzhs8T9UkTdYCtlFBz
	 pU/VgNpd9jux5QkTXnb3pQlw/8Au/dlSVfEm31UDKRAw0EAs+sMGU/vFHnwUh1ZOH0
	 /d7BrN46lI6m4A2jC1B7CfEDLsYRLnkYxVy9QihL/gSv260e1zjFPJujig9NvsWvFp
	 9bfV91WXUBsjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA2C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936083369.19551.10788374877276838998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931c7605b9283bacd97090dafbf526f5505f4318177f18297b3b6d317bc1686e
Date: Mon, 14 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789360833
