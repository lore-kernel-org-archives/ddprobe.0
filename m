Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561124E06C0
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791553234; cv=none; b=GVcX6TuxteKFWfoeifOIp/ANKVIxy2WiKHzY6isNhW9FLPy7pvj6XMi6mhuQf71dPjyY68Jnwr8sUw+mFC315Jb9MTM0rux/9MIlOkgQKwIuxcjw3/rM31cKkLBNyTf9FUQzOd0h+A4xJNAs92f6zUwfv19dhzUvqCSUnbVz0Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791553234; c=relaxed/simple;
	bh=qMKxWltaoG0Glq6cpIJ5+35g7C3zTtd6w/F5IIA3KHg=;
	h=To:Subject:From:Message-Id:Date; b=vAuERD+VaQWy4C6eHrSCeRiQx3bfBDFacq7Fu5EsYtbZaODn4RQuWuFxDnDsqUD2zX1mjkzsC1sofwMjoFHeKGxAZ3+2QsC7CDSBxaA3WICC3AlSWwuvKud03OKLBHp1LC64GtIF5FJL5UYN8i6WJ55Wy6W90NiD8bDL/2tDoeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGS35BEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGS35BEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF525C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791553233;
	bh=qMKxWltaoG0Glq6cpIJ5+35g7C3zTtd6w/F5IIA3KHg=;
	h=To:Subject:From:Date:From;
	b=ZGS35BEhQUT2y6bvvQzWrTRgfDpt3LvK/KdMyCoGRACFlAnw31af0lPoGNrzIuDPG
	 saYQFoz4+UpE6fELyf1Be9cvhgq5PB6tTz++wcdgx70MX1ZsG3aj3rye/lfoyibQse
	 wRJNdTsB8e9ZIbOYLTa4fC/2IEnzKX3nGFjjlmcT+xt6/pEyyBRlqz18PXcBYj4n/l
	 cgUbeGfX/F4raNtUgh9VVQq7J+fTR8WK0y3oo+mswyXxelQj/dKAzbpUk0rvqNTkCC
	 mFTItPF3vGG8hG20XGU4K62OvUEHZAJTHMjPsokFJtBWxj2FJI8YTfpsUvk30pQajV
	 OEjb3iB3ML9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E6CCA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155323368.21847.6471003163195534538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d27dfb630a245b5b98f43253d836381d02b5a7451d54c9e66d768b71107fb1
Date: Fri, 09 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791553233
