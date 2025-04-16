Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD6422A1D5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744790394; cv=none; b=GY2tFdAO3ZwaFtux5IuJfDyg0RU4td+YPTlBB9rkWA/zh186rfPjjG+HySbpLxtlkUBS/J7FO1ETvo4Ml2rwIhDhDucXnMrHJXlGeyy4B4aq5ai9xOsdtExCUDItZrn4z0BGPTobmksmoE+harh6k831q5iJ7FrPTAtE5FHxaro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744790394; c=relaxed/simple;
	bh=P/WIrKJm5pzvWaWH+Cgq0dlIqsl8HhQGnsqrbgvh5Hs=;
	h=To:Subject:From:Message-Id:Date; b=e4DtmeEK4PAFgsCIAibUinotrtlms0bwQnur4roD0mrF/FXdsf08c3quiCKaZnr4pWKst95pZ6juikVEb4eYgEuTQ79IcvKZ0/+S3XsBr0+22WMuJO3sAIhwzavWJrrlogYM1FIjrNjo3UPKEoxLm34lL9ZsxVhczQbc6WNIVlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm+u5T0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm+u5T0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15DFC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744790393;
	bh=P/WIrKJm5pzvWaWH+Cgq0dlIqsl8HhQGnsqrbgvh5Hs=;
	h=To:Subject:From:Date:From;
	b=Tm+u5T0B7I1boH/0LMxOIaTDo85QRe/yUydZ+33N36jRfdF6hNFsBXm54GjM1+89A
	 lDzKCm6WkoDxeYCl/EUs6sUy4phIXseRv+3utQsxfhhYqOolXpdxAUXuhJujy2IRXZ
	 G939k3s21/LNaRamddywj5i0q9rl+10aaIS1igFnm3oJZ0qcR6qsieJea54hGvvvvA
	 gVyqgkqc1Te8+fS/xiPGRTxMoS9CskWJL1jamKipJisT3RrD2wbzfY6ty3YsL8NKpK
	 WHyUcIhQnEWhJGEm0rPIg006/ujcg9ktD+yv7TPp+EoGlEg1ziynRgeoOPYIUaXtne
	 OimfLyFGfvNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92784C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479039359.15901.17977753498218776915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befbb9babe3e8d0931847c34778111ab5e183034e77bc95fc9bcb79c23c7c21b
Date: Wed, 16 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744790393
