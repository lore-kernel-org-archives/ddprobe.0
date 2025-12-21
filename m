Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15015ECCC
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766358234; cv=none; b=XiGvNGwiQbki/cAAk2tSyjNOx3UcEOTbe6LVyZ3EDfw00/eLuXszY0stqbiwCk3MTBPAvXmS7QOMRL9MTyS9kVA2a/ECQdefKXiT1I/iavvZccsaIBV242V1GDEVS+YWAeeG3i8tPLm1EWmZRf2W5f5J4B+du7Q+ahWe3ux9YMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766358234; c=relaxed/simple;
	bh=ndK7e3ngCYzaurE0BzaT1jJhZewHD5rttPuhQWD+1h8=;
	h=To:Subject:From:Message-Id:Date; b=EJDFeE5BlcCusvHrhGEVuGCvSXqZBgWlDdEHh54aQ032qdDnnjoVE3upVPMybCS/kvzieVlE7EaVBQWH6cSP/oiuzlsWjI17NhwlKfzJdedQxOxDavg3GCxZACDHQlWR4f226MQGlc2VBCGRlm8aEk0TYNOQt5ZPO7zWv5YLrTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpMuKxLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpMuKxLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766358233;
	bh=ndK7e3ngCYzaurE0BzaT1jJhZewHD5rttPuhQWD+1h8=;
	h=To:Subject:From:Date:From;
	b=OpMuKxLvHMufk7Pae6Dde85fKuP8kl6Q50oyCHSXLeOWkMZNXcT3+dfGnioS+vCq2
	 1C00YgO2+8aKU3Hb9eaheYnm5PS2uV238jEKfCXY6iYSw8Uoe+15w0yrB8C0iMMMvA
	 MRDUZezHW6DehS46sxTXULh7tim9DaY9XbsP0IJUbBj+UbR/gZbpf71NnAddcm9CvO
	 EpEMSUR02iszi8agjFUNO02EW5vD78jWkjKXRBgGRopLrmM59sit4Uh34qT5Qp8hPb
	 ZePhXfudkR23mgdWxY3Z9surn8nP7wQMY3aDpYX76XRK+z1FjGpeFLs0d1Pb403nCO
	 icj2j3rppDyXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC2E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635823358.11880.6943615635184130561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8edce6f052de8bad0846db745144ec340cb0ef89a3768e7b0292b0565cfdd00
Date: Sun, 21 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766358233
