Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0181E5018
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775018093; cv=none; b=Cyrvxvps35OAntPths8gaDm0U99NIiHFWBKpVStj6LWUcWilli54K/+JEHLrTplpUiJ6gUS6JfHa52QBvow2YKgYiQduMymdr4Kk/DCM/j5c+oAaP7Z3/o0CrjQHRfdf0R4MYFhu/DNTB/TU93+71cvxRBvImdl8bv62xV68nKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775018093; c=relaxed/simple;
	bh=CyrboR7DAee6Auvtqm1IFnSRGAcApsacH6PxNOrCUck=;
	h=To:Subject:From:Message-Id:Date; b=MTG+IgizKF6BWkx0bLbkiEhpjx33ff9NBOhSntB6V6772Cn+khZ2rzMoPGCrDmy25cfDMTdlOkRIRq0vE26fs1WuuHZ7aNGxywo2UJizwcFPFo+Wuiqa3oq5UaCAN0+FRgMfVy9oBXIZZJE16rBGcUuEW3z0XOB4/WMlLDIiB3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHzt0yZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHzt0yZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57D7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775018093;
	bh=CyrboR7DAee6Auvtqm1IFnSRGAcApsacH6PxNOrCUck=;
	h=To:Subject:From:Date:From;
	b=eHzt0yZXY16Jc/3eHX3xt5z51idOCdBc6FU9gR42bQFlK7Q3eTWkZCSwaQKC1wTFd
	 8T6Ln07+1oMqXuXYEi0UX2EGMRxZvoQBUk6mlBgn8q9KW2o8wn366dfOr/w/nGau6y
	 pfC9zeg6pnO8CUayIBaPm5gvPnldf5i2CFSAMgpbz7C/zop5jejlZKiJrE5si0kTbD
	 lOe82YjRdxPtaOtus5yDS2qv/ctJJRaBUZGUpmzi/fD8+nUER6sYT+EllFeurP/a+y
	 4hU9j6eZWyFcGKAY1XEkI8S+ecgpIMOPqmuEa+wE/GdxBhfQ0+rWW3+02MfCkS1j5u
	 4SUmbEgfoTCiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5761076360
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501809364.4750.10105960922801707620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05c91544e92bce76c8503d5de9c5ec6c8d1f26dcd86eda238aa44e7fae67871
Date: Wed, 01 Apr 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775018093
