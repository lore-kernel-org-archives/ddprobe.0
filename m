Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDF01EB5D6
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759483794; cv=none; b=szaJNEcS9mlxcLVbwE352H83GJk7MmukkyAucntCahNoC3wFHW6N6wW70wIGRgpM/K+dDEg6XSqF+dFp6/z2t8Uq3UaGTpQ5GQt4bqyNdud3T9CA+oM96xeWZv6i1/xSgordKEHsiLyCR6xwAqfDmdFp4DB0KvAHxmWAYCPiPEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759483794; c=relaxed/simple;
	bh=MmLiXbDjRHHameVhxu4RK0BKkHxjS0/E1feQmeY+is0=;
	h=To:Subject:From:Message-Id:Date; b=WwptxrYGD5B69cFKGMQ9zmN59dYCgZM7d11DyN8QYZyBbYKZ8GHnyzre4DRrlOsYam83diLpPwcD9dNSdOJvQiMxEPm6rjPbX6jdm48BbO70/dvUzCtqz3MUQmYsznxVKKt4Z/2uWqgYgx21BVlhoit3a+6eGXvGLMHfmJtnBD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWssI14e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWssI14e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E24C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759483793;
	bh=MmLiXbDjRHHameVhxu4RK0BKkHxjS0/E1feQmeY+is0=;
	h=To:Subject:From:Date:From;
	b=PWssI14e0XLPnI+k3bHHVP67UvjZSeF8nIPL7HPMCn/ghTYfOzBhwhs8N/zKDz3Vw
	 bR+NkKehOqKUFtCgHla/ZsRRD0q1D87EDHRfUTf/nkloMr/Q/CR3ctbEd67njV9+UY
	 7SB0cE3V/AHwljHQScbQf00XZjiwiH06eYxTSpodMztj3iXzBbakU327dmNkfkgI/O
	 Fok+V8EbvrKlSVYXMvd16CCNRhyefDvLsUmD6bkwJfMfb9KoDgCYvZdMDws/SWP8YG
	 KWrRc+aZwMbgGMaDln5mrgEIs8tljxPi87312Zn1rSdSkOKN6Ej3jiohq54MnNJkuE
	 0nn5Rbjszdj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94788CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948379359.26040.1557075466547166082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e22c011978b744edb8d589c0ad161e73aa8496a8fde5a5879c90c38a377702f
Date: Fri, 03 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759483793
