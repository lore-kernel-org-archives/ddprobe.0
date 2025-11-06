Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05428156F20
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762449594; cv=none; b=PPx5MfP3Fm/467u/xZJYl5GBDgjHGr09UooWkhXka3tK+sTfcIpFcmX5fGdFnsKqbxeSkz3IYMBikwJ66CmDxsme9VCoLFRxf0nsQMEv1VSViLX/dNBFkN337zTVFVUglpopEML/Xqa41CTEJpVvpwSM+Ntu0RLAe3k2JCL4Yag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762449594; c=relaxed/simple;
	bh=YVzD/ObGEvFFAa6axmlr5eNw/fgM6bgWPnO0FPaybJM=;
	h=To:Subject:From:Message-Id:Date; b=b8PgEp7NhH8XeSnnGBT03aVCtMv7QqVNRlX0haYIehn6RqG/2lZ+pSyP/mcA3pg09ZDtGg0Jl81h1Sb4y6CQyrFBifhwPYumvuc5lKW8AU584CrJDwQXAB+sS58Jyw9LILRqFMyqT3GK44xg7ShIXw9K5c6raVbjdcAwun4S0js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdNPXyUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdNPXyUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08FCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762449593;
	bh=YVzD/ObGEvFFAa6axmlr5eNw/fgM6bgWPnO0FPaybJM=;
	h=To:Subject:From:Date:From;
	b=NdNPXyUtWuahtz4LLR4L19g6vJ+e3VhfNbBz1jd71j1qGZPNGfG83c5eOM6yKwYCn
	 MAvnCxvenMaOX5exzs8ma6ugPP00pnhmmD8ssjb4Le8iLNhH9RGme2BW3ItwMXWLki
	 utSGDgJIkbUGBzQdjGooXi7/k12QUsCG6iSBU4LaHOdk4rue4ghLfu5oP/ZrQvCinD
	 wpXRn5qkYYShjH/0yJwh/s4PRF/UQcYQN/9g54auns678JNyx8FcmwtpRPwzXHBzBC
	 kL72kHmaBFq+YuAYb4lR6fOR+JJZClckcucE5d0BuiOHJX17qAmF+s7J8c1tX7VzWD
	 KRhE/X6U4k4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91714CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244959358.29676.10479002995362910477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e17a292e315135d2b79415664355b1137fabad10d9d46bc08d9c4185545f974
Date: Thu, 06 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762449593
