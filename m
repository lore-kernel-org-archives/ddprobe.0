Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360AF2E7F39
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790036434; cv=none; b=VaEV13057+9vA/KcXhOz3XBcmxGg+xB+DeIp/TJmPsDTbonTqAiCEnm8Tk4HpkLFo5uQ1Pnkbh3xX0gJq+rLyzini0KE/0irg75KoZouIcBcSFjBA/mqnmrQOs+8aYV2BblfunTrgvv3ThIGpn67qTCBIk+cZnZmQxPxiYAe7KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790036434; c=relaxed/simple;
	bh=JqD+Lze51n1ehR0pnqOLyfw5DA2k1Oqy7XcHizJwXCA=;
	h=To:Subject:From:Message-Id:Date; b=mfCEwVxvkZ2paBW5rlb6TlHoNYVmeDl8+65ZvDKvjkm3l0HVEatq66vzMEQumP8zjX+HcZoaU1qdEP/A1zXkquf096Mtud0ZjqJU/GVXpE1ljB/Zu3rK/Yr2p4e07avBhLsXw65UicJYVSeRcmPvWaiqR9CRuTbFdJBlPVfYdr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HntocskY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HntocskY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23D9C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790036433;
	bh=JqD+Lze51n1ehR0pnqOLyfw5DA2k1Oqy7XcHizJwXCA=;
	h=To:Subject:From:Date:From;
	b=HntocskYHFqHrljn2sb3aUqMobEJKqXYUyiDgQv5HmUOXlvZ1jJB5JWj2ZgICJ6S7
	 Zim4O/U2lmpcrviNYezbKJCAEo1bYb5dCcbb6op4gN7fkImXtGMUryAyQu5juAXjmv
	 KIBahWApYK8/uVBMJEKxKvSRDjZQirKHWaNMh0K1BccW2LAPpX6rT+tLa2cwZ4MhAc
	 ZaqC8l4QufN5wIZTzxYDJs0ePhHLp3meKgES3msULg5GH6OC767HXbbS5kPcON/ZOD
	 HTxGB5k4E3VXipKIx0FyIgC23a+GFRL1PgACi2gIgnZUojbQtNXM0LjMbZ6ERljDPo
	 wLrj89lV99fZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D2C982E6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003643368.9643.1983629328653360489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e57af125fe995ab3a6d97eb7c3713686d2f1ca37221dc562f295276cc06ff9f
Date: Tue, 22 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790036433
