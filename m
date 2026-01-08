Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4C332692C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893034; cv=none; b=PNf8wuGo0Dw5dr006DN8hjObShZJlPotN4q7h6WF0QdaonuSI3PHB8o+vMvATnSY78dw5NWNtCW8LbLwHmSs61GsslcMOGqlB3S5lVldduuVdxhPGEad/IQ+1crwzxwSr9ScJmwbp6jJoaIxvo43i69HYGgMOUXifsA5HhU59yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893034; c=relaxed/simple;
	bh=4muEzz1rbOn3h6rFec/6/fMRs1LaPZNFWkBuryd4dwQ=;
	h=To:Subject:From:Message-Id:Date; b=UpcrBMrg4xuAsRNirHEwEMavgcDD/f0LH/fZtg1kHljZpxJLKcnf8DxjSNsmB7m/y4bKdaHP12D2p99g1VqdIqEqnc3ZoV5KScM/tKiT+0dEYAPwpn7PuEfGTQnTfPGuW8U/zE8jj6FSEcw8OZPBFOb0rh4czrJroZkcz7yhWHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/haqK91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/haqK91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCBFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767893033;
	bh=4muEzz1rbOn3h6rFec/6/fMRs1LaPZNFWkBuryd4dwQ=;
	h=To:Subject:From:Date:From;
	b=L/haqK917N24WejZvchareo82jqmxoFGt+ph036EymEqYoNzijvBx4G5f1urSBEsN
	 MJyqkjSgVZAxYIerEhc8duZA1uWGP1yQfKgS4jgJmXOWb2katgHFR4HPhfjeNdt2J4
	 pQRx4oYPNtH/vYBq2MxXFfaLUMMo1IA++99mm0jqPXDyjyCPa43pG9j018s5pUNgAz
	 SeRcdbSMY6oquX5mF4Dl4nrW/Z9z6k9Fimt9HsnZKwrDCfjCHoNnFPB7rHjnZuFNhS
	 E4StLfv9O3v5ph4i3HSjFn3dUD9cfHnee5OVjBUHhdicvx7DtSrf7MuAklVai/cat5
	 Xoub+fMxY1L3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F320D1D480
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789303357.29394.1467624092206949739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af529958c1af028ef7b009c5bc524edcc5198f8e5667fcc1ff592a332b44d73
Date: Thu, 08 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767893033
