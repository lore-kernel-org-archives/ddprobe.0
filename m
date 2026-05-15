Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013B941B35F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778834434; cv=none; b=VFhrYxedNz+leZPnwm0Qoz46ouSdePkeQJicIII1RNDND5Gn5+ffj4tyuJ60Wd4SeasiY1g479Be00UnW3mqhfS0RTDKCyJyTUYO6BZFre/WgffC7LDC8gR2TClVhVWwbFj/AQwqPZ2P4wSBKYW1DyVqxv07Lv5ip99bBLJVcCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778834434; c=relaxed/simple;
	bh=a7/ztCrVrZO94hhebVSE8iUpZzKS0/1zCVsbecQM3Ac=;
	h=To:Subject:From:Message-Id:Date; b=VMRQ1wb01I4dcXA3/LqP4AP6rdkVKC8y+W/J5z4Y2jLF9XsFw2bOQo3DaBBttnhhAxiSbu4ypcdUS69+W++5ep93fFfcvISVcMjNPO20rw3XBq/o4lz50hAOnqR62gzysy3kLZRCxhpzqz4wkN05t5HqE1HLgxpjDpGTDK6mDto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZUT6RVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZUT6RVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3655C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778834433;
	bh=a7/ztCrVrZO94hhebVSE8iUpZzKS0/1zCVsbecQM3Ac=;
	h=To:Subject:From:Date:From;
	b=SZUT6RVVmhPXTczAs4tQtf4saqJexlYEaLrGMMmRnHMR9ICD/6Mor4JPzynPDXYvJ
	 MsWnW6D9IZsx6GUmdsEMz+e09QFK+yLRIvBme+BJncgFP3GQijkWugkeklN916lrqu
	 30GKBSXgf/8mzPCZicsfRRKPsFIjmQLLz8VfnEg9kZogPaRada7xfwO3ti0LWD/w7s
	 fKTf6lStpmsrmW/e5S22peHaDYzRijZuQ/tYqd5W4f2dk3Tm0kD9sZzAdWK6nPJRXX
	 QCKYq+XHdMuv2/0mrkPy6/ytzdK18NEpGKbVJjT4aYH6MaPJeunbCMCbSP/dxqUmZj
	 jyNzVUYbnYdGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2411CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883443372.14434.18232663546205286792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df140e5196c721a0c753064c93bf4857c83c9884fd93c3b2adb9475e017aa70
Date: Fri, 15 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778834433
