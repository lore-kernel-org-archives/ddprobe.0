Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054D26F297
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756759195; cv=none; b=FRKgB5V0rEKTBx2jIWSj0sL3Rsc4Ibd1DQcAB+hvraPaJbWJyPGWh8ZclwuuNgcZZYUdaRtrjdHZBvQlVy8GK96pZQJ+Yy24zY13QkKNJy9t/i6deKIZf17tTb7ZWXg8iPwOJkF+kjXl/8OYmAXv+YHaHrx/8fltb16tcdV7ICk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756759195; c=relaxed/simple;
	bh=a5AFeGDKu636L9ldcQbrJNJF3Xuz4zhmr8xvd1jgBH4=;
	h=To:Subject:From:Message-Id:Date; b=pqKIzTc6TwK4TZCs0+GieRrW0oTfENA1RMDGw3vHnMPWH4OCsTlWf8ztFiif0ZIC5jlpQk1CUvRbv6sw0o3IGckSE1/BSFi/1z9pCd//DJj9cfkYyAQLXlbX9c7G/spjXvIEbJ2NMyYW4H1l2KKKTbh60bjBbWv3CGGINzJm8Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1qYJjQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1qYJjQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756759193;
	bh=a5AFeGDKu636L9ldcQbrJNJF3Xuz4zhmr8xvd1jgBH4=;
	h=To:Subject:From:Date:From;
	b=u1qYJjQ6IJJMlIBOqDf4Pta/JApGswEUQ+yGXbNdYW0xk2+WZaKsOMFmcaVYKBDGF
	 /USnV0WlFfsnA9+R5A7gcDc33mkA6Big/xNt/SlDTIew5Ahcrw/JQ0rYFnQsbaGNeY
	 JdilmTze6zc41DehPjIIsmuz0grOOsItFlTcyud3pqh2KEXklMN2sskUzJmAJWtnmY
	 BlkSG/JTBS6by0iry17sn2ifl6yHShILpt7ZKOaCzr1UWsQW2cEjNPEUQWC09huPIp
	 LCVoohGLDpCuDwFdkTZ0xdloFsBEIU+xFVTR8bBkByKBsV04xZruZZpcxgO3lHR/53
	 iOyyZeedqDidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043DCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675919358.18514.14446206015736891109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19099269592f98e5410c2bc6a0d86eacae966669c2a1ef71374512d05c8a40d3
Date: Mon, 01 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756759193
