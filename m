Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC678F3A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767060834; cv=none; b=PFrpllgbgVhoydFQQB7WjT7FjhemQUQV0Uk6G7urp1CuHINyZmmG31wiKEypC824/bI7Dn4Qhmbk4Y3WZqxV5dwCaYpBUoLf12rSZsra7IXHZ250mKhtJllVvuuXxU81rjRmTpQm1ETzw4aG3Pcul3rpssKvoWbkXFL7wmJqvao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767060834; c=relaxed/simple;
	bh=BQoEVsp0tYfDBoMYlB1vnkLryt7hmNahHDk3+ZvM/JE=;
	h=To:Subject:From:Message-Id:Date; b=QwoD7xKI0vGvUbCL/e/NygunVnLcvRif2G7nKghYoF5m1x17WzTViDz1L25DaXR0B1BnO+5Gq75VwmB6gbcHSCrrc8jdGkDO1M7hWm5YuKHEAFELN1XEFnQtJUvw8QvZxcbMxGhGUf05XOlKNYJljBe1Aobja2+Pbd/PNro7cu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gA/jg4a9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gA/jg4a9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767060833;
	bh=BQoEVsp0tYfDBoMYlB1vnkLryt7hmNahHDk3+ZvM/JE=;
	h=To:Subject:From:Date:From;
	b=gA/jg4a9IuNUDfjaX4UJ8ZDZchQyg2TZyisuDucVOptH8PE6BLt8MeY2H3KPe87My
	 DEhubAm4jMLibOlntbjw7ic6+VsICQh+Ao9f4Dcjybpm3sXoc3mp5lP0/yK6zMO9wB
	 tSj11uVVBFhoah+gMXRtR2tDFd/DhCCvs89ZXbjqZuvVOzEBlYxJOgxodX3DjM8E+C
	 OL6UlG7TFGzCR4PEhNmJ4dFX6VQ57ACtY9MllpckA/qnxYhwGTi4Nyj7zGBstoBk8E
	 AeXjQHwnqTGIW4ObBYiVrvGHRlHVZyawOFbjBu8/YxwdrRtB/eS+WIYety7aWnWKOJ
	 5oN6Xotezn0IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF3E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706083358.22074.14455721655362221545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de5b7d8514ad7fc3d66ee5e0a8ebfc130eab9c00a1cd957fc649a384aefd077
Date: Tue, 30 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767060833
