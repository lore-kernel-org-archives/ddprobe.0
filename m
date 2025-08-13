Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417352BD038
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100795; cv=none; b=sJim1oW+N7UIdhzdy7/4f8BI3OLE6e7qeEclHuIsuVRxfr0IXmtRloJPo2BNmLuaLrYBCorLl8x3FB1AZE9qUVvtiY7Waxb0Nav5HPP+ITDOKwSfwipS0IoaZZHE6W5GSn0FYLEz/oLe3jbAxSzyZ2OXSR5XeNBvzgcWeub+6s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100795; c=relaxed/simple;
	bh=PGoyAGfxhcd+f9vPv2TyZT13HdAJX3HfdQBePl46/D8=;
	h=To:Subject:From:Message-Id:Date; b=ZiDtCXLwhde6NNqSgmZSUmKbsRqBJcD2VttOdUdpi3QLVhOJKJB2mcxsMXfUauY95bqg+SxHki7R4rQUqYtVvVgY85Y/cHrG6As2lmNoFfHlUI7ir6xCgRUF53B2p1le+Udh+/KL0YCqf4TQplSbWYmShzVruJdKUEREHUH77z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul35VZrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul35VZrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E7BC4CEFA
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755100793;
	bh=PGoyAGfxhcd+f9vPv2TyZT13HdAJX3HfdQBePl46/D8=;
	h=To:Subject:From:Date:From;
	b=Ul35VZrAFsvTJaLOCx4qymczbg3+6YOn9E5FIVKqkzepXjeAG9Gec5f1PBTD7mOKC
	 RVbuJguogltIQAhKPcn6esQCG4wEi6k72IBwuXWxmp8108Nb9kNo3ehynbiRpbA3VC
	 21w4ISOaZmOl3x8xwMcXQJl3JLCRvhVx+DP5YmlzJDTm+jDvUr4DvBhEeAljohy7Qm
	 9Pp3ZdDs35jeKShpJyR/0z3gVVubiQ8mmpsnT2DlLx81qVkj7ucs1rpgql9D5qETGF
	 HM6u0iqAF7jqs4iJrcraZwsAri4Ke6ZWHAjAubtYqTCKRHhEWZqWJiPxtBjfdQGj9N
	 rxYw8LOf+Ctjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC13C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510079357.29515.7106878177604298633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7fec2f31df974dc95bd119b31c141236ddedb7424a2aef5b98cb5fdbfd854f
Date: Wed, 13 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755100793
