Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E45039768D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791424834; cv=none; b=Pr7X6NbNjbD6hTGqIQNfzzOXK3ajgFWn0EOH08wIF7CXb0Jtn8oHBLa8RORh9wpQ+AdmwdhKZMn2ny97tVaIqgc5VOWmWWR62s4b2ZLnr0zXwU2cQ0xB+5piQ4APBwebjod3ASDpC1fGxlBc9VJSLsAVpzjUZmH5zbII0/qzIiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791424834; c=relaxed/simple;
	bh=eDv064LZoxTYD8p9FucxOg7YQGXfEkELoaXIEQsdv/Y=;
	h=To:Subject:From:Message-Id:Date; b=Y+R/UzMJ5EtyZI3rjoE9OObo3l6Cy2dYcqD+dWv63+3mT04A6C1ex/BaBTkxE+VTYIJgZuzTsjFDIzmK3/nihUUkV6T/coEAkAYHqqySOMD3B7T42aQTaadg8//ceRRXVkRw3E8ILo4Tbqh0TMDBvuDnWHmlm0+Shlkop4ZcJaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0GQILiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0GQILiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0507C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791424833;
	bh=eDv064LZoxTYD8p9FucxOg7YQGXfEkELoaXIEQsdv/Y=;
	h=To:Subject:From:Date:From;
	b=S0GQILiTFeC9+5AiExV62XeDT1Q2M4yezKxfinKylOcbkucCi4Is0dTUizUfUc3dU
	 V5BY+2+72Ana3SlsmXT0j28Atc4LD0EtN/5BlStQM8CphUWzOl0AqtSASAYe8HreyY
	 vDEn+CC+SlWnsogYp4kti9CZRCJnNmcLH/YyoxDJQwytZ82cluXXIIdYoxZsA/faSo
	 ig4IUcsveFAkG4nW2cbZulz29EjEdPUud4h53pkCqAD/3HPsEPwcdwjmuePBzhTVWa
	 B4IMwu8J0X0z448Ytrm/m5KylkkBCrPx0t9MDK/B6sZ2v4qomEgZRiv5aN4WcMUbYB
	 3v3QsqcpMZzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5EECA6004
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142483368.14928.7394506528455028945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead5c0c86ea93b62e4f8b5a34ae791500b2aa5ac11e61f12d55ae2ed2ba6023d
Date: Thu, 08 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791424833
