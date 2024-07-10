Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47100197556
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720638443; cv=none; b=S4hpFmV+6VZAAM7khjcpj5+dqd0hZ6f02+GQxP7wzQeWUBE2G5OylkbnzFgqnWpLVM1/tvDAxqqf/jb3QX5RFHmI8YwdBQt24Cxtk+eCpbeObayKlInA8rqEl7IRt0Nn2ctZWpogxvl6YlKWc8uojq4R0o8RefN1adxPZ4txS74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720638443; c=relaxed/simple;
	bh=hCnnigCMqlVRXK/p7fcr5TrhsNB2dZoUCaGb3Hf1G6s=;
	h=To:Subject:From:Message-Id:Date; b=kuil4BrMXblRfeEinCdoYEjxkwyKDYCYvV3t+21e1av0QI1H3l0OEBGUF2ZW3wToQdu5U3/Bl6I/aEKnNuZGPhk2kwuq/RZjWHbu/JUS4HAbzRIn5kmh1mxrfb+OElF/ybzOwSGC/IeewE4MZ8wQwn9UUEk+8dHLUyOkD4gcfmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSURJRXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSURJRXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF36BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720638442;
	bh=hCnnigCMqlVRXK/p7fcr5TrhsNB2dZoUCaGb3Hf1G6s=;
	h=To:Subject:From:Date:From;
	b=aSURJRXL4zFxUqzjkwFyT2iDnlHN+A2L8dwGpDFkPL37r+qnjlFLMxNxToGRbZjgt
	 c4F+WaTRsN7dp5YpW+aY7KY+0iUELrHO59y/e8ZdICDRd3nNFOHRa3idm7lO2XgsAM
	 S/QIBO1dsyiK20+q8tYJfDnRN1bbiiWNM6VJGCxM9F8O63ryhGKZWjj6gZzn3zrfth
	 aGUNRzEogXvEo2iHAe2pd/DIB5A6t0DIub3yzt20OWszuT3KAN/+iMU89tjjneFpo6
	 o54MWloku/bb7//HO/yfRiXPbsCZAlRcoFHCSvbiJDUA7i1SKCIUl3PAdr7Y9oZbxR
	 OLUi5jAFsOrnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7088C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 19:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063844280.21160.10565460379115424649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e452735bc3e50ae6ddffb7237461e6bab8e298ecbfe1e6758e525a20bd7650c
Date: Wed, 10 Jul 2024 19:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720638442
