Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4189624113D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783877914; cv=none; b=W5+8r8Oml8b/0hO00U2ezgk98p7l2ZqXDspx9gf1Rbgjl1F8RWyG9MQ0+uXoGc9cWY581QnJOea0tl/Wg1X5B2x7xoqO/+/X6tjuj9m8Ru41TYfiz9azNI12v8EdK9E0GoQYjbNRwQ/UbNXjdBvPt3gCjorsM1yOoDKdqrv+ZV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783877914; c=relaxed/simple;
	bh=PCY90tkQYRe0QUWkmFtKbEvAqk+O53qD7NjdEiarj8A=;
	h=To:Subject:From:Message-Id:Date; b=Ir0HJ43AFGBOMJleYCNs1G06I7uRoBU3dPQw/HMxTBN8+9BRW2fRIGmnZpMejkm6lw0XIE2E9Is5YDZWxZZmGPGjnSJ1E9X3LF2rDjO32IVYBQC+N9yXSio3UvkqPw3kUEMavWRaKEcQbxa3aGoqw7Y87BT2I6T+PxUxuVfDyQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEIQiZ4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEIQiZ4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFC6C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783877913;
	bh=PCY90tkQYRe0QUWkmFtKbEvAqk+O53qD7NjdEiarj8A=;
	h=To:Subject:From:Date:From;
	b=VEIQiZ4g/EX/f2qMhrfu0Efm0OmYDIqN3VopTi99iMFI1EMx1wnjq+GIujKUNsWms
	 zyEn7fyLSrsXwzKadd1nQFO/sK3HEKwSqXrQCsPbDcczCUB3TZigyWlqzLC8ycw+kj
	 88HDjfQYZjMYqU2mV9bxjyw0UNZ2KK3gdrhmVkQuU6v8/bEOcZCZlO0FkUUhU20f0L
	 SIIR7bBu+bQ/7lGGMoSjQ/xFbcjPgY0hCzEyNnW0mJDyR5qNaFuhAwQUJKZ/46y0zR
	 qwv2T5e+cxEEIG0kx5CWsKYqW7rGDDqEPBwCTmJ7SHOemn/Y98P1Uh0g7+zlk/ufgH
	 UTbAeahdCQ+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF3C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387791368.15121.7804534030149909406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043a28dbe1cdadb2cce6e641f6e8e91f62a18a5f0b3bd445025d87b0ac42e416
Date: Sun, 12 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783877913
