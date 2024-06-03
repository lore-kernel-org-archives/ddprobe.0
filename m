Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FCD13C805
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717453523; cv=none; b=UDcErPUCFXL3pC+XtoEYGyOre+MVmpugaWk3lUa2NoohuRBKHzD6PTZyF4WPiszBL2tMnEr6tuiIIYjbA3Ng1xGhyC6RabGjG/0nIDyg2mh2GsmXdNGuS/f5J6lB3pbRzne7rYNcW90811Jw+FXl/+sCXmTaexCK1yi6+3huMEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717453523; c=relaxed/simple;
	bh=ldCQo1fGC8ASzmDSo0mmVCr2gaJ9sJBKgNqI8nycjz4=;
	h=To:Subject:From:Message-Id:Date; b=nZYL804Vaf2vuXnJU/sx5EHNYT+XO/ij+tB1XenYMgB+pW8oNvEVw10VL3Y0fOMGM+emD4mtU1JAd6jECd25FbeaNeGaLAzGLU0nMZ76cS3ZN9j3203exqulFHdXYsruGTESn274nFKqJj2EPKoIZeKsvf+J5bKyw/3tPMRV0Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCbmC+fA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCbmC+fA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4061C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717453522;
	bh=ldCQo1fGC8ASzmDSo0mmVCr2gaJ9sJBKgNqI8nycjz4=;
	h=To:Subject:From:Date:From;
	b=bCbmC+fA59Yxnkp2I0OneFbh+LZf3Ait2zDj1O387aUTppK8sOCOnjF2OntNjRKQJ
	 XzByP97HiZrxUEPGnH0ip4YwKneePOd3cDISIHPizkWL83s3avNvGiWrW3c0KYCUUH
	 2yuhVyHJv7RIv2KZ8g/TahIZmPR+65TC+UHgNrTqggLy8UrA7GtmV39R68EYyJBc/t
	 u4v8el/e3z2VXON2zAnRDu63w+Y7QI2W936aJeMR8ZWO9noPLVdSLHtOD2f7Qc2wBn
	 vIQ1XpsAsHSEL+vDkmEgQ7p9G02EWn2BORkhVucCmcR8NEoB4dZuqEnnzFgkqVW3f5
	 +bS+vG83WCPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A70C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745352278.4989.11534157761985356527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b30c3ba532b5568181f3e60419b7486ec932661c51edebe74297ec45273001d
Date: Mon, 03 Jun 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717453522
