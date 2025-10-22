Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160071F2BA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761136794; cv=none; b=PioR+1njzwhgXTBcYGP81rUBUt7tumGvHypgqF2RqQrjXMlpUDeCBg1KTarWe26kMaSw9q471nlrYLy8UOgugRxLx8bL8aXzbnKFcJYAjk5j9AT+zsDZ6iyc3Q1rzbsDHIt7ayR+YH5YjwjE+HwO2750rY8BErU5E6PHI4y0q2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761136794; c=relaxed/simple;
	bh=tukVCp+QyVnlxpjuoNT01tkoKhEBQB7AKtZ1+Y9e1Ck=;
	h=To:Subject:From:Message-Id:Date; b=EijskpR2YvYYyHwht+6aUb7YMGwSrOTWYD+IvXw7aXbzu9s7C0AkAWGAO4NKu2neIOf9eeiiJYwotkQxijwYuDzDAR1qFfPOsZRsJ0YjqgrMuEnH+oe1VdJbIWEII3fY6uUk2Kpbxj+Hh6EIsZUks0C/yrRHFrWIY6bfFWnfUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jay6jYPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jay6jYPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A558AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761136793;
	bh=tukVCp+QyVnlxpjuoNT01tkoKhEBQB7AKtZ1+Y9e1Ck=;
	h=To:Subject:From:Date:From;
	b=Jay6jYPJrlWH5HVoViGH9kVhG4jnVJjJkvcIVj/TxnEfutHepO9ZeH7Yu5QpB+f/R
	 gv6q2Y7H81D4+Z6m3g0s4mHA7LInPsysU7Qj2TAX8fEhPZSQYrD6qCU+uxGh/C8Ehf
	 KsW9HnOdDRe55D0KkixpHIZva5y9KxLYSbSHnNXAJ6oWFtNnkyu7ErO3IyaUfE0aKJ
	 thwn7uUqVdZ0xp8JefvAvssLs9dir2Dpmdo2GUtx2SWZk7yeWfQM+29kZ3Yp0lwluS
	 QYY2nEumRPi0NEjWgB5BrgKWXbB8tCuxESTkPw3S8CZFCzhkUeR4FuEmA1Rmpt1esI
	 eYKs8PN5Q+K0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90090CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113679358.13831.5502749700240445743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acd8f40bfe37b73697a6f17a780cdc03c291ba661dc06a97fbb0d9d76fb6195
Date: Wed, 22 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761136793
