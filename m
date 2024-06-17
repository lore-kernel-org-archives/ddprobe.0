Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FA014D2B6
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718639303; cv=none; b=URZoCbOD74U+9KFm7yuC+Z3LXDOP+hYuhetOFeTFRMFsG1yRe8QVkD/k0hPha5m7OxQwiqLRGenBI3/T7QtfT72/HI4KgzdwtGHM/VqlYU6Qth0yR4VnwZyZ79qbqaqL+vab1bRBxQ+aUhLAytjs5OBYF0bF34sUnphPSSxbbAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718639303; c=relaxed/simple;
	bh=lknhsnF5z0wS07rUw6MlhmP6RgqIdIBmEqHMJKIWZD0=;
	h=To:Subject:From:Message-Id:Date; b=C8nU9aHnJEQ+MoYwsA93UtojhRPnegxlDRLpEoQWo8Ud2ZkwFOcbSbCpfMADDb+zmoZMYBXta+LcT/wAR43U2axR530krWS88Gz3zeqAJP5yZzLK9kFGujzLCcFTP4gMx4sAqJnkGOB3PnraBdRP0MOKOGELxZ+GNbhRrnUZXi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5iT5agS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5iT5agS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA67C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718639302;
	bh=lknhsnF5z0wS07rUw6MlhmP6RgqIdIBmEqHMJKIWZD0=;
	h=To:Subject:From:Date:From;
	b=X5iT5agSeZRMLpdOslXOuCYSZ4PmYwNDP47FsORF72BtGGSxt5ru6uQNHvihelkI2
	 1sWWdGmSH98OcAesnhcDBW228zNdJh1Kx0TTKQAmZFfLXjePYphNnICdiuImwHdXsZ
	 EfJVXuFltRBH22JHKpx4O6yvd5YG/buyFDZnuPAhL6ji5b1Ujdelb+OQDWwf+19k+1
	 PrmBOY+fBcEjmAmK2+X+gv7Kntj26rKzBROT3ofAVebYp5TKNzN2J4iVNE7yVlP8Pl
	 RPiEsrrxtVExId1JT1B+lqSVknt3gHyYYlNcTsWp8yvuupDSF2adsrpclVC0U4JZrO
	 8b523ng6J9F7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72C1C2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863930280.10434.8751911747958833275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63929618c4475485cffeb38bdc4a93960bc46dea491fbaacd8c9a4d114249569
Date: Mon, 17 Jun 2024 15:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718639302
