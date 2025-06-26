Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145CB2673B9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750936194; cv=none; b=L/hanp4GDzNCR+zpTf33aiSF9VVwhJblc89fOX0a8HrZMwtjKV8rDPFid4p/rjqmElqqDARfMMWB9L+3WPtuvrsCHGuXQL4qhtXmJYmoaablBRVDLQljly841DbG86oxid6rcY31ctbGVyE1EGQuaU/QmqjCbGU3okFD0bGhDrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750936194; c=relaxed/simple;
	bh=WVfjIQy1zAAy7zpFGlDRkcJ5sI0W1Odu8P70m19Fylc=;
	h=To:Subject:From:Message-Id:Date; b=eS1bgYmBbdYSF7Qb7B2XzEYj3BAX4gNQStaUfBqcYHNzqTRZEaC5yut1KuaxrmHa1qmmm1Sg1E+JKgyedyXfMJ+4Fh93vQ8h9fKQ3wtphJ1S3dGXuxKziLqFXTGL7kbc+wjQHrO2kWwwlaijUXQEvEPFY/LSoScAOsZy0mT7FPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDQX8wK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDQX8wK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C22C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750936193;
	bh=WVfjIQy1zAAy7zpFGlDRkcJ5sI0W1Odu8P70m19Fylc=;
	h=To:Subject:From:Date:From;
	b=iDQX8wK9uop1XfpdwvGHSEbfqMgNBy9RXQAKNMHpUtp7JE6jnpkxBE2Zz6KiRNC/h
	 F1Tww42e5BcQLDi7K8ZjeA8rcZAoXxISzqnKeEftXuaI6fZhGdEjwThgm6EblC4Jbe
	 pbFeTKrTdMmPF7qy5oH2cTVbmmfzbXZsVBFyvhR5h15zdoPEi9mfMTsSQasN6X/sPE
	 NzNXrGPMiaoy3dr3USTxA7+2/5KNqkWI/n51lsIiwVQISpDColiZYu3P3OoaFLnBn4
	 zKDwFyyXyiTrV8+u8wE7fZ8Y1ojPYuMnk1kPVwUm2dOK+5kb7Tt2F56056WcbcjH78
	 6ZhZT6evifodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998EFC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093619362.5462.5616175773615996273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250f51d0e4b6efbc16327f294f21360e1bda6c5843be3e9d54f6a131ff1eeeef
Date: Thu, 26 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750936193
