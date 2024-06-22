Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF78537F8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719040343; cv=none; b=M+GUYSpk1b4bhuv0+vfWjpA1sdog8trX0yfBDDarax38IcnV4uIrmmF1A3/DEwjnkSn+QWZVl55NcDPS8kEZ0joHGYNpwkrFDoYqWWcmotCcpHtx5/LmXLZ5OCvQTRKFAVEKrAgsfuGpTEjz1l0AF7fuUVBjgVJMkypNdn4qivo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719040343; c=relaxed/simple;
	bh=fmyM7a14gB5TyIb0DBcuWxigLT+YCbhrkcHveEtVN1k=;
	h=To:Subject:From:Message-Id:Date; b=qiZJZDLioENp4zzcEAYN6RTz+IzUu/K3odrmFzXoNc8YmQKdLXFVH06HGgb3SsXUMeLb7SOYEPZGqUmcSsf78xUi02uD8HzJJ2VXXUUCadHRNZJttOzM+HOLmZfTDiQef60UIYQNoFwxToGucDyXgwBue9s8K9N/9FPjGtG+ZCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xur3rDbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xur3rDbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00E5AC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719040343;
	bh=fmyM7a14gB5TyIb0DBcuWxigLT+YCbhrkcHveEtVN1k=;
	h=To:Subject:From:Date:From;
	b=Xur3rDbimoN+l+Oum3seL07ckKVopirkhgZzE0ipLewUcRcrbvUUe2+QzDwHql2hq
	 IgfggmKKtJe7hP5Vo+0scJIrpcKlwlsCtfxokG6HZJbDa25p8E8eAvh57J9s8qvBa/
	 lD5rrRNU/tB2uAMTRubQGyF0Sb5BdTI5MBoupCNstfJNbAKtSOQqs6vPOCFglXCtQx
	 fsVqFrWpjN5ClFJs+vgYd26jrUJjSHuO9ZDdVOLzsm9bMLDbb+fVlNCCOvA8xtOuTD
	 yD8OZqC3JVcVCxOrSKI1K2LMNRUo4BB7apFH+XKUyqVu71A3hy/cVo4qxGC3crUR/T
	 FqpsldqloWJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D70D9C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904034285.7497.17374472767478497917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9778b1b7399e31f9fac7b41e87f4db2cab67e4a145e7410f7e2c0c3c6bb38ec
Date: Sat, 22 Jun 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719040342
