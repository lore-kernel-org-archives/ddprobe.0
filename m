Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0608A2F509
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752715195; cv=none; b=BKLF7CIkru4FWEbkPhBOBqzUMKmEeJ5a9/+ZqDLdlchyPpC2/POekUmk4w7ty7AkBOiQNM4Ndm8LcfoplPLgEUxaVN7pMkS+3WaWiwnxC4BebVyQ8Ye2Acmfwm9gSQHS+IO/aeQ+VX4fgx20Z/PWR/a6bjcZHuAx3AX+KZedZyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752715195; c=relaxed/simple;
	bh=Ej8JY5NX0RvINiiDjt4DbojUb7LURX1qABMUPtm8eiI=;
	h=To:Subject:From:Message-Id:Date; b=PxOx3FCydPVcWBeiZba//xYtkIIU6uaCxPIKn6DzdeYvtXYxcfFi4mlLjEKT0B0q+mlzhhct8dJdYJRs7W6IDKvIE1hHjgoTjOzZxbCe9jSESqt6I4itLUXV7hASru0iU5nmCxk29f5xR10ihcBJ+oyvOMtLdXq5YzhmK01ZB3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjptF/6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjptF/6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F48C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752715193;
	bh=Ej8JY5NX0RvINiiDjt4DbojUb7LURX1qABMUPtm8eiI=;
	h=To:Subject:From:Date:From;
	b=SjptF/6eCiuspKjDzCN3kmACcWGd+uxhHkX3QllsYjsn2EhD5QwQICzbgeeOquEsd
	 mWxOR8kpzpx8PX+FnDAMBkdBo6gtdFAzJddrTHE+G8lwmm/RZvXUZRep7PayTHyghx
	 ZmzC8PJ3dOrhhD5i+49FyRGFovKzzHTxzMWAm8nb3U/ODeb09sRDc8g87j2ykMuZib
	 KGKIbhLqZLaOrCr1NzzHXD2S4DGs5li8gKZvPoYugIoJjC8NCwZQc2ja9zO06T3Hoc
	 KdsxHL3jQYwjsutrtwWOhXS19g85KoYyPDQV41HVf6VmQ3TqLsUkuy8KfHyLbkR+0r
	 M+KYUT+0ZGsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271519357.1323.7495928577107751113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88262256ed39f3c88e5bf0effbeb7f69e98588b85126ff709419a2d165a31750
Date: Thu, 17 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752715193
