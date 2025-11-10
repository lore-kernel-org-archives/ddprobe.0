Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B08256D
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762736394; cv=none; b=Ci5jxcdd6aoBGswvuVofgmbA2cJKsT3igEx3RGWNy0p6RhCbG18ZWPFjAtTmC5ef/nhccBa3x6x3P1KeIBd1g4XkByCmZi1h9ugZiAHS/WNfHaWh3Y5prYRLSIcvcSBkqjzYfq6exqNcNEO/BpMXZYzYOE6yyCtfJCv8j+KmI1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762736394; c=relaxed/simple;
	bh=TAke8OKn30cHfPrqGY2J/wimqPnWMHxrRVNXgIjX45Y=;
	h=To:Subject:From:Message-Id:Date; b=c8/VYFOZLMwXhfJ8P5yqQnaoJt/31TQE6sb7l4QjUasY/4os0iAc4p2htrms2GBVNuwKlO5clV17joVQoX9U4MPAsLe+48lurEGcS8foDBk7OBKV2keAFouFrFlEU2r8aLsBzViytrD3X2IL3pguVxYD1MvNKKWu465Lgxlxt2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkillvGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkillvGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2BDC4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762736393;
	bh=TAke8OKn30cHfPrqGY2J/wimqPnWMHxrRVNXgIjX45Y=;
	h=To:Subject:From:Date:From;
	b=ZkillvGtqRffzl69FN0JZXIdLVDF4S2tEfOpxs2V4s9436TA7q0rAhjWan72vd5fK
	 SzyxXkfzRY0qu3+4nQm4ssqA50zDpcj76D2MgTbW2bgoPEsMUCLJtK9EPTmqCxAuHa
	 v0NG8leWuBObkA7GsLGk748OewEfNObRHbqHMLgRhAmxlf1IgyE+XyFv2fUuT1BXRL
	 3xZvaVbJNEIZQqGESk7Uy0yi0l4ZRONwwdcSU2WlDzcCVFINij4hdgP8WY43gtP3Ag
	 CqrxBGZ/pXdCZRoxnxg7N/dygfbYiZKRpJ5UCTMPsQWwGbLrF7ZVPezguw+FqnLHX5
	 ut1pHn7K4nDfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A3CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273639358.12361.17706860798504887570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced424a987981a6d7ba4db1fcbc283d193fd499c6c920d09b4fb96ee9361b07a
Date: Mon, 10 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762736393
