Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629C94A21
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743899394; cv=none; b=nPF4oSdz3gMPAxI+2BXKKKbrMuw5lW8Gii6bMXegXt6StMon3P10NpgC0PLFrCI5faR+69gevwFdy/zfIgm/HyrsiSrSsUmZyJZiTFnogVKerNFUVLdV/pAVFQxJ92wBlWf8ZvVzHJ0X7nPrdO6eItrLeLhoXZyChNSR/ztaDkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743899394; c=relaxed/simple;
	bh=umxXBfb2bjMZju8cR1II3cdo5rdnTXkSKR6nocD8JIw=;
	h=To:Subject:From:Message-Id:Date; b=T1IMC07QIyLy6CM3EsPz2u++hC2/5njgMme3aBK8SBux1EKoLQ5KKim+/tdV19/czNTsIz7z1bCI0ruAdvTdWGNyLxQfgGMbvaZuQu3xK5EFVyoKJm2Aj1hSAJIJei5s5KYd3GgqxLQnhSfaXe8YjVfmWH45xHvyL/y90FDHJsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCGO6wWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCGO6wWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5385C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743899393;
	bh=umxXBfb2bjMZju8cR1II3cdo5rdnTXkSKR6nocD8JIw=;
	h=To:Subject:From:Date:From;
	b=qCGO6wWwAHstgw28mLDNoe6lzvoWYNpXV0XdmZGGN1nl36PSqorh6czbW3FSG6k1I
	 2B2Yf5LM7F9UfFNbv9m0uqnrhgcXz+vYbGysfKjHgBivg46tUE2Qnjvia3zLTMtx4C
	 mh7D8qiDxGKLJvkF+ScLFTmVJauv+er5YVsBAOJJij5D+ZHIhyQxPLKHtm8hNJ/R+Z
	 kyetK7eUoOZN5Cx5OtCVD8n5+S1zmcDpCw+wUXwwyiuRFtbZvRaDqRgsHSXn+Hdu21
	 PMnx+TPUhNu0jzS/N1U6FYP0KgE9xE16CsosGJaE+BLbb00O/2cK3EtZt1gh3bUm24
	 pLW9YVB9NrjKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D769C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389939361.7939.16969102178777045141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2faa6096db546cb20f7a8e826ad6bead96f780c9d26d11d34a534e677a7e09
Date: Sun, 06 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743899393
