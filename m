Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1C86348
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762160394; cv=none; b=mXB2lAzDmE/JDEd5soLlNwpRY6ISoGAMWwKdz3W2NxHTZtoUD8xp89knvGaNTuAHwzHuoj+gR2gEljRL2Mg60tE/+2Q7iB7q5GCOWGdCMlKxsm2EBeaMc2q7YmpsG711APYHUTdoSYlITcYfGgAKB+jxXGfmxdb5KDQ3KvP7zmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762160394; c=relaxed/simple;
	bh=juAYkJm7xJj2iw+igUKf4DULsJw/HHogYSJ3Gwf74Qg=;
	h=To:Subject:From:Message-Id:Date; b=pdBT1zLIsWZqmGUVmcbrq6eE3gye6WV6CMmC8Q2Qg9eRKd5O1wuTEP//zRynzs7KOk0cITphC9Pd0g4NlwYyv83TsgzGLgSErRYtcXRuqbKeK5zFxsbKhOxMjMHEkoIDF1ZbDQ59rlm7w8C5Ud+7Ck5O1wLmGd+y32TIH3HAo3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxMEsFFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxMEsFFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762160393;
	bh=juAYkJm7xJj2iw+igUKf4DULsJw/HHogYSJ3Gwf74Qg=;
	h=To:Subject:From:Date:From;
	b=oxMEsFFq450Kf+2cq/TMaTpdHPobfEyd/IX5BHEwofVg5NIBD/P9ad1yiog+fzJRO
	 ni1oNN9H7xRMOyJj2cwPsktvAkLoRbEg9vxovsNocEodYwKGJRpswI4HKopdIvR1Ua
	 +2E3CMZlSusV854dcp4A3wXF05pP/TZ7H0+0h+bfIAV+xIkVJBPCILXvP883KJxn4f
	 SMpHoKPApNx+MSyJQ3DdAxp+tkTIBC+VvH0YcPsr6bhN+F1XB6jLA0XnEvKCoY2AUo
	 xo+6drt8NZYmr8n/xzxDGDpekx9/HD2+SnCSrbQUGYw178nWTm4DY0Dp66+adPrEl0
	 +vhF6mJ7kjm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B21BCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216039362.30792.7385678261759195727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab23118181ec211f17a1b6d3ae7d09fc0bbd3672454db2bd68b885c14f24164
Date: Mon, 03 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762160393
