Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB9E3A1A57
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772100294; cv=none; b=pnh528NbH5nOVd0hfjiAzFqw2gui8/RpFqHJRYTjaylgPRL8PI3FpjPH8/FLplXhv4kGYEQ8HmOHt/63NSslkxB+d/WC6xOy1eKWzjafF3CRyMymzAOigTZtygwKgXdUPfmak2SMdVimDPVj3N2ITvqXIo7bz83sSpF4zVRC3jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772100294; c=relaxed/simple;
	bh=tbW7gDTBNSvH1Y8jvcBQpbpKSnQ45K3csXo+OWHuoY4=;
	h=To:Subject:From:Message-Id:Date; b=gmp23Rr57z03hq8NMEtG6yEOVi+SStYru8/7LgYDPrTyZBAH3sZ82BL7B7iOhwHqJtGo5ywmW94NRxvue0BEjS7rFWaxPj/8jIFx+cTUcfdkCMhh6h4CsyWl06/xuUj1vSZjLZyBnq6aI6tYVHMJnndiPLlUBFmYq5DahiAmLFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZdOcIls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZdOcIls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BD8C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772100293;
	bh=tbW7gDTBNSvH1Y8jvcBQpbpKSnQ45K3csXo+OWHuoY4=;
	h=To:Subject:From:Date:From;
	b=uZdOcIlsMIrN5TfiWEXcUTSnYcYnWNu04y9/n046bXaDiIzNCukMFwvkkbGtJaNvu
	 cI63k80cMUEhcOJttV8LGhY7wr5z1qrynov0U0/Z6x1V3/x9Yxgib3qI7s/csQ1QoM
	 t9mclIASoNAR31Oksrg6mW3rg0NtUoG+H5180AEx/bny7x1W0wYDHMLbT3KTV7iMQL
	 yz1CwlqrfVJd9TSGdT4S28YbwOnajJO8x5l7jm5WtMzYYl87qo0VM75lpGEhB0VabZ
	 P9OM74FojwlIW+9gf/uruoEGjXlLRqTEPFSMAbfY5DEKpMjlVKLp3Eej0BwI7a3cu4
	 j7pwq8RIUkD9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE5FC5910
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210029359.319.14547674106989823311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf540e9b94bc88bcfc7c5a06f363f29436a5de4f9e778b792e061d9f4a12137
Date: Thu, 26 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772100293
