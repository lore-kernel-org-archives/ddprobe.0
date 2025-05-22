Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F49A20127D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747940395; cv=none; b=SmATLAPrs2RAvACvfv2prvx7kXxmqyzVRXU0rSvfAJA296LvW4ncU1hooEZOldPYw4SEfDVGeHI9UgB0ql3f3ZMAfZlQ1b77nSPtjGqSx/ZaWE/4WsjS1otT8WWWFxw6hM3IGJf2ccT3jYdt2PrmsoPGAxYN6em25URRnjn66pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747940395; c=relaxed/simple;
	bh=zFg62c/WVQjyGO+ZHzj+WT1lyCofLQ2Um+ZIfkHuDmQ=;
	h=To:Subject:From:Message-Id:Date; b=pEX9T8S2gwCfI2L2fCDr29IdnR7pYPYglkeeurDG1N8zUZhvI9gFeHBiIa0L00m98clgb8K+a+Yg/ueL9aypWfxSovyuiuzYEGCRp98FgXi55DwrTt884+ujqSz6B+sL43HUBX75Npboh7BeEhvgAR9RrERYzwb1WDqVsTaj1lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJRlaq64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJRlaq64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EDEC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747940393;
	bh=zFg62c/WVQjyGO+ZHzj+WT1lyCofLQ2Um+ZIfkHuDmQ=;
	h=To:Subject:From:Date:From;
	b=fJRlaq640WGRGDsJTke7FdqP/hklAjEk8aNYOJ8J+zIDQVch2qmXvbrPzwdWp08jP
	 lbfL1RiOXH3AP77UF+f4y5B00OwARaj61gr4KUgx2qQgfKhtclTrNHrF1ivJReQhsM
	 FaQP13P4S4uuoycQr0siceK78niW2r7tPJhIYiMEcXri62c7B3zlqF0xch33KMmgB1
	 48Qw2NcsePTM9EbH31uXTq7ceQGZ7yuIWJbBwvxglCuVLG/QApACva9nzvr3Txo3+I
	 Gyy5aqyucICJG8el9l5oag3eRZ5tTzGqrywcgxHrw1A6j9QLDMmZsjA59QWNAlcVEe
	 zQCD5zn8DPqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA8C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794039358.28823.9081366498444027643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4208e3c7c922784ef592fedcf9fac4cb418b01e95fd40ec2cfdebe54264e700
Date: Thu, 22 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747940393
