Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1AF1396
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719192143; cv=none; b=r00DFvt7ACD7QtxAVaXxvvgFwVp0g4gFfS7eWIkqREQ2ZzJa+xgjlO8YRNX9KuvyuSvJnIbQz08RU47jXngRApB32agYxb1cJ8figF+ffjweh8hEkC++MGntdGvH/MZ7lckcdFpNp8Io5wp9lIe3wWTLBXqzgun/wY5Owxpp3cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719192143; c=relaxed/simple;
	bh=w+k4mQetd1PE+t6eOkEYedqIFCNXIAxelEk1EhkXvGc=;
	h=To:Subject:From:Message-Id:Date; b=bJ9LmTzhyyO9JYJZOBhnlB3j4ZivkQ9AFoNQnw1IiVaqqHzYxkbvYB3Lb0p7Osq4Mv1Ppmm2K3AQRh8Rr6SGRoQ5U7VW4OpoQH/9x3CAzMvZ670gxE5HDTw/M6OA9VuyUOXH4OohFL4yR4zfOvcu59OLisfLUqsGGU9hytQsnHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csYdQAEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csYdQAEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC540C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719192142;
	bh=w+k4mQetd1PE+t6eOkEYedqIFCNXIAxelEk1EhkXvGc=;
	h=To:Subject:From:Date:From;
	b=csYdQAEXsRl/pMP/1ONDz7Dq0mc5oiKOdr81lLeFLypo6SytKaLutwlJH93Ukr30V
	 Y2px1j7PgBFZyh4cVFAYzYLW1UG4RN68AKw7noM1mczLr4Vm7/fZh3PoG22jKZrlU/
	 BA4Qhgjig9Qhvm22FQZWzvOYAo9ah2AvdbSRCIHkR7AbdDSehZhXnpc5vLV1EHMpYS
	 PtSBJTO50rgRXtdJZzs0CdgurSe3BSOBy36BidkfnSuIHT8k5sovKIZ8ieYvMbKBWS
	 PayBUfpjMqhBS+5HvJ/abDM0AVjQbdrsbSFtFGlTrS87UllX6dKiCdyBiUCceidqAA
	 U5z4m5JXPKU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E79C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919214277.27509.4096534867904033678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb86c1bb8361708c7fbd055cd2daaf4a8d96ed986d8d0e48d91f92452bd1a368
Date: Mon, 24 Jun 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719192142
