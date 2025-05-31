Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C66FBF
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748681994; cv=none; b=IB2TaIYtI2SWiSkHjVALm+q3qeAZJ8ZaKeRDSOaUVGi4pvaXZqmjjOpE6FooNPbZX0Hf3LxM5TCYA2bT5nidm6n1IsVIiWd1cErGJshh+8tsylmexUkoNL3SPEAXVN4v7FJ5JQyQSBU1UNCEnmp9FVKpxDYgbJELS9owIRuJoNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748681994; c=relaxed/simple;
	bh=2xPmwGMhSFdStAn1TEkDesFRFPURb5BpyVu8B96cUK8=;
	h=To:Subject:From:Message-Id:Date; b=bqjQXyKTKsFlMTtsmmUU/xMykthZTHxz8or6nZA9HZHJWv0W2L7bLOEgKhOvJJXoaiMVu3GPiKrH6m1/FIK5JhgFljiRuIIUqNB80BBthwrRSsXeEttVBLZskvdIlu7JK6o6O/rkbizGVUMl6nPQs9I+jQj+DJxJV4wuLkGHgCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCL2DE2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCL2DE2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8210C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748681993;
	bh=2xPmwGMhSFdStAn1TEkDesFRFPURb5BpyVu8B96cUK8=;
	h=To:Subject:From:Date:From;
	b=jCL2DE2Fo6cmBImDQHThftDMsrkvj8R7Q1zNYid47lrxAr7NLJv7VCoWQVkW4ypUz
	 /Y920qYKo1hiEbs07jqOBFtsl1/cYc3QcTYRDHO7zrc42wjeTQBPY4raOrxGWTDFQI
	 9c/c9l8EtANZk2OFPHA+wDb0Y6W1Zb2eEHADyJIjMOqDU9yiEK7G9ORZ1qog0qeJaN
	 sjTLiPF0iNfyrh3H+h9XY+HFZ9D2lg8zUCTRDIvNgPFgjndEP4qHJKHdsM58khBeHg
	 z5Xnv+K2Poc40QA1ApRyk6IApmMhOZd5IcFnjA4Xa5Iw7U29qGjHctJCW4DTs1Z+Dq
	 SDvLLrhjiJN8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95663C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868199358.22887.6702503617086961630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bf4c64c909d4386d9f9f8e71a12068f9664b8be9c70bddfad3350fce6e0ce9
Date: Sat, 31 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748681993
