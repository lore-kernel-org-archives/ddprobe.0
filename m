Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC461DFE1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744117794; cv=none; b=MjOf2w1q7830TXZkh5c8V3ZmwYmIHZj04f4UbIJf6Zl1mjnZ43+Obf+VlRA8zXnyaAbgYo5JfyWct0Hfkc6/DJ8EjbJHHo35N/QqCdSqbLXMX1VW9XXai+CAOODZV2TBuZetnPkKS20W2H6E/lndby+kNIjqK09/2Lis+Ma90Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744117794; c=relaxed/simple;
	bh=osnhebp+c9yLTqFJYAxTCYQa5qKKNgFkN3VEeKCdBX8=;
	h=To:Subject:From:Message-Id:Date; b=PkKja+S8QAd5dCZ9BJ2i1gaeol52ySNHKanhqafpFKuISa9yJau186Fh1gMR601EkA8cnl2prutTCFG6/TEP8cMw577CZSJUjKhWmMj5MeAhilNoPjkQ6F3ARqxAVw+Ps3qTfig3qPE84gcpsqavb/6lhzRB5xaPiH4CeVpAA2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj7hKUu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj7hKUu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2598C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744117793;
	bh=osnhebp+c9yLTqFJYAxTCYQa5qKKNgFkN3VEeKCdBX8=;
	h=To:Subject:From:Date:From;
	b=Jj7hKUu8YQHOfNjwwQVdgJkpO87BMjAdADKczgAh4pLflnhKk9N68Gz+TmZxrDUL+
	 h2UCUgEj2fK4JLIHEQvVH7XIDYMKMPlBhgqVUFE44z9OooHn/4Wekx7vjKt18qchQj
	 ldkIcScZlUJs5iXHkHQaC07lpgyhIAPs1FzBiWYynp2L2iyG5X4gjwYlL+A1nLGd7T
	 09wiXxIfEtguLN5GR9BIIz377xXCbWOYE/ipCHiG6DikqWQYxG2gXXOueXKA3K//Ek
	 GfVXea7dQnQeoSK+Rx/MOxGziTSURrE5peLbkNKcZbo7UYEitzgYp6GcFu5aXvDyNS
	 BeEZEmskknkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1258C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411779363.22055.10991715529244021519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dcff465c5aefeb423304ff5e6fb0a828cec577bdef7b8c7c5f70aa3165293da
Date: Tue, 08 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744117793
