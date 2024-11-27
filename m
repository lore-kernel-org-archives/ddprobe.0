Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E7F28EB
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732691154; cv=none; b=sfPKiDG6ZRCgshY+y0xFb97CcN+r/IL1zzfaqb+7USTtPJNaIMw72stslJ493zYu0H/sIcrY8xxidxGKCODspN2+Z64+VsjCHCSoCyKlakk4I0I2mX/tUphuC5VaalwsGbSiqcpvgks+0Oud+QeASb2zFq+eaRR2tLxZ8qFG36g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732691154; c=relaxed/simple;
	bh=S3Q9KmoZjCByx79xCVbiWhp692iJzwIkD+rG2jjUteg=;
	h=To:Subject:From:Message-Id:Date; b=SH7LeEhdIHuoEouu0xETkk3YCjdGk/sPQS3jZDAWsv2xDo0G6cSotU1WrkORTdGlkmjfsJtkbfLw++dnqnJV9iicPC6WG4Q2VvrYO7b9Y9yvIAi0LZwOzmHwjxVQIAOeE3sgCUN1mNkizifbpdJ4XoQUqAhmKmrLTdOGF23QHpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X566xDLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X566xDLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF45FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732691153;
	bh=S3Q9KmoZjCByx79xCVbiWhp692iJzwIkD+rG2jjUteg=;
	h=To:Subject:From:Date:From;
	b=X566xDLEPFAP0J1p0uJrnCfYRUNJtH9a3v9ZNh29I/odZ4nYv2QC561HZCpOyy2IF
	 cIsGFUBSknYjICKFww/CmizM4vmUxnELZXiBhC8TjyDi/4gmxtoutpfLr3SmSJeVxw
	 cI4kPueTycdGK7iix6be3hRjUaUPn9Sqj2cftnnmr4XDznlL7gsX58EsrRtQrSU8+y
	 WVwFbG6d7kyP3Fvx9i3yYMN10Iqkn7UD4DMulGSbQCDPg7fyGJIkwqDPgQYUC7Y7O1
	 Lyw/Hv6AUdmvnAOTgJvWyMTUmCPZmkxbeqDGbWyUti65zWgEO6KpQTKh7v8ElGfJuA
	 A3UffHQqWcIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98872D609A7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173269115359.19911.8101099307865894775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cda68c24d41504cecf50a13e24dd3ecb5a83ec7e6485f9570821116e90f9f11
Date: Wed, 27 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732691153
