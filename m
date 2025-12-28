Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0406D1A7
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766916834; cv=none; b=iQClLQ4OH2vXdgl8Ng85fP+H7JE9WBjcd+r4l3dV1nkMdDTaQtvuaPvn1KjKRC3tBvAW61M7cPPIgoW8USGTwrKe2hYn3Kp+niJd1+PIYhnLoh5DFaJ8NPgncdoCP9xGmo4kLsN8VKCePAE+e6ESG7qqXMD0EMlqsbWUznCrJjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766916834; c=relaxed/simple;
	bh=BvAXiBUGsAtB1VIU7FYZaRtajuRhnYPaxhGyLcv9QM0=;
	h=To:Subject:From:Message-Id:Date; b=fkoJGmef2W2o38jxbcIx6zsdpBUdezNQvXJseMjjdbYfj3d7CJDIruho6Dbfpc/MlqhjRa3ftYLy3DF6u4p/c0G3sI9RhhYy8SUnC889WXFtOQF0juXNl9Au9+sNH9tNBsHtYBCdf8JIbGkCb9jwxGcyVTXEuYLU6d0XqEc5FRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTCZYUdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTCZYUdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A53C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766916833;
	bh=BvAXiBUGsAtB1VIU7FYZaRtajuRhnYPaxhGyLcv9QM0=;
	h=To:Subject:From:Date:From;
	b=tTCZYUdpyj65AiGVgY03yTC6voiTaxykVLnKht3ztmuWpbgR+S7roEzmaaSjNB0Ox
	 +ccfqHj3O8d9dfOZccBoFfFmwFA870gvO4jWWvKrk669Ael9HTGotS40eedAL7PCwk
	 cdFdoAXnmp5NIMXMHRCIbArEa6fGaV8PGAaAyt4WkHDe6N90D4ULjScApIL2lV8Liu
	 2JK1NMz0Z1rwyCftxrDYKDhD6jpT/rUixV59OkfMuRfx8hwzXmvePKOY+0RbRm7GKi
	 M+X/EFD2lv3tDCEc7RQTjE046FUwB4LtLvIG6volxxdt9ck69rwsQC9ixqSfnjkQh9
	 EbK+2udDFHfFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FFDE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691683360.32219.10599622887164996192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285844f5e3dcfd94f95b4ad75684816943983aae89bbeaeba1d727461dae36f7
Date: Sun, 28 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766916833
