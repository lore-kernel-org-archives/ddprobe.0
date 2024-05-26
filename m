Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B89A200CD
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716740063; cv=none; b=gqRJAcv8QHVVzGgRnnn5uJoLKixbUIZX8El8ffHsVUbV/SzqeU19NV+nbPACI1e2LApJMMcpAtUSM+syNwvno2MfnUNin03A073FnPAzwb7YLIKWVsVgcIkAlgdlHSJSrGHmaPfBQtRZuBn/BElJw2AHFO2CR30HmtfTd8l4Z5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716740063; c=relaxed/simple;
	bh=ooiTIy/JILJRjLmQ5QTuwBHjrCCAWKMTfEV7dSa8tRY=;
	h=To:Subject:From:Message-Id:Date; b=RYHm2ZxD9svz6C0XN3oNM1Vl4g4JGEqI2P3Bt0+FjiIakJkTBg0NjUCl5tTFikbU+qONLOvPegwcA78GjU3YLgd0ONv6P2k6eUC1gtlxiJLhr/vMyx9yhXitX3d8qMbqxhbL4dbP+QsD2KMV/CbcDmRQD11SP70m8QcqmMxr+h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOXFNckl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOXFNckl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF13CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716740062;
	bh=ooiTIy/JILJRjLmQ5QTuwBHjrCCAWKMTfEV7dSa8tRY=;
	h=To:Subject:From:Date:From;
	b=HOXFNckltQT+UMDwbI0QhDPqubXgMows1vfvx5q2KE8+N8pDuv9ovvIetr5DJdgwv
	 0zzUNgdeT8qiH0sr0iGuGA2EfskpurslTroGqj7vaVIm/B3jhuAo6Fj5zYLNRkGozx
	 onB3oh/S8mOcppQCiEHD4yHtL6KA/SGY5Mn6ikIOo3qBLLdL8Mfkzg1BU9RMh8Iew+
	 qkz5A2nfK3CtE/mPVA6u/Y32C4tkyADEolbN4J/ZwC/0I+65Ya5zZ402+XoA1kZW1o
	 iAJJxB38e4GiDUaSsNcN4crM9Pfnl4PnLXIqqs8DKi5dA902pqk3fW1+6xwPK3KfLy
	 lMwKzqm93OQnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB860C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674006276.6139.7235616743026261423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5023f76b0f0989f71bcdf0f5eb6fbaab9a25bd36d82df4ffbdf72ebabb44b5
Date: Sun, 26 May 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716740062
