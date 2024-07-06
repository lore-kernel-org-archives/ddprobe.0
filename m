Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5041417753
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720296383; cv=none; b=dUMIYQaHmAnvt0q68m3jBYXclWDTL3dGwTym53GtfO4iLp3/d9M+k2FfTqNz2AEyxIdji/6SHu8mhEHEXo+ZU1IC3CsM20j5fzjsoiwSdRmgbl96G6QVYR32wgA7oJGG4KHCnj1h4n0tG0m/bsGPugU/T6EfNCm9J4UyjBWkDR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720296383; c=relaxed/simple;
	bh=xr+7yRNv9pDhiuu/kXXNV/Sd6sfH8sB68BB/e52f/do=;
	h=To:Subject:From:Message-Id:Date; b=RbdW/J62ZjciBFnufYjCKVtCVfzwlwvw1wqIMy1AnQi4PQ7iXs8v0wOYmw87jpQvdVLp4VS6hb5UgRruic1x3ZMd39PUvxgaFkuhVNAeQs5AxDyKhD+2uZDnTUphWSjoaMRNMHl9olOwVsvxJCyeb4gPrnQWAGeh4OVlfpuNtzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A82200rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A82200rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8329C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720296382;
	bh=xr+7yRNv9pDhiuu/kXXNV/Sd6sfH8sB68BB/e52f/do=;
	h=To:Subject:From:Date:From;
	b=A82200rbyAR0I0upjjwjOJ1b1P7eAVP5yWX7/vzL+kJKXWjjcDaQskXp7qh3lEhTn
	 mR8Q/jIxux1MIW4fNkE7Hfycs2AoqCQHZkUzvmCBI2hTHN9lqUlup7EigPPhafjQeC
	 L8SzM9TW7MB9OeSFj81bi+pQJHd+CjH8Z170aAOrcxOZy13rqkPO6fImHeTVJAwLz3
	 TML1MWwLw0E1X9+bDpinVEJ8t4U9S9m54HOeG/LdWs7Reg06h7NJ+km+bFDKlb7kRc
	 DWZYV1fku9SsxJYMMn8WI7HGnXqKVbGeQ4UVv1aQLCyaS3K1GtCPSez4Ubzhk8i2WP
	 WG7zeaif/3wvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C936DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 20:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172029638278.29056.17827565162809952975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e3a5f4b483e55315b6d3b9060f099216037059ff82b0284d97dcf7a3d01b04
Date: Sat, 06 Jul 2024 20:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720296382
