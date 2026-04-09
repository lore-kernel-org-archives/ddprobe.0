Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F77A2417D1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775708134; cv=none; b=E7n4pKflDhcetf5o3GY4sYDCm/aqLtW97/1j4oM6TItrnCHBE5EMYtqW/ttVwWTtzk9QOFDWKxEBDCI08wUwE2tPW/FE6d3/CtVtfV7Bv/iQLgVpq8CBo3q8bOXRqrSi2Rm+EuVPY9CRrfK6UvG5a9YdpJEeHJ375G24dJRxunc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775708134; c=relaxed/simple;
	bh=Jh2SjKy0mN4cIVddFJpPpz/MB6Kqs9mhmbZ5CsupErM=;
	h=To:Subject:From:Message-Id:Date; b=uf6EkwHD2+WRtGUVUZR6GCaHPGeu4IhYdyEd2gg63Vf+qi8MebP+Z1ZYyCKRpGzozL3UYec6kJw+VWkCFV9YMCq5ssoiA/NfOWJPQW9lVKwvpeD1X7kmqP9Rr2Wk+F+ISZk/s9FIc7ckhamOlB5V9zYefKLXI7L1+zwSO+TA7ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBMOKojj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBMOKojj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DB1C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775708133;
	bh=Jh2SjKy0mN4cIVddFJpPpz/MB6Kqs9mhmbZ5CsupErM=;
	h=To:Subject:From:Date:From;
	b=mBMOKojjIQH/rHD0sDliOz0NslAmnT1nPDNQMyFBieParzEGI7uf0pIE9nDo2qQye
	 l1ogmFvElSmAa8GZr1pgjw2uV8BPdOpZtq3kDqMObQbXjthNr5QF8fsJSjwWtBg4Fa
	 edn0w8MEgcqFUtOOdEdPmrmD5FAIL+v9V8xaizTZnD1C5lj9ej+vjkoNwctgnEsqPc
	 dJsan1jHXPQ3mcWJQzn9zhnTP/w44zYUJVZldCivztAy9lPsJgfCTC6d97UVSAuXZo
	 hCh+iNvLoH81VDhbBxvOKJpuoFronRXgULt80aU/zx7OhrGjTUkOO7wSUqbRxeKEV6
	 Di8oH6SNBjHzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE733E98FA6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570813373.11787.3320793072631246424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f194aafa3fc956e847202e63a0ad0e6fb1d2ac5157cd03d14b202e56cbe61d47
Date: Thu, 09 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775708133
