Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8692459FB
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743679794; cv=none; b=JvbRvtkWtQPAFLVmv/ph4l1YCHbzboKjk/8N1ZGLVdbWpLKmqIfa8ADOMAWk05bUcyIAbZqev/eF/ES6pz4429scu8gMrK30LirgZjAimNr6TfY2Hpv7EkMJ0eRZK/NIdC24vmN+6Yk3MFgzZ6K+Kn70r7yHIMhFfGe+sLmwBTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743679794; c=relaxed/simple;
	bh=JGRBsGLli45GRELI/sNhI++Z3MnA/AZ8EYnkWDa0G5k=;
	h=To:Subject:From:Message-Id:Date; b=IJqy5RXQEaTyY2PaU0Xhdx8/b0yxDdvp4dDCwS+2U5oS2CnTFqwlwyT2WeH7aFptyJJWGOM3bOcLBNZjxH/YQo87LsvI5BGQmh2R3m5WRRcLn4ZGhJYrVBuYq0Dh27DmaVt7jmBIpADnzzidOWQCABBclskNv7SUGDYpeNl7SJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw3elLin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw3elLin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8A1C4CEE5
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743679793;
	bh=JGRBsGLli45GRELI/sNhI++Z3MnA/AZ8EYnkWDa0G5k=;
	h=To:Subject:From:Date:From;
	b=aw3elLinvmW/M/htoOZ29YJ3MoEOCSi0aTG/C4vBs8GLG8V1s5CfzNhmy5m4xXQI5
	 gGxU2NEr9zIIZl22+AUjKIhR0rdNKZQTOWldVTINTXzvmVZz34JHoiMoyJgevg8DRe
	 Xs3FcLo133hnyXzfRkzNmApTzjkv1KYlKU0jNfeT3WvKZ7TY8ARBoneOk3pxEv8ATP
	 xQmvnbeUvJSv8rCRD9F4qUlislzptnww1s+ChzqHFxqW2LWydss6CLBA5vlotru1hk
	 szIMrMX1m0fQ670p3dmKBh0vTBPjyHhKpxUNlpw5GiT4J5gT9iNi9Bt0KgS/JJ7huc
	 KTPgjc3QHnY/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A698C3601B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367979362.31687.8237939143150501894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b070751b5876e8feda58c639140f9e0c4024f61cfc65adf0b5754c985ab6eefc
Date: Thu, 03 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743679793
