Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DBCBA34
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768711434; cv=none; b=DIhcQ8ENQvkURezO9+MGCaPZ/+2TmWSiprDD05s0A87Pa66ok8TcZsYx1x2ZMeclMZyETeI1M2xcvBcLUDvufEzeWVFtab2vWKwxjowZ/rC/9ukcNv1hx4MK2c+kXT9InCabLn/Ut1BQ0KmLNLHyWJIpVhGVBcITdP4AeXd7G48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768711434; c=relaxed/simple;
	bh=ZSRDWjULVkp3oK9CzRuiC2R/KGdOqRVVR20CiBxtWH0=;
	h=To:Subject:From:Message-Id:Date; b=pv5R5D9YYvaKdckSIrfQTnxotipKB9K7w0V9xmC/UojF01n17VUOfyY2NVyYDjZ1z1eG/jEuEtMssIk/YHQcDOWC+PFJuF+qIk2MCXI9WCCJJhcFWHbak91c08WKiTW1vQPgBz2LOtmC7kc2eUn4n8LttNYPykQDbODnSbLLal8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1cx5hbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1cx5hbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0063C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768711433;
	bh=ZSRDWjULVkp3oK9CzRuiC2R/KGdOqRVVR20CiBxtWH0=;
	h=To:Subject:From:Date:From;
	b=Q1cx5hbtcYriLN338Fb7JD+AQQPDYnVFC68oqU4CGqI89LuaSK1bVmBEGpfsW+MnV
	 KvzE8ERedBXyyie75ijdmrp6EdaiH+ltjVjcuPSBMRrYBUNmbnXQRxc3EtOy3hP6Ks
	 PwuyAElbsVuX7l8kL/nBgi0ZrHo80A/Wd/Q4ZN7pygxi2Tbt4VtWR7C7UBLXHF89Hm
	 Ftx3pfagGOjCI1dMiyCn6MYJoovgCWi10snr0Vm5Qfq5ua9i3hr230kr+x6JulDwci
	 O3uNR9Q7xmrOZ/kJT7K3IPrNP1AfvPQ+213ubsmu/BvIJQutYHLSOKkaaPhHRbgtHY
	 kmgpXr5C38UEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E1D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871143357.24154.1218743636875051705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f037f38ee0187b9ae7ad6341317417d22b1c8d65a1e3b90bdf8769af013f8dfe
Date: Sun, 18 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768711433
