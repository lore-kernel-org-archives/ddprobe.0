Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12353308F31
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755273594; cv=none; b=cBWUhyYNwjuE/ACiuSiWtIuZ9p/hBLIIBL9AvdXtNP/e7HtPYzBTIplMAoy/CcWi3kdq2IMbBCoxjyZZAY1ey+PqRVT/4BF9LsgQ5EN1JcWeZ27lDKfbcXUTQjrMT2IZ0eXLiKBduMiDi4hSDe6B7Nl1f1kOWU7so5dfqngRGvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755273594; c=relaxed/simple;
	bh=nTTSxUHyDQn7KVpp0MxFLiATMewnFC1dOCPiOcmAiEY=;
	h=To:Subject:From:Message-Id:Date; b=QnRhvd1b/cCe57poZgnB/ywQiQ+s7ISIInMEkJqO2NFsUbvqUxyzVQ3LB6Pbe8COd81vr8sdtw2kjU66QrLEP5kTp7BI3D++7QLcIIYwHbbZGlpV9h1gpYwn9YCAxaPYJqlwjyaZwW+cAefBrC0Dwr/sgCN/+Lm2tM6shUd7q4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un3nmC+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un3nmC+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96622C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755273593;
	bh=nTTSxUHyDQn7KVpp0MxFLiATMewnFC1dOCPiOcmAiEY=;
	h=To:Subject:From:Date:From;
	b=Un3nmC+EP0J0Q3+VExyHNBec99srdXT07kt7DndVg1EYdXTlUFca20EReTiQjsV6O
	 EPmE1iy+LM1jr8GWbVC6Gp9BEoQaYSMsVox3MB5jKgf5oxMtGE9rBCpa6MeP5qs+nG
	 +o+rNN4hGzrx/b9onui0njGwX3SxQzp1Ijt0oydClp4tFZd+DMrCam2tdid/umcoYw
	 xSPByyX5mrbf77qgev7xjFU4SamwqbpKWxF//u1ddehzq+7j0W3q9MM10eS0BeSjFe
	 XFo4S9IAc9IPtw6TaSuJyX051c2Lu9WUULfHBawgx4/DkF/2bppmpv4gEu6Yi60HrG
	 C0drUJrSuJIiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D8CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527359357.8957.11656525763079523849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9df9563a8d9958c14f128aac519e3d7fd276a319b79e420d4cff254cdb07fc
Date: Fri, 15 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755273593
