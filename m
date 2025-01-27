Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493571D88DB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738016754; cv=none; b=ayLQbiXL13wfaEvrGzrpe/gojqD6iNjFVR23O5vAGtDy27IwP9tv9GsHPonQ7udSws4BwK6o+qiYe1JgQEHMXC0MkBeA5hS1tQT2uYRzJkMfga5sS1txL3o0ux07CFZ1AZunKuevoNSF9zDEyqgv7Lo3kDbMkmAvvqiLqfORdF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738016754; c=relaxed/simple;
	bh=NklVknvuHU/qJIubugt3PaLFxnPmYTmn4tNw6PaA5Ao=;
	h=To:Subject:From:Message-Id:Date; b=UII2LciEQq8WLOLWoUGzo29KCuiy0h4a4ZwA7lRi3KBeno1CtO+HVVxGQgUflRoe0/4C5/SUqMiGSu1347REaQQrAlJMZYzmCWJnhl1qZm1z5VmfHfK0/BHor9FdLzxO1ZpGVPgNr2fr3olVACpwJyDiY3ZDCkIRPld1R7kWVuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryVektf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryVektf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D3C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738016753;
	bh=NklVknvuHU/qJIubugt3PaLFxnPmYTmn4tNw6PaA5Ao=;
	h=To:Subject:From:Date:From;
	b=ryVektf8+77kevtlY4Ndmd1SHRe+ap57CMTMXl4x6SXdZLTRmZnxQ8fU9B6HmqvXF
	 qygvpk/zXFq74MsCr5EL4LxidsxqAyt66IcOMBCafkg4s9ZnceJU8I5ebW0HGxAsbn
	 imYto+fcJSoDSfTXjdGhA1cCrk4vHlxXHgZyslg2SWlxlzvKHABjDMyYCUk6m8fTuj
	 5EWkY7X0dKQT+3XgsFU+ToTnu7R5HsEruxM6NW2nuBdJAL2i4VOSr4K3zRKyoNJXNj
	 pEq0J7XAuC9D8jKZ/M/0Vu1vMIS+jLhe2BWXw5tv1VR/ZI7lFqcPqIxD3UQIEPg+gQ
	 6UGf9GaS30rXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92117C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801675358.5888.16879504039792524956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d778e9311d19c703520ec1c2cd7ec58eccef85465c526b98c6429ce7a750ce0
Date: Mon, 27 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738016753
