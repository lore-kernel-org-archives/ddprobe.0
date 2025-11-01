Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85334D3BD
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762003194; cv=none; b=SmoAnRFVhUU06cMh4m6Ax+vBg/97U3uARcqNxYZQABw2K4IRsNG4/rU3pyzchzsaTIUok8n0LaQyWRD6vpThAZeVM1uf7Jb837hx4zHEb50mvIggIygZeXE+uqW3JRXQyWjV4Zl3/qnpsuWgUBEGPCnWIY8LUfWaUfHdhwHZv/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762003194; c=relaxed/simple;
	bh=euZ7rfaJzp9gf5M7U3ApA//6bB2K2B/mzeT4sl+AzGo=;
	h=To:Subject:From:Message-Id:Date; b=dP9fAolg1Jz2cpNiL45pDjNXvL535I7Vq1sig4C0paQKDHwuozzMJkqeQHsnnJamstuKOD+RnbmNmMuifG9O8DEZjgmOAmI1YmDCf2IdoEpCH55L3JH+wNS3h3MXH0GQFzapo0sGv51USe+dBVJQvgKO/PRBoYcvq2oczL8Qpr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KirPuOyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KirPuOyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0600C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762003193;
	bh=euZ7rfaJzp9gf5M7U3ApA//6bB2K2B/mzeT4sl+AzGo=;
	h=To:Subject:From:Date:From;
	b=KirPuOyN7yUbqcwW+Bap0rV7cGZ9sH9mSrCy5gHf+bBnJbzrFiJZyRvx13teiZZYY
	 f20AW9pPkIUPU6iAnNWlHexppA2T5peICf+v5rzIndhgJdRE1XFxFqzNf0BZO3jOIk
	 9/AGsfYT9WLjPB6zERfIYl8SamHmJB2bMkyKv1XTzO/YBEbRamI24y91zDu3p2h345
	 0fwGHcfrcWkDIhpTGdGAIioaEfilkbIparFh+xtGxxG53tLn/rjga+8+h3gvLU5GaF
	 JhdRDChwPKaCq/CpqvkaHSSAbq5fEEKoKYdWdW8ZYR+p0Hyb2JvBvtXqrltiDFBr2M
	 QH0w8RU7NgrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B69CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200319360.12150.8488870776890546837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b661c90c4560b78c5629f45e1e4f4f3ca80e6e14f45cd9b6b893deedfc8a7e1
Date: Sat, 01 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762003193
