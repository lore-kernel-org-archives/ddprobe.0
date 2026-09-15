Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554B8463B96
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789463434; cv=none; b=Z6jaJ+dZxiclP1n/Adf9L4UKtX3jOIv5/fTZ/ugrmuxVRjfeMjtkJYXmd994VEFU6zkhht1mVMO84OCEsQM1Cwsc/EqqF3cAHAoDnd24thFz4Q2A7uz5cBg8LF8sJ9y2g6luYDGbAlC3TGCR//0H0r9EBD9qWWa5lwoYz+J4qx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789463434; c=relaxed/simple;
	bh=q4Zaf54WPVoZBOIvFoWosxPFdXi01acUzAR9wIHnwf0=;
	h=To:Subject:From:Message-Id:Date; b=hoRRy3bB9/is8I3qONAvqht4CNzUBHP9AeAbP/Xxq/53hDAJGRXuyXTIH4zBWwsqRMDZvHt+9Rm+sqlJFU155cUXtjhJ5z+QEYbHQBMXAUUIDtsM5Wd4WIp4w7qA89pHhNMtyXjL1E0R4bc9uNChqhNGzmdKuhHPsrAcHdAy/vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+Ctet53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+Ctet53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA766C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789463433;
	bh=q4Zaf54WPVoZBOIvFoWosxPFdXi01acUzAR9wIHnwf0=;
	h=To:Subject:From:Date:From;
	b=R+Ctet53GMoapJUv0BX2bwwxfXIctPA0l7qqmMtS4fDF50zW+HJYwjgX9461l/iUQ
	 RjdwWmFxB4WdM18hRCvUSSvTSe/MZdOlYYz3JrT0FeD2UibctFfPQ4aXi45LAhaLTW
	 zXrsGzwl5LMNCF/gvgwTx3T8EBaqmQHkiT/z7Q9CyA8gEo/7LZiQ/L1z6B69upE5KF
	 6mFZ2jdySBo0reS2/rI/VcJy4wg86wkgdDFNJcVaC5Afz0cYlvZPmLc5wmpFGth6JQ
	 NafEv2fvr/k1K9WVXgclPwNgsxsOCyAFOhZccN5s+OaT+n0y/hYC2XdZ5SvQ2WU6Ph
	 2IWBs+eGWpVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C6C88E73
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946343368.22879.1254500784884814650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98faf94e3feafaa4b103e770cfc7916d1995e7c912e07a9f0a8dcf71e3d13b2e
Date: Tue, 15 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789463433
