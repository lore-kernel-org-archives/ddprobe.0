Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A831C3314
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755448795; cv=none; b=W6GufJZcRgsh+oDi15JbQGkZLSInc+JY7h8wgF3TtsI1dAhM57q3cn73hDM9N9hAQoq6y+Kb8uK29Z3jbbWPX4AXlUkrB7xwSv1O4jfbWOwBRe97rjuCapcakG+72OH+u2idVM+HD5wkO+qntfc2IoVwE1sqSHVGqyRxeQggnic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755448795; c=relaxed/simple;
	bh=AEz38oUNhY379HM8VtSRSAnHRneDAvxQL/rSoZWl0bo=;
	h=To:Subject:From:Message-Id:Date; b=Kat9wNPG9JqxQdAnishdb6M8Ha76QiRRCTf9JwNGCOQBaFdb3rSVdhYsQtVyRdAdGpHeey8ynseXkbFXneIWnJZuPycHIJHuYjUDKDUcL5PuM6nAI4dBtwVpkGiz9Phc91afJRGfTyHKNm7ZRZBMVtUQoGwGzJHF/Aeqi51Wy4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSyYN9vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSyYN9vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1365C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755448793;
	bh=AEz38oUNhY379HM8VtSRSAnHRneDAvxQL/rSoZWl0bo=;
	h=To:Subject:From:Date:From;
	b=eSyYN9vMPnm5PjPbUYOhUhTlALff3X4Xi6HF769DMEllGvtVGx4Qd1eyjq3fx3Wsl
	 TGtkQXG1I5Nw33enjxo9Q5QO7kEdBb/BhuKKfEu4N7OgHOB+nEk+LNazylGX4sIyHN
	 DdvFsm/jBh27UUX4tgvDBEW30Oxe6pii1NRXG0AUe/+RYci502HcgiShr9ZdVFjf5h
	 qnOGb5yz5djMCLuzwFs9eetJtbLbWgAP2n2GxlhEMhmk63vaEbM4DRsBadvD5w2Wfy
	 lrQjSgn+0+/dRCBk/yYhX1vz5MzgErghIyAAmXpzlIFbBMRxRww4uYNGNxSto7haXA
	 rBhhtoGBp3mbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90579CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544879358.31434.7353231989265050059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e0bf5ee6378eeab7af558cbaaed22e23f2fd7e93e0ff6ddebfb7dc9a2e0e24
Date: Sun, 17 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755448793
