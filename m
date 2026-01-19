Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6052581
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768781034; cv=none; b=uy8+1vuSrHQAao0I3Mj54YTZfWoMy/O0AQVOTHZjURiKuCyFQI7rCiOfLRnyU7EGVxZPWU+ebFF6BBDQcpWnPqwuuhzS8Z8XIckd8eCFaYHibkUBIakUPH4rrDbLSFfAOIeMpmPsniDZB+nHs0e3KS1jiL7PlgGULgOFsZmI7WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768781034; c=relaxed/simple;
	bh=9cFcEbQXDcGXz8GIEHMooP4EboZTbbvprsOONXSgK1k=;
	h=To:Subject:From:Message-Id:Date; b=Jxlfn1pwvV6/Aub1doJEVokrULtFD5V+VJPR+aEn+AznO8h/T4/MzJIKDpgyD/l92dOpluC3H/qbNmaByzJ2xKSDDqtyjSha0G2o8ZZ9lwUeUS7kmEAMM/dijc4sHl4YN1SNGfmN2B4TojMoJQZZ07HxFDzXzUJfFh6qklpyloc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX8fRWnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX8fRWnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4976C116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768781033;
	bh=9cFcEbQXDcGXz8GIEHMooP4EboZTbbvprsOONXSgK1k=;
	h=To:Subject:From:Date:From;
	b=OX8fRWnB8LHLs8ac5ru93vfLc4KYB0l/rbz2MphoFixENjxHDqa4gemYXjxY0IoKu
	 cHCEuZ4qubQTKd4eA7KWGKLeMpzJLMfD9iVCaj81MQyJVbGKFTGU06k5rvslqS/d0Q
	 7ae4o+DZRL/PyXvlXiIACDNYqwxfW7q7vSz6aoZOIe4PBrPMRjKzS4RccXRR7vLXrP
	 ZdIv3e9f4mTGU2Z4/QAFZe2Pwg97OswJfyMYhLgrWH8FxE21KjTGErLpHSbfuzpIWv
	 pKBliQqPiUxaqhb7SKyzh48rz3gqyfSvfyPi8uPR+W/KRliWDwJqcJSkEJ+Z/SgSWg
	 6YuiUlvgoHN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B72C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878103358.15330.7316448313882554422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f0209c84900615e5be7b2934b7ef4e236747e76df7d69fd91a3fd3c5203c9b
Date: Mon, 19 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768781033
