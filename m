Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC25242925
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776186454; cv=none; b=FPxAaFuyaYzMFQRXGzkJ9rtDHpp+5KGI49oqDgOEi4o9UnFlqpugP+1OkxOyHpsBb0zFvrblC4aVA2pVfJ1cmnmC8s63bvEQnVNfKmX+fFJ7edTj9U9mo/XW5yUtuEz6YyTYKprnoF+kc6+jQFO5UReMNRg9GFKVzGSCwcVYLJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776186454; c=relaxed/simple;
	bh=0TuQaA80Qrj60+EtfzeeuiYEjpAWwB1nwCoFKVyiIr4=;
	h=To:Subject:From:Message-Id:Date; b=Xf8A55fhFJrjeNVYKBAFSsMoZaUUNZH375aaZEjoFScREuyi4a9atnRalgJUwT/rTxINAoGsL7vTxmNurg2Puo/MXOfm9FcvHgl348j68uF0V6fVB9kDbI6uUdvmccUn21taQwaKgnXWGY9+8iyb943efQDLLi+7VfVoytVBhlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og3orteT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og3orteT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB81DC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776186453;
	bh=0TuQaA80Qrj60+EtfzeeuiYEjpAWwB1nwCoFKVyiIr4=;
	h=To:Subject:From:Date:From;
	b=Og3orteTlI9DpPNEegzORTSygsEeXUli/rFOrWDB5RqHzpRSCl5OPNRJeefU8EGTZ
	 YfuxasMl78hREYhNFIA1S8FXT042SbJdb1sRtvF9Eza6o0EvEfdwMHOxr5TZVoDhdC
	 ktAN6Ww6q5YuqIzi3BdBFxOmB/Cxh5RE5XUmNm7K/uazxTglfJ2A9C4SyspLCSpHFe
	 TucTv2MVPg5sMw0VTTe1Y7aNlX1HHEzt1WB940q1Fa3sWmVeuovDK7MyZv9lhEUEQc
	 ow0YnqDT+xBO0JdoarNHxUmYGhDBVpHeWM8lcV5B/xCYK38OE5UNpdCQ1URqgZxpaq
	 2EGapOWNLemig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E64F9D0E9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618645368.19667.16045895106043214284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6c376d821ce97a348780b3f17c11bc7c0e7a3dd705eb0e7c36886e6a2f2253
Date: Tue, 14 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776186453
