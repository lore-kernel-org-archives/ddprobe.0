Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF7F30FC10
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757351395; cv=none; b=iZxgWNMohrPc5Z3fGtWPqAAXJ+lD2v5x4F1xOMZw0+gbHzZ7pc+YKIR2HIzOW2KNWM6VMneT7Z8catGImq9j9Z32BKcl5FoF/murug1yQcy3PLczJXYT2/pxajtU0sKhtVBoA7Ft1URwfhIvgJLWg4OZRwQH9FTKRRb43clinzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757351395; c=relaxed/simple;
	bh=oycO7R72YurSIQpkuMLxzJ4XQGlmKzB9HmEOgY2bALk=;
	h=To:Subject:From:Message-Id:Date; b=rsY6ceCvZgi1mtcLXYmF/ZCJhkUZeAeaMHHkiu39j8P8KiUDyBD1o5Q58qaAdi+hUBLnOOIKT/R7JusnDrHc79JAeG0CnwM3L5+tEUJkUnaGhLdSI0b+dKyf/3fwJmkO4M7bD23QDcxTaEBOdpQaWS9qD+mQshGp4powYBM/gps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kckGM4Hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kckGM4Hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2A5C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757351393;
	bh=oycO7R72YurSIQpkuMLxzJ4XQGlmKzB9HmEOgY2bALk=;
	h=To:Subject:From:Date:From;
	b=kckGM4Hbfw3JFbTEbCCcLc4LTG8SsyhPVU9Hx3dDusfZasv9bTe9aWSU7Fie4+Q1E
	 XBXCt0wMPhJgBBCHh66NPht25/K77dLPF46dyUmoex/PNdaO0ts1OYGCisFbQdq8Yv
	 IJ/DUbGC0cbS41XuFqhFsCrJlXTggT0kgHT1V00CncH0khu8ZEXE83kMsU6EH0EyaF
	 cwou2+LsxGB5OwZmy1k7/lfiuweMAZsfEVoLynYLqvU/5Kn7eQLAxWElAgMin7shW5
	 UGdymjZNl+LriYJth8UTrGUvQ4DpfZLGSl3gksEJqkHWHQ/oDDsaGmSV6plBkKo9z4
	 1zLdto2TDJirw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BFCCAC58A
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735139361.25114.9349768248558516829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52d1e7f04823b2d6c2e36edce97290a466c6a8bf1e2fde3781231851c5df91b
Date: Mon, 08 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757351393
