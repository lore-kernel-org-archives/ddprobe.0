Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476881E8826
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791063034; cv=none; b=Y5DVcDtABa7DN0hL24FgXL6YevqA3gNM3TX1WWdE+JwaAz1mNHzYnbdkZMzCHU86JWo0AzB0JQP8qbvyX0s7GgKKl3Qtq/NMpYVzvvKPw7Lcged7wnMsB3Ya87bHDXSxWppPDVu+6+yxJbT0P4cZV72drjNrYaid4GvQWM6/TXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791063034; c=relaxed/simple;
	bh=wg6fkFwkT0vEvf7MRl3QuwFNFHWy6ZHnXvgmw1IllQE=;
	h=To:Subject:From:Message-Id:Date; b=M6AKwMXy1y5RC7tgVEeaK4G8luPvc9yZOO9oFWelefEjW+kUf7O3pyrXBm4ofKyn67HKPL7dK2HGq0RBbJO9Y3eSFXfMrlpBRypXIS1k1J49wVUdbOP1tRJAGvKRc6s/gHHaDuR7JKHZe/MJHuspWaUNEi1tdokkTok/Glmo45I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1ZWvdi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1ZWvdi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A92C4DDF6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791063033;
	bh=wg6fkFwkT0vEvf7MRl3QuwFNFHWy6ZHnXvgmw1IllQE=;
	h=To:Subject:From:Date:From;
	b=Z1ZWvdi5bWEU5jBHYqFkqFD6E0shlgpCK+saw6aacjeuzPEb3/5mmVuohmOeSq+L5
	 yFHMtCiffwU1Y+Vk9S/WychvYHOSX0LfYdc5nJWB/8wCZboT6WDkLLI/6Ca3QTJSEb
	 VZ2B3/i5PvOgMX4MGGEDePIqUL3DqcNY9KNTPppU2hixuvHALaq4/ST41q8aoDQ7pq
	 PdQCLY7LmAgT2Slx+JL/uCcoN43Y59caKjQZfWYK9syDgkaXtfF4Ss8MccKxbiLDrq
	 pBb5bQDeMMVAaXeAHHPjPCix27tjpeuhH8kocKTvr7Bp/+uwrG+X/O/zw1fRc+Xl9q
	 DuXaiqPcqpyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC075CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106303369.21885.3310065194636540829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6665fa7dfa7116c278651b25c13f05696c04823628eb4955827b1fcecc8182a
Date: Sat, 03 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791063033
