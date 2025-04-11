Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4F221ABD7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744387194; cv=none; b=qYsmbh8VGavs/84FuUNRjlZcjrWo6wnbGik6rdyPCLwGlL4VLLXWU+2vcz6mB9AKzPtye/k2tbA0GbMR0Y+yoj3fbM2wnS+ggnddkB+mOxZAVnIZE4pLN5QFE0QKXerlo2T0Dk+6eRUOnux9RpVDBVjJ5VvNlPqiIHLY5oxF/c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744387194; c=relaxed/simple;
	bh=5D/QEwq5BisT/eFj0hs6OnZBiTgaY83T/nWAc3kQJiM=;
	h=To:Subject:From:Message-Id:Date; b=nMgQpZZWXoCi8iKWSAQ7z3t4VYjKlzIVFKkmv4ZbTRy+w3NOuan/v69F4bJSlR1UZZkWxTJQvtFrChJ/knTSVd+cfiaVo2OHW//VQVXqKkBv/lz/g4NHzamZPmXnVUN9KYsaHFxC2X4wJ6Fq3WbVYJekAebNU5ByQJwqaQCshbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8U6bNtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8U6bNtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BCFC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744387193;
	bh=5D/QEwq5BisT/eFj0hs6OnZBiTgaY83T/nWAc3kQJiM=;
	h=To:Subject:From:Date:From;
	b=g8U6bNtpZrL/Tw5JzKsuiLnFVqG93xLY7NOXkABrAPdUWCQx1fpMTMDacJDty84u+
	 XD/ivnCOleRyIwdNoKaLJmQC4FiwfYyatWprDq2wnCGS4/DqnIuKxp+z/f+jPO5TtC
	 9yJdsuElbK8PM2ZNQo796yZaXgcjGtrPmjhOa6tA2VLDqBnVFdGfQ1DKrNPc/ve6fv
	 mVRJ6/tdfaLDJqGYOpg9qjGPXD/ApMYpB5xOYOm66uIJxvX6qZwm3jFnpEGtnMNyBf
	 kSnfhN8P7Ko34P0EPjw4Z23gSvxt/wvV07tuNhav92R04L1C8t+PzR4tQtrknahkRC
	 daz9eg+jfK9Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8241C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438719366.20738.2724450454697154543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259e53a65607c62b0993967fecbec11e71bbd57c397be46cc10e74595d5dd5b5
Date: Fri, 11 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744387193
