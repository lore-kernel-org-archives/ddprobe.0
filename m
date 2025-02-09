Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFED4339A8
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739095554; cv=none; b=NZpPAYGlfi8HHXi+d8tpReIexVv5elPcC+KlEGbQPmO7HmA9KLKy4SsTy5Ids/5mMMjri1pPU//2EB4xRHeMpzU/L+s9quOEZ9SwIzMBCC0+FGYGNPkyP9hBV0re274ZevAisqMr2VFN/JsFzh71U7eK3bN+tqTctAuxfHpU5Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739095554; c=relaxed/simple;
	bh=n69w9VzVMyOo/GD2aukvMTaY4qb1tbRO76hM5QdfowQ=;
	h=To:Subject:From:Message-Id:Date; b=ooapeKLwJdn9gpMx3klLemkrLHLGmgr4LGaENBYpm6mpC7Oxp2GIIrpUVdxtJrMRVcdx8q0Koj0P+cnWlx2TcEoz/cm2BwatGVles5yDclkQ8fjZP7py9NFz67fOQvd8/LRf3fmQSs9QJLJMI7SIwF0cqPz9c1bnp1cGsyvbsfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQhYigok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQhYigok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFF2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739095553;
	bh=n69w9VzVMyOo/GD2aukvMTaY4qb1tbRO76hM5QdfowQ=;
	h=To:Subject:From:Date:From;
	b=QQhYigokrj1fKdqbNDApSZP5nhU8r38jyzFIxU9JbOY8f4u85DUA+NLJlo+6vj1iN
	 R9ks9XQ8tDGGUOAhAZgIyPPf98DsBwnyv5J6CamtY42sWQ3nr7HVs4XbXIjr27uMEz
	 0rNvPUs4A7XwUwHhkQbzDd/QHTa6YyGlcQ8h3q3MCtazihDLOeag7if/MAgANRZeKJ
	 X08xOMfZ3py7dXROJpRNLK6q5EwvLp5TpsgY8rGtaHW+1OQB3kE0p735TPDEXlh5KM
	 1BJPZ8tU0D1rtTWDwgwUETfILzlyVCYFFuAg5SSsjy7sMtmd4Dr0GhfesGgxP+NgKX
	 w/BsrFXVu8TKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C66C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909555368.5186.6270656721549385099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d480861a607bce4999958780513f70089606e141693e2ef6af0f6a3438c8db3e
Date: Sun, 09 Feb 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739095553
