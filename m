Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A387C17FE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720301183; cv=none; b=X69+DUYrZTqvyaxWu+GvzYLRbal+bd50dXJRZervDcs6T60Hi5u5ITNHEtMe+zA22wsgbxAG0/ziDrr9BCCDyg25rdlwKzlfqyE6Aa7rlpmZvKZKwvqDRknA+2vTmsudy9D0OrdGUrYkOQJqqSPeVdEjd0URpkDG+2WScmJIrA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720301183; c=relaxed/simple;
	bh=PcrVbvtHv6V/LHSYQfGUtfpmgEcq8wCrc0jUAsb/tdY=;
	h=To:Subject:From:Message-Id:Date; b=p+tW+uW/IIH1ylqPb5T21qJO9ivv/gCx4smDaFTFlHcHatk2rxGl9Xl47Br9az4VlczXChURHpLDXn0dK10CTokaHFTlbjjT8PVMkn3tTqrcEVzHaDHs9gX5L7J+kHt7xUc5ZDbTbpV1PM3ohyGPyDVdWkDUCL94riE5DizWafI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgvlVDN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgvlVDN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6FD6C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720301182;
	bh=PcrVbvtHv6V/LHSYQfGUtfpmgEcq8wCrc0jUAsb/tdY=;
	h=To:Subject:From:Date:From;
	b=sgvlVDN4ATthYa3/vArsvvJZ8KgGrlVnJkGWnEPgRsZDXn82AVmsc6v4OAKL1hK2P
	 jhNk9J2dzurLnaFIzqeI69coy+UOYd02GIKnzVsrXKO/5c7yXarYexRys4593cj7+E
	 +tEY72FBVFONEWcFw3dMakUtMMSau25cHxFULxsIRpfLw+OMb3E8aHcFHkwHJA/i/p
	 +aMesKFqz+IfbGzxPPJvxcVu6uFvgwGwJz3hvpwsNgodH3t5U+6UjRmIb9gAlBwR+e
	 yjdLWBwNY49uKoiqOMWbJ7cLfAFxM9KQR7aBNhkSnIRMZvvGpjnsG/MYpAoemwzcCz
	 nMNKd5nfj9RKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE710C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 21:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030118280.30456.2187843653764360712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccac8c6c4214e49ccc1e0cf004d906c6d8e78f40acd4083a81c8bcf9b8bd6c08
Date: Sat, 06 Jul 2024 21:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720301182
