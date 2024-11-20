Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5B719D8A8
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732105554; cv=none; b=cMBobppUKuUQOwqjwo73hBvZNbISEXjBkmj7PUAVwzo5G8q/UPsKTMYXVvzwg9aXZ8qFqOtbg/JkaUFq83QFK87s1a4gzQpD1I+OhOsMGm5JzgGIti67pZiiC/H4V0XJL/RkSmG083EDSmJ5Tck2Ru+y0Rj7mhJKbZroKgZfE+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732105554; c=relaxed/simple;
	bh=31Om+cybGgkCm1XM3/D+F93nkC1KjxOq45S/dhMfKIs=;
	h=To:Subject:From:Message-Id:Date; b=CnNhnX3eUeJZlnhYfzDotZwMx/nr697/1jQrJk5t3boSuawMwnj6R5cpkwLkj3oHm56T4hL41j+eNdac44JOm+g6PjrYntHWH6T5e/iFIKNjj0QZEEgHTfjH5rBPHj8h9GfIaOkufADS5KNi0qAoUlrzw5M7/71nMq+QFiqTLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCa4zhgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCa4zhgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD199C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732105553;
	bh=31Om+cybGgkCm1XM3/D+F93nkC1KjxOq45S/dhMfKIs=;
	h=To:Subject:From:Date:From;
	b=JCa4zhgv4NYUenSVM2M3wQOY0K1X2NjocKnKJra3jGpx5wF65L67opozKgcsyxwz3
	 uGzFbQpL6ELXmJxKDSlfhoF8DcvBD/ens/Jn+Wah1SZuGMHShYK7dcln3eFSXndXOp
	 TxhI6hiMpWJLG2Xj/HbROkBZKWsEnGiOW8Odz/HnFNlRGTn9hAN7MUnMeB4zqhOKBs
	 gSBKIhfnmfG/3YNxMGu79Uql53pSkqq5Qok5bTzYmQCFWB1ztNiQlFiWGLbFKEgg0Q
	 mQ5cw/C34lecuTxSjHBfHKumt3Ae0K9r80kPBWdUgQsSlxuyCi7CLooi8IMDQF8bHw
	 TihQ4W2mBxqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9796ED63933
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210555361.18620.15722344209522264581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f9b697f0d5afcea6e402d995dc4bb6db3b8a1c06c4659ee8b77f0c99fc9dae
Date: Wed, 20 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732105553
