Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAF721D596
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781546194; cv=none; b=Q9o8K6KsNpmzFVdhZDJo7NAxJsNqNWHZFVtm1nWNemPeTOgPjK/kZxMFjr+aAyTy/CRUJYrKEC4IwdJX3qseiitXxEdvKPuwWXDuYgKxqrHwyrlpWji1zV4dL0Nwykj/QInJSa4zsXw+wYoyXTWZSgVvWr31lQEQ09CksqOtms4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781546194; c=relaxed/simple;
	bh=PGHlTQelt94FjhOmSxpf9IasoM66K9huU6bpbP1Yq1s=;
	h=To:Subject:From:Message-Id:Date; b=ZHOQZX6FhvrgIB8NL5mitNVfnaW4YfBnidF5pJfy0UL/0s4RmufDPZpd01CuTQNr+fAYv3h8sU9xhTLAsybFHr1qPEfbuqbUIzOBJOdahCydZ9/7wvyUStfKhsjxrsRWqceFyd/hEEO5WlloeQZ+ag4eaAaiIK59wL/FIY1KJ8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0KZwbIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0KZwbIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE340C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781546193;
	bh=PGHlTQelt94FjhOmSxpf9IasoM66K9huU6bpbP1Yq1s=;
	h=To:Subject:From:Date:From;
	b=r0KZwbIa+DMQMSOMKpEXGQI3jsbDngh+iOEPw5V7AYULfi5J/azF7fEconN98d4ua
	 O9JgEyUkiBsOCApVmFsnFK2hLFDq961pXC8Vwrrgmws57zsuI9vPIaJWVghy2X1mkz
	 bdcxQ4NdgaRebqj595t6o+pDHQCh3cw5ED/pwjmJSDmrMPZAJN5P8mMrAEgyizrZt9
	 QOmdKrJMzXpyuUVBdVcXxlEAl64CH9jxin8xtys2NL4ZgG+hqY/9u4KMf5QvvMv5a9
	 BrdJ4U/rR7eA8GqUJkVGFZ+mYRKdkuFAsaevGDPIYlVOMasbMmMsck0Jv51nkRT0mM
	 42/C8AK2+swgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CB3CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154619369.14020.8969961186749167297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979d8e96ce59b824058e9e05a36d31270ef54c4e780ac4de02accedb45122e8a
Date: Mon, 15 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781546193
