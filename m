Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64356393DCD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791314434; cv=none; b=A1QnfTJbMti9FSBtkEofqdK8DPlplqEn5VjHhrER2k6SvoBEQKDNkGsXG9afDuj79VCzhoJ3r5Tyck2QGW/J3Irdx3QUS30h1NCkNV8udF8OD6BPtIeCGuaXfVmBUbgeWDTuckfdLm5PQBhUXkYYy5gGCqFy3GLPfRa518ZG5y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791314434; c=relaxed/simple;
	bh=E1cSfJjlmC/3JIG+JrKAjZ8mjBwB3PeHmlLJCSM4KvI=;
	h=To:Subject:From:Message-Id:Date; b=C2kyG+tBiQJFNrfSdGZGM0CmvTD+0GmQeZsg9wgSRWRmb0pah7S8YYQsMZVSSq4VKnwph3B4Ez3nqYckQaYhzwdKyeN0KYSypYo4PF8Vat0ddL3PJdjZaqfy7iazJlWdKZMGC4Z/teprJdEVCjVBuVxLMYF/f9dsTCRVLtZillI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJALTTK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJALTTK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA39C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791314433;
	bh=E1cSfJjlmC/3JIG+JrKAjZ8mjBwB3PeHmlLJCSM4KvI=;
	h=To:Subject:From:Date:From;
	b=GJALTTK/YD6BD43dNKPq/x00nllzYgUJzzUTGVQMbZZM9i+4Gll1RP1UHCftbjBHP
	 fqKZFNWt/UHpADh3qsNsK+3BusDhEWnreosoktn1Qf7lFM4n+kdYZHWk1a/9M1+lHf
	 TLjzWGktgZ4A12mgYfe/UYfyTjjtr0txanYkfs91c63b2PLHIXQioJCdhwCWVlRoqu
	 6Be3orO3WujyMwK5wI4qRb9tSD4CRmLGVE+NZ13OKdFnEuvrNe0LotURIn/5PZE3/u
	 yCRYvX8iCEt4LONIsIgGauCVf0tOgiMYLKMO46w3kbsXDsaG7nc0FabO0/E9lSoKkU
	 neZfQRe+sZ8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B7ACA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131443370.16437.3711689475781868524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c607bcf0195d578ee9fca297439817947707f5e55b1f4a7b318c3e9061c10a
Date: Tue, 06 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791314433
