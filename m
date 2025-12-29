Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E73633032A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033234; cv=none; b=ZwRSWMPiyT9Wh3Xujn5oLAEOzDxUEwCiWsFH2UnfHWxonT66r4ipbFYXjd/gw8frnM9XyVnliXhQjO0dEN+wpQJxJblHE7Wmp4ax+KD0RBV+pTnxk4l7OwPhEqg+lTmUe74eEKb1YYBzsjnD4DThaFpRAJ5QI53FYlqH34kG3yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033234; c=relaxed/simple;
	bh=zrrpYvxgmWJ2DzSj1qeCFFyiUjaDPLblCfti6CNYN38=;
	h=To:Subject:From:Message-Id:Date; b=NUIWVKwVz59haa3ZogHse0JaWGdJkWhSeYf6wkB09Mr1Q3N4bq5bbLs5G+ljvc/cGQjCoubTls9CM+JGEl18J5c263qZ3El6/sUltheMPYXmofGAu/hPCpEIX1uiJr6AIs52mP39HVOm0gI7Jag6djHa5N45q1Im9mq2go94FMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6ieKoJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6ieKoJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D14C116D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767033233;
	bh=zrrpYvxgmWJ2DzSj1qeCFFyiUjaDPLblCfti6CNYN38=;
	h=To:Subject:From:Date:From;
	b=L6ieKoJZ7l9n+QReLV+0bDgxrPATKH21OfYjWcJm9ivKHLk84UsbVnNCuDg+3Xr5M
	 i8ov2nVD5Kvf0/YANuS98fzvwDVXzSNl2uH2u7FykA6/AAd4qvRvoc04FV0o1IyBj4
	 GErw+KY9rozBTM176k8O+EfSs2R5f0TtX/OL0IVfH8CeIWZXGr7NdBDH15uPLdYXQp
	 lEFgUXnrZduNG3vp5L4PDrH6epTBgoz487U0XqhTqxNCB1qm+Dv6Z8bPHPz1KH2eDT
	 GWCFdAxqzs84UoBB/TPnn8/i2h+W/csOuIRCPiRD+Eb2hBfxlTA8Cq3l4yzHSPV5uy
	 t/z5xx1wHe2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95542E92FC4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703323357.31129.14309519177093486366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0b9dad05b7478ea58a92bd69306e75cd276bb13e408440cbffb634b52dc9ff
Date: Mon, 29 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767033233
