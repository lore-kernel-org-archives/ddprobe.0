Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6783B482C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718962343; cv=none; b=F1ILgQrVApQiBEHNSBt7VXbKlYUf1uujOuuzzGYM756pxgREq5Du0zbbtYUcO+J3LDCiee4qP66H+QFZX5WT6TnDGe9UkYOxe//5m1yuuKHAd4ZMf60V1s7hsC3iz3vdvjWUriTTsrBWUqaLuWloG6AMOv9S8kC4a9vibHTbbEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718962343; c=relaxed/simple;
	bh=8DbjUA1kX93DpHrFz+De/M1OWlG7huMXyPuzs9dapVA=;
	h=To:Subject:From:Message-Id:Date; b=ZDDKOx901MlaYajUbKDFkr647xDBxsvbWPR+HtJfNV7mbxateHzoS3ei7zk3A8vf7gDkCtgnVO9zIUqMh3FaVs+YPclu1L/UKKq1sMDIIg8as+i76sM2b1lZMWMhQo3e7JY+9bQdrZKe7m0OdbZhZ+dT99Sp2P1y+GUV+ZHJXSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRE53Jba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRE53Jba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CEDC4AF08
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718962342;
	bh=8DbjUA1kX93DpHrFz+De/M1OWlG7huMXyPuzs9dapVA=;
	h=To:Subject:From:Date:From;
	b=aRE53JbarEjN+s2PkfR056ZTtOGcL5509S8ki98Z6WYMOLHYNuNGsCku2CzzISFyJ
	 VWO3H916StL2KW2Fmcqi678e7CMly4rsMh3Xec30PqKwS53/jr2BwN0OZcOYzEtp5J
	 3XnBDhe+lD9TG275JtOv3qfRO/7KVDvj5oZrgFaE2b2ExVr+5cxrNpwMElDgXntJ05
	 FqdNwmjELxD80VcF1WaBEmnZpRhEqeE14KvJ/3jQbsaMK44wgbCowbk6mXgWhdehQR
	 utlx4/N1supBP/D2dV0qfWZrfq41MXjmxfeRAvc3a5+qBylEIoqTrUoyCXREPe9yoc
	 F5kiO/s17J7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F39C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896234278.14257.4965982789721820011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8a2c443645e83d3ec857d947d6aee62cfd712639e9050995156fef5ae80661
Date: Fri, 21 Jun 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718962342
