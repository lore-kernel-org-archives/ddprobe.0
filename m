Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2214D2AD3D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773113095; cv=none; b=BqhEj0/7ME8cV1clzGdikQiXceOottOJCpVTq9JvOgm1q4CiL+0oAlqnJolDSlX09jUb7JnWfvxQcaqWjzDLSbz+cj7H4gxlkoPt6Vd5F9fGe5gP0BGURDvblt0eYLh5GLxHIbzpoY5Ci7FCejdIHzkXSu4JiSXgkGpsbd9N73M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773113095; c=relaxed/simple;
	bh=Zu8M6Tfkkjdl2HISNe1opAbHo4kyCffCuKRapsVrWEo=;
	h=To:Subject:From:Message-Id:Date; b=XHp4mKCSpoVkk/tsnZwB4p+7JWSe705QiyZY8JfuXtM5ED7AELKfwcejj1IuAwQXhKy+oW9y4xHIkHtbXGI1Yf43gXn2bn9uYNu3Mjg2BDCgptYgMLUiL1JZ2c6cjvuq7GgUDb4IyFNwX0TvkrBYFVYTChAcnvRHtyqNs8xgU1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+diSbDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+diSbDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0369C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773113094;
	bh=Zu8M6Tfkkjdl2HISNe1opAbHo4kyCffCuKRapsVrWEo=;
	h=To:Subject:From:Date:From;
	b=i+diSbDU3dsxz2toRP1Ot23ElRiPC9dkTLtCu562YfGrtRNA1MBVLucFo9BSlh9Kd
	 kYkBq9Ukq2JCqeX3UZewsluu/zuEohKAV8BmNYOxzqq+KVGzp7jgcTxUNr6+8lE1F5
	 OcK6maiIgDLD70ZU8qMTU4csKtu8KCnA6z51++CNZjmMfuJOjNIv+cvLTjvZ+ekkOR
	 5bOfo9P8lqD2Y1Q7QAW/k8sFteQ2Mz5G4Apew2IoVamarskyGJjbQduae/K3sPqduQ
	 fuFQR9/lQvxb3mtDIzjVvMrVxT8qY1q/CbgOwKoOU9pDF8l7qgHIfid2CFeA3tFwYb
	 r2sSz234Q+gog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97666FCC9AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311309360.2787.4332002115021374526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6f55bfcfc32df14431d67c753180f12bc10b9a858ba223b14275f77a992aff
Date: Tue, 10 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773113093
