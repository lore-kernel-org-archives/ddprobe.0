Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2908E21D58B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764015774; cv=none; b=XTyPNLU1y+gx/AGy+nG03SD0bBvEkP++jUWJFHFgrKNK/dTevqETK0SP0PIfOGa+coEfe9AMOWDscrUfI/4Tm03cuhDgRIhEeCsWUCmlTrmjXnKRtDWTHYj4XO4l9mpmbV2hnlMI1YNQ9TrQbp25Dr5tHcM/HfUQ26USUhsDeBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764015774; c=relaxed/simple;
	bh=kckwL+9saO89GMRMr8sYMoW8w3LwKfbZFiWzl9CO1Jk=;
	h=To:Subject:From:Message-Id:Date; b=Gk1lNNyo9QrdgiI6P8Clzw0urEvtbcX6QMzL4Jk1CKqv2swQHkezZ47pRg6h/j9jxJgY9nj13JWkv2MCsR0mU2eDaYamxsCOyJiQXX7Q/1EG1NWSy5Y6q+Fa5DIDGHsAedR9+utwFMEsU19ENkRMJwSjLqptde2dtdAi1bl8Jr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLHdIKzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLHdIKzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9023C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764015773;
	bh=kckwL+9saO89GMRMr8sYMoW8w3LwKfbZFiWzl9CO1Jk=;
	h=To:Subject:From:Date:From;
	b=CLHdIKzyihoHYqrnED/s09kCVBb28Df29/T0oN5D1aVCvUySSaozISJ/EG/knc71D
	 auol4uQSV9fSEREg+KcAla1UYZgC/mM++LbDWn5MQmTVs95K0L6eOn0AOH0tYjlFnN
	 aRqKhBq46xeomKDp21invamwOnKEXpupiR0ttm+BthAQ40F5QmW0C+ZzDZrGJx136j
	 25y3c0yKiGywPsMKzdIKuSwl68CY6YWPtt4oL81b61IsHMH40UzMN+yuEUtKtRomWs
	 sRpvirK70moa/JZARYdY32aB8jAXiElBNDXfeAeqEVdadlteWwFu8HiBU8AyLnN/QC
	 eCQer8t1433Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D39CFD352
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401577360.31507.6334231470684895352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73c56dde27e912654cb143250acad646c26c288c54e6f5316804c1bb99c36c3
Date: Mon, 24 Nov 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764015773
