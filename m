Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C15B330668
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786744834; cv=none; b=cyOiuNpnNsLpCRenCKyPHGXK9KjE/ATaZvPNIelOofih399oADrTX8bUY6HrNvifphJjA/jUc0vwv0vp+zrqPWqofKqNWduFnOpucGW4PmO4yiEU1QvuS883DVd9m21JcQt9wEzFLQCzEAAzd0C3vZx5UUfLBqEFOVQ2BmikmF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786744834; c=relaxed/simple;
	bh=zfO6cR6Cd5AXnmHgKsRKh6Y1JLIW/LUaJRTVRGChQbU=;
	h=To:Subject:From:Message-Id:Date; b=LN0KTCgD5eUjUWmk0pCPGnmu35kXQkFLqxaOAPJlKDCxnOo3EvLIDaBDWT5Ii1eyuExp1SLltPjYaTE/xLElmMawG+ptEwfifA/CVmTsdbMtmS33SIUm2Hkq8U+UIrZT30C2QRiROdPeEPouDnmOLnsWyLoA01GxEeZMjc3uFOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fnvfad/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fnvfad/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D289CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786744833;
	bh=zfO6cR6Cd5AXnmHgKsRKh6Y1JLIW/LUaJRTVRGChQbU=;
	h=To:Subject:From:Date:From;
	b=Fnvfad/6X7s3ssTnSYgFKBuQc1eUYllAxTG6T6Veukwbe3i5LUFcIt0tfClKr5iJn
	 iHYxYJ8TahZkj9NJ/alvlX6eQooEfB3fJIpiJpW6Iov/BoUqQ8QSrLOFSQO4JDXJ9p
	 sapfzPb4ELPOZ7o4tBlJTGNOA53AZeLLTQlomLK2U/0dQwCT2E1Cux5cojAY76/Maz
	 un1Dz+i83u5yvUww36s+uiC5rWgWzDIZKe9MRNg6zt1uff2eAfWZTEPXzTm7kHUQ0Q
	 M8oEgyMSOMv4y3YvmDuLaQavTavgyaM10bvkL52c+9hE1s8GelroG+fdXPRfGoOvIr
	 CmW3yePcipbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFB4C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674483368.15482.15787460935454924470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca43f8bd13fe260aa80b9d773b49a2b0e74f579d24b397c44093d1f098530f05
Date: Fri, 14 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786744833
