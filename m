Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4626D2D8370
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787631634; cv=none; b=ptR+d5Qvada4m1e3Svfw/s57ny+IbbUe/3iE8gw5v7xAZSi54qnMfNNBuT9DgA5z29rcJ2iUr+5XVh5cNm0sfTzA01bktBDGoDXhDTbU2sq26EywIuGNaMunWzrCLjOS8NQmbSC+EOGlrh6hORwyygk5ZVm0HGT4VjIEbH3FdDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787631634; c=relaxed/simple;
	bh=U9O4ilpm4vd9hVSnHOi9kKPe9LtBz/9iJ934uL/eZq4=;
	h=To:Subject:From:Message-Id:Date; b=Dc6KfVOD1cyGeFNNM5wN83JJNBrEgXE6uf1q2+9HC1YTZWWjaOT/CPEKSkoeipYUThCNAsJ58+di2S1UEQQXz3eaF3BSSGo6et2cw1DepE+zMRFnAiJGL8CUropUIofLbRNriW6IGE2a3YfJrTeBSXnytLH9c+24sh/l96eV1SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjwQzb36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjwQzb36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF2B0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787631633;
	bh=U9O4ilpm4vd9hVSnHOi9kKPe9LtBz/9iJ934uL/eZq4=;
	h=To:Subject:From:Date:From;
	b=kjwQzb36HCFEftYivXkZiUwBKa8KUuhtZGwQKAEzSp0VAp4LvTwGwjBG5VJaEwc+m
	 dcSDjRAM213Ci0hsXs6fgmTrZq4PXhbi1aPwfoUMcyATWAIQVLzxKs05vV1PtJcEO5
	 1HWpUjaQs4xBoSzwag2Bs6RJkMaaNZfACoch0QkN7ytcTuInXmxzPf+UFqfNnNrElt
	 VkRT79+JoEYlZVNrHJgIPjZMx04KUyiOZvpN5V1Z0ycLc7TSntmcEMyzzTn/xG0BGO
	 0jKSF6TpFBrhSDQmfsChT07G5iO/oZ+W34ZExZaHzkxgv6fjwj+F+NXio1Hj28K2ez
	 pfYrKSRt7L2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F4C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763163369.420.14514391929668342727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3319a20341a9a89eade765b2637b186926a363097ed82b45d39fb95c45e7dc
Date: Tue, 25 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787631633
