Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F9A8633A
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742757594; cv=none; b=Cv/j/2rMVstghNMK5OQaCts/gFBo5W3rrOcjMZP6EJYP2utWXCcqcwCWuBFO6OlXf23oBP16Y7Ih9SqQRNJbrwfwirdenxe7/p8vrdHCvyAdMBEOH5OXzlRmXS+0dDbkEWsA8lyJsqHr/72vp3CB6Pw85U/2vFR5bjySoZPi8tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742757594; c=relaxed/simple;
	bh=xcSWwxAOpFFhpN4lONL+cWKUnwhraX9pjASLeThh218=;
	h=To:Subject:From:Message-Id:Date; b=FfeffCjQ+R5KdGt7p2pPdu/bzwP+5XI3Zr67tczM4XSN43vhVcA0l6R2SJoD+jK/QC/p+IixhTcCLEIKuzoPfP8GV8b5OXT3E+emNCecI9KOzTNJ02GOo8NtxchL3AJVK9UfmrLaJ8TGT/MoIgKMmF6fPPd35VPZNZ8Szhmt4AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npZyW8Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npZyW8Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB10DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742757593;
	bh=xcSWwxAOpFFhpN4lONL+cWKUnwhraX9pjASLeThh218=;
	h=To:Subject:From:Date:From;
	b=npZyW8AoUgXy1QURT92JSpiMIuw2WePv/8NaV/sXuenGdXTRaYo4ZKT4jE9XwDaeI
	 ImyMFKxdUqO5iVrcMuY9X+QALbNJXSZR2nOQOy3upPv7RNswH7B7FMpRIk5LVTnZyT
	 xVl+1nXkAuktEQ4WUnyZOk5US31r8B9+qjt6Ho0MTVSFoBVlnweGhjK7Hb3C7iaSE1
	 0/WyMSP1W693LEzFua5HD7JEK9vOpU1LyBS0mj+7oD0cvNf2vj20B+ZU7+Ur1SmX8A
	 NSzh/zZ+fgpaRpPrlqfZnmIbbaeWeo0w8UIW4CMVWMXQDTEN/j9KVXGoHpEdVml75E
	 G+pJ6nLn34/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525EC36008
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275759359.32034.541918059602263593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c560d2954fe65f3ae042b0b5534fab773482e2ebca12197e85011800497c45fb
Date: Sun, 23 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742757593
