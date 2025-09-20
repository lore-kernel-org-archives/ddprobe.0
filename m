Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245B610E3
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758393594; cv=none; b=lmgwkD6PRPF59zblRLg+hBvFmWv1LsTwC53xBzEu6nank6yUHD1VUBDYIWcZf3oXL2/GyyyLH3TqVkqHhCIbF3kDSIB0cSdi7ASMMNqBV6qFS/1/joUabD8Bb8t3SeIUAO7sAWBC/ImwiwFreDpZEgJACiXOdHOfrfn28rrrCL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758393594; c=relaxed/simple;
	bh=DT5VET/dhbO2/r8UWeQkCpSAFVytU/cFgzPEm1xf/nk=;
	h=To:Subject:From:Message-Id:Date; b=f5jNS5ZaYFKh5l7Zbe/4XJiUX3fuExp5GkGjvz3lpQ0wJNlhUfRzVvISGfJRNC3AuPUtwCys2Do7+D69jpENuZOjVHsetwn+4bBjAb6/pe15pxTothBkJNdYtLKjMrPmdk4MIe6YsAa+0canFHCsmZtANSDX77Ix2uQ9d77EW+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfXoWI+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfXoWI+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2CBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758393593;
	bh=DT5VET/dhbO2/r8UWeQkCpSAFVytU/cFgzPEm1xf/nk=;
	h=To:Subject:From:Date:From;
	b=mfXoWI+oiSXGdnlKU/n8Y6prTh5vVxwPje+k85uYj/5kFFd2W7RcZ/ZnaXcTAthL1
	 85lpZFT04bop9JcjvwByn44Bgdu5pyhyweQNBQ/MI1ro62nCXkCYucsnkjp9OlSAiV
	 7QBW7ym05smP9NMfIyg8p0xXDfuJOgWBzo44Hb+7oEqi544wbvNwIyKILb+figjU8x
	 7Ej/DBekuAGqxeJr3L9IcjBcCAaiPrx2+q7f7s+UED289xs/nIVzzNcNJ2JZaCj6oF
	 J1ya3JD6L2QSGdefUaVpeMS7TFC1fHttmknsviD0FuvpJwFryG/dht/E/TvZXSK6TL
	 JOID4aqPA0ouQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A7ACAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839359357.980.7445156336422608206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff112834bcf2566d58adeb0d3dcbe060cabc3fea53dbbf74a1a40868915d0e0
Date: Sat, 20 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758393593
