Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE1D169397
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728516354; cv=none; b=NCw6dGVA8iEioPcWl5vMecg4K0TQQOp4lKHIVzC5UQvLR41GHdxZ1a/1R4VSIdfilsSV1LnjQLwznQ2tvSvk6/xHsT8iACfbN2QKoFaS3OlNmO1pw/gdPTfaNpdOBlGNwjauKkH/ORZqtTMmA/IbxNxFZv2uGng/lN+bCEhwGpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728516354; c=relaxed/simple;
	bh=RvZ0yX3ZCINV07DJt+AbsNj1km3DrV6wUN284c7gumk=;
	h=To:Subject:From:Message-Id:Date; b=DtQd8xZVUwJohvFpPxd5jG0O+Py/MXKLwEIF9XgSBZE5gO42bIRsBGd+QEUfzzvBwyEQ4ymUdDFK52FGz9jBB/9Gv1R0eF7MKNU2UKxTeXufDzJQaGbW1lneNnOh9CFF67EYxs90zdLya32OvvjMFA0hp/GDu1Y8LvGh7vna7s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdhEf/88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdhEf/88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85F3C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728516353;
	bh=RvZ0yX3ZCINV07DJt+AbsNj1km3DrV6wUN284c7gumk=;
	h=To:Subject:From:Date:From;
	b=NdhEf/88P4Xy3n0vmrUK2oQck2qfHQP4Ab6+u/vIkPFmVNEVkAFHlXhchI+u5tP25
	 2vrsZ7y9DFwhdt0sx66+HngroKm6CX43gIzyPY2gkrqRFC5ayJ101+P9oczZzmLaff
	 QT+Ugj+vv//1R9O1nJ6LPDiiN4lQXRSEbnBxF38SrtBj88/mgW+UILS6YL6dgXQBgG
	 UFVj+vxKipTC/LC3qdagiGaOg4OiGz4zqgALl7PrStP6r5wNyZKEjGqnmNdS9jd2Xi
	 vdvET2Jco4old29jMw4ezuwfNhIr5PEbTRoh9G89bpRqQezB+e2Yry+hHejUqEB8Xg
	 4Mwo+9c3qMHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99168CED639
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851635360.19776.2542758553688704805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212dfcee79d2e8fa44404b42c82e7e71b759e5d463cff29ef6c3c295a1d1ece6
Date: Wed, 09 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728516353
