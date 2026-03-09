Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB6334D392
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773035694; cv=none; b=KVqOLD3ulxBZ9P7Ea17JO6d/6gEW+YrSNG7GxPUhjN/dYqI4gxw1hbHagc08GowJZ7WFTMi/PFD6sDU/Tjn3xaoDsyi9g7LeWMRu7sImR8XJbfHGubYhsIIJP1ArqC5xm6oXr9hPHn9jeo3j1X5Op245Umbxx2aNcmxDXnZ9p3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773035694; c=relaxed/simple;
	bh=Nbc+2S5IWsJddbXYiwMUNYMqXaq6+B1jLgDEIIVw8yg=;
	h=To:Subject:From:Message-Id:Date; b=ly/HjMeJgretU6ynYCSvX5BN7wPFOXTY2cD/8fo2XtOISCXRWZRyt0mm0FGh/blpeRaFgYGRlXBMv9snDYbBWr+PjVh0ase1LZ/urJuZADr/dVV3Zb1N84fahjBYvMQadHwLRogmIhUEPzzGeAaQnew+TKF+YaGnYAxfp8pRB7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbV/QEoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbV/QEoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02ECC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773035693;
	bh=Nbc+2S5IWsJddbXYiwMUNYMqXaq6+B1jLgDEIIVw8yg=;
	h=To:Subject:From:Date:From;
	b=qbV/QEoXjiycJcvhekMUlJUYBwIVicAgirMiEcaGf14i11MGjgAybR+VHSlgtRY88
	 dMU8g4A2OouxqiSIFREwkwWrWBv12J8na0UyG/dQ7l4GuZnSqyjofMY6lxUGBd6cnr
	 lwwdqsCOB9s4ajiFlCQ3lb5O7j0yezAg64fbZKWDcPjvh9uNy8L7GvPf1qq/UQzSqD
	 2bxvmi/cVtLByZdfKQziu2RA9KbOuN8iO4S8QS1RBOUo6h1drrqbeEDklTFQoIKozw
	 10D2KgpfLZltmY9Io0HdkMF+B3GFTgllh3pT5Tx8hCRFCodWA+ieGBHEa0Y7f8QgfQ
	 5CxQNi4U9PdcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F600F513F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303569357.9101.15140145058596260311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b13108eaad69d6cbf41253acc18939e5ede3c70a2adfdde13294cd8e77dbb6
Date: Mon, 09 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773035693
