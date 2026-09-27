Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBA037EFF1
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790479834; cv=none; b=aioDVd6aem4SMrenUA7K4498jGiLWO8Uq7dNE/WrdPMI5IR/u0xjpqi9lCDRGfh0LcS1qIO6uhCfvkzoYFfa0f5w5QXT0ZNshlO4Nm7EWxcr66ONuTWHc6GpFb2j8o4veTMMvvH5qXgowo8I4rzNz9WihLm2A3VLCQWDQKhonRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790479834; c=relaxed/simple;
	bh=rohG8UaBRYOv23uxynKP7l/QRKIZIBZuEX7Z7ZdoT0A=;
	h=To:Subject:From:Message-Id:Date; b=G4Zlqmgb1vpRu4/FJGb6PvItGwRK7AQ5D8ph6ZDDZ8b7OTV1Cr1AIW2G3EYCxn0vrJFcU+eBwr3wh1ObaH2e29P8ElEI5SkAyxAVaR3I8AT7OBiaOcnsLnrBGILleOSwhjP5fUKAjLMI2NfvA7anQqzm9CcSK0Hj4FOIeUlGv0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxaIiDKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxaIiDKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE331C4AF12
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790479833;
	bh=rohG8UaBRYOv23uxynKP7l/QRKIZIBZuEX7Z7ZdoT0A=;
	h=To:Subject:From:Date:From;
	b=HxaIiDKgNCdeh3L6RaGxLc/qdofEeFCiuIib9k96NZwv+mowiwjtfA4lQnaWExD1S
	 1jwR8mV43T/coDppOKItVAFBsbNsyTXUfsey3SuSdIxZ0+uWk/Vyr5im46cMf7F+hC
	 65jnlFdmRTNSleyr+U4I1fIb4YCKemW8GZyWPcUub9lpV3VlTcK9OSgNuvXbRbzAJW
	 fL+oHQi1EHzt8/2MDUUuY5nyCn+ydMDW8HJ6xIyktUsyfj4IWumHNDT1BVgfeDbmnK
	 39ijyiXwtBh2vn1JZddB0Z7le2IbzSugDp/mEzKCdUfdLTlNPKb3zkZL1kG2ZUG7c+
	 VJFizJW2ftakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C6C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047983368.26199.830330580516021831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da09edc4339e3abb021ec5041bd87f6c325da08eee3c6628b3921a51f1869a8
Date: Sun, 27 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790479833
