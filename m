Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281BA2ED85D
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756897194; cv=none; b=ot+T2fm08hj1DVbQBpVy0QLYwB5Q+bZ7MCMnBfVEVpWf2x4xFOuxikSZMk72dG1+Y/+ZVaftodlxGBAqh1IDMwvKjWNzGMzMr+QDa1ohhPLAcH8YtIDITS7VNzsNlfJzFwS1pWYJWvlEMj/Bn7p/1KvYMHIwD3MFKMpEqXaEehI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756897194; c=relaxed/simple;
	bh=t57Vx1kJWvXxqrKLzDVqMQCTLXdE87MLYR9LzTzaF84=;
	h=To:Subject:From:Message-Id:Date; b=mR21FX+wzQ9A+uA7aRo5ywjQbtcyqfmmqvsfsEZK/jb9//xbzZsRINi22zPeB92VglEWjBAp/4v4XxQ/nH7DGMb+EnAhdQnZ1P6BCv7udGDmYzY8whTW+Ztn8b19lJvX711wbPYY4YHiOgVf9KSIThnCGNHqkUG9cCOBfeqsDYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vilb6Irx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vilb6Irx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756897193;
	bh=t57Vx1kJWvXxqrKLzDVqMQCTLXdE87MLYR9LzTzaF84=;
	h=To:Subject:From:Date:From;
	b=Vilb6IrxqVJejFhLAdRSNAHw3CWQgkojMR3Q8isRdbg2gIpA+puek/t5wyg58w9Ab
	 GX+D0/4bGQ+4uilkvnddSSxa6t/a2TLGiLWsAhwRgwvnzv9q+M4E4r7FcntsAXxgsh
	 rLTcyBXW64qMqBhblpdIt2nk7/omAizg8ko2WTfHVM99GjP18VD0Ycpn5a143nLbIw
	 vrusJt/gm+56n9fMSZEbexGhlPtnBEZMmTq8OlEzB23Ku7mCabonSR5Ab+DMQV80Uv
	 Ea4zYKbTf7p7cILqbaOvZEJeZK8Fe/qpD/gcVbJFnmQKWshy8KULEwjQzDYrrTfzcQ
	 sa1HpNoKrtdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBFCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689719358.21903.414936521033570183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c92b3eba34a8bc9be66d8e222a058a67b2485d2045b6fdd1cd6903b30d5c8d
Date: Wed, 03 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756897193
