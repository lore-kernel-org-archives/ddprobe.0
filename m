Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCEE13B284
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715686343; cv=none; b=FWkEFRSjH+tWRinwqpTTsD4G4w9G1NEHfNun5DgSvQalNYm1PnDpykRR50BBOZ2Rt/HQWfzzHDZ/9ng8CdfOkyK/Xde6IXGFr3E4Q+sQyiUtUqkU9Ex4ZTIuFaGkrrEt0ZxgY8J/qf3lxgTvFB6aXkDh0vjA5fWR+Gp5TEgNSls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715686343; c=relaxed/simple;
	bh=hgGgrmp9PsuHQO9CzMCZf6DEED7Vq7ThQEuLM23yAPI=;
	h=To:Subject:From:Message-Id:Date; b=RUr4NJFjJ4CB3LaqfjD8dDyHb9q+w5TOUYZjCXAdbkH5xPlwWLiTVe5yoDtgmFqgte7csEj2MG+k4oQls14lxjPu9bRP1t7Unuic9sVozA89qJcRX4rdUZKsGow64f3wCZZAATYUHJ5E9Q232gyItKF72TxQDNmgSWwUNr5i8SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kS9dZgdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kS9dZgdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7B2C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715686342;
	bh=hgGgrmp9PsuHQO9CzMCZf6DEED7Vq7ThQEuLM23yAPI=;
	h=To:Subject:From:Date:From;
	b=kS9dZgddDhJ68WhSdLiBk3ozEKYq6veontXdFnDFvrMo9qX1e5pMwA2MlXzD/ATE6
	 obCzimSgOwsmxcHxQGJS3jItSOb+dWkytgpWUscOY5g5S3eze6Y6H+pI/9DOd4FIii
	 swTsun8CAl/+pKZKzVfg6XCKsKQQ8YWYc0y0BjbqXDfRbvLsfhSenGpA3+9nchFcHf
	 zEAX78KQx84sb89OXoyt0ggS2ZhtUm2UyaoT9Wzeef4WsRanunlmI0FMnKbHeoxg20
	 AEzZYHfebWLDJ20CkOBj9nWk0YcO3Jq0FBVZs/McSS0aWWaT9A6hxLo7bgeqJxM9nT
	 hCOqDoDpXtf9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75BBC25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568634280.24418.5121508458275424159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906b645171d78cae1fefabc19aac0b622095c00ad4cbdfe7f085e84398bd09da
Date: Tue, 14 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715686342
