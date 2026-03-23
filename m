Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1488838423D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774306494; cv=none; b=HxkdWOXdgh93jon/b/5IVi2WpN/ATGPigP4XloWZHlkslSkXNaAmHWJJdGOSRxkTGDvoibap+v8AIHj0LVhLdw4BRsNl3bbyznfcLwxXVu6InX/xpPFS82nwDoyJ76kxZt9znUBWFBNDxMIH+FbZRAdYz6jeTdiyt+R5cEL0Jj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774306494; c=relaxed/simple;
	bh=lr6eQDjL6gRapzKNyz3VFtuymRFmKKS9iy7M9MxGazk=;
	h=To:Subject:From:Message-Id:Date; b=gjcELKyAg+gxsLv2SNUGJkfCrxs4PyKXYlJ1euKeOmrRJBgDTSk/XnGw/TkTQwx3IkCgxUq/yDAN0XfFamZls9qsOqgIivPDeHiD+4C2p2NvmuoIl0lTSCF24BWTTeA5yVc13WlXuuFszVOJMBBW+OZFxgIwMa58w99Z7Ul6p4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFX4Q7VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFX4Q7VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E57C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774306493;
	bh=lr6eQDjL6gRapzKNyz3VFtuymRFmKKS9iy7M9MxGazk=;
	h=To:Subject:From:Date:From;
	b=kFX4Q7VR8yaemQINHXmKGlNGJKw131uSdWvk77QuN3uOQkACQbiIroldZJGJK2i8T
	 W6DN7Wiaj0/dAyGwgU494gcDjL/OpHIvCCz2EVYx+4lRDvM+pRO2gaJ9+UDn8MfWBn
	 O5nQj9oDa4qGSxdfgpccwygENd037E7kJhFQZMhAdEym0Tgd/r57/9bS9qeO0prPqE
	 LyGT0ibFkkO334g4jLHESswaPkq42fGFblLFUy8FIDK2in1KzFsQTNepMFW+N35uTU
	 VfUmv3u81yGDCw8tIeHCl1QK7x+RiAe1fy5kfCpBC33neuhhXz5nisTXXcChuKO9lU
	 j9yjS8ubhkBlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340BD58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430649359.1698.12259448464805111242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a06a65db2c10eff466359778aee14d4c97423544a0fad61dd0af252d951e12
Date: Mon, 23 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774306493
