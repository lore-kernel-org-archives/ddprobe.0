Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594A06AB6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720343183; cv=none; b=F4RRAOkEkzLUU/vssyPF1tpG6cHd1tlpdX5u52mSFr57F1hfvIigcamFkUU491Ai8gTF/CKVgBbsrFGjT4gwmAwIS6f7TjYg8Yp4uEfMJZs1dVxyxdhOQ94ieRdmwLeqerecxefj/8hyvvazMxB5aaYmrhdll2n0aJoiGXIOKUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720343183; c=relaxed/simple;
	bh=TqSWNLaMQtd06ijly0RowhTJGGsA4vt+I8TNLJhwkdA=;
	h=To:Subject:From:Message-Id:Date; b=Z0ohxIl4f+c5DhKmOYpY67WQHryV8Z1YRZyLJTfaolfWwlq9ne5rVeYKDsxLICAMpgeAPDejuH2MkosoK7YrowmiDKnUTn9KjzeWzPI5rHNVRUqXIkgj/wMYmDbAVaAGiJQubowyFgv/YlcvXaYbrkLO3k8LPX6YFlc2odVCitA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpwBEyfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpwBEyfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6C9C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720343182;
	bh=TqSWNLaMQtd06ijly0RowhTJGGsA4vt+I8TNLJhwkdA=;
	h=To:Subject:From:Date:From;
	b=QpwBEyfKbhZ4p06TsoVxsvFoXky4R1Y5iNyi/hSDH8i45almXuk/M347ui4QwBDiA
	 CIlItpwh7HAbHAdab84k0tlFKDCzlMA/6VCGFMPALVOPt3Suib5vzh4AttJcX4/tFj
	 c+myCVih4ioe/FHpjsyGnr0LWe1NpfYu7QOzJHrYZoznTn6jui01cYWXW/cBgNQmBS
	 bd+S1WlKhiyz4Ao1fnxAwsjTryYnFa/ZcgIfqkuirDUqPd0IAnmzDDLlBYNsfBsKEc
	 7hNYMGs1r0wUGP7bgWC3kv7Ji1CQb38aORhhbuF9DAuuyvzTghXAij5D1/SQH46URv
	 QGSD6FiZoNdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6E3C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034318276.28736.16435995099779765804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670ebaf3431f5b1b732058712b5e370b3dcfee62a9097abcf50c8b31754d72cf
Date: Sun, 07 Jul 2024 09:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720343182
