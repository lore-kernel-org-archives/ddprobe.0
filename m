Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C07422616
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 11:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714044083; cv=none; b=ZYp50aoEUgEN7YkHPoicjldjzEAVY37pVCkp1lHmYR8qXuEUeo0iIaZgr+tfrpsw3lVi/lKMHvLBeyakJ5FhRsYACaA+C2YBVm/IskQFFwflo0Ox6N9YfXHY1o/lLIP0j79CaCXlJvlegi7YcG3tM2s7yPPm31/F3Y1qNn1fFOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714044083; c=relaxed/simple;
	bh=StnuYdQkrBYO9igKE65dA1kwdjMoto2cVsSOb8Aix/Q=;
	h=To:Subject:From:Message-Id:Date; b=SVL0GhKE3KtyxlIavQO9Yw/uCrsBkFvD3Vhwx1M3YzKJ85K9TegXUA/x05p1D4t7945iqyELl7X15riVvrVqZtRSHfopRJ8lpU2gGb7pAebIeDHfA4ui9OYSvXW0E3WJ5r7ZikZNtxFfET6uve5LGzBj2JcVBYVylzUWWivBZUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIBB4PCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIBB4PCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FEAC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 11:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714044082;
	bh=StnuYdQkrBYO9igKE65dA1kwdjMoto2cVsSOb8Aix/Q=;
	h=To:Subject:From:Date:From;
	b=GIBB4PCghIUGEVnVKbiR3/eiAa5c9kUPZkPoyA8SKL/2yWaOELiSvgO6Hpqms2t3A
	 soyjLvWlJEiTs8oQBJTGB2tWvp6IlB27EAlHKfU740n567C9Q4TaQhVtyIGw+BIm7c
	 r58E2hTg1lRf91I1eiOepEvwTiMjmmDsyYgAKzOrupeIHH/RQZontzLZCBoRaX1gQp
	 NElFOw3Xeat3nhkK3Rb1piehgngXGU0n7EK3B6Mko4daW79MDRJhWdbJzavRR7g3iE
	 vlTuSYwj9HHXqbd9emJWRKX89fDxgOqYSMzLkEZOb4eM5m+wgzVHAjeDl++rXdkExl
	 ixytzTwkd4iLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2805C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 11:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404408278.3485.2853165380080369631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ae88e84a806315f1da199851529b389586486762fca57374f5384e6679f489
Date: Thu, 25 Apr 2024 11:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714044082
