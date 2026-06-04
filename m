Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BFB1F4174
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780550074; cv=none; b=RIj/6FjR7SWj6Z1nTHRKZ7i83kbA208XlDX/g8AA40x4kpES/KhsbiPsDaxMFwXBjH0ui/3DiODQPnh/zzPWFINPoYAHT+2LAsSi9Whrg4C95gTB8pCpx+nS+t+D2habyfuYXyh2Nwyss/wyqCvVeNCYfLviS9jt2rpskTvvGdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780550074; c=relaxed/simple;
	bh=rDxKry+BcjACQmMGZ/SWMal6HbjJTIaGfq58ywFWTgU=;
	h=To:Subject:From:Message-Id:Date; b=H53Xo2opu03FDEsNvR/c9K0MDh5wPF6X+4smnX1iJKOnQzaTT08dvwt+7o7Hly9XAO0paZwfWHhK/ml4B8s+SBL4umb1AIwwKX340vZKNbsNwsEcENb6icpnY2TjShOj5LLydlVEic96Mpiitvt/OWRyYguuONnRAle4pSplmZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udFKWIoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udFKWIoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F68C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780550073;
	bh=rDxKry+BcjACQmMGZ/SWMal6HbjJTIaGfq58ywFWTgU=;
	h=To:Subject:From:Date:From;
	b=udFKWIoBFaciEbQtTjzTd9VzhIS3a2od7zB9K8hTk5MaG4LSGvJ3mFZRogxLySHDT
	 DTsgFYVlCrDdUwTsR3G3/yUHkL2FF7iULLE3QN04/V/IhPyqD9D4LvDEokw2OLyRcC
	 rv9hl+QDgOQ7dbn2fafa25ZlGVpdKmzyB5IZzpXcLgaE7DjIQ4fF2dTKefe6W4vlMd
	 0yMBXlvPQ8QQiTr/pLSCK7SB50IQCC7MQO6K4Us2HjEf1vRUWzkxJlq4XiS8pnGgFe
	 TsavDBpWn7ZiAFoJ+ohw01RbMoyvnY23hdBaTCJ75/RQIWBEVs4Y0Xw0Fu3bGcyhzp
	 a6TQckCie32TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD4CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055007368.9365.15514091893496036296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4fbbddcf39dc205daededa3ad7c87bab2d13d9993ec1a88133be77221d748f
Date: Thu, 04 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780550073
