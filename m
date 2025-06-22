Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13168AD5E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750579794; cv=none; b=QOr9uKoyB17qFjllySL8LCU2V24nG8+y/jIk2FAOl92DilY0MB9lUXYMZtSTfVI0eAxXAZWuWElrnKmNCQFB9cZE3bFRN3orq4ZJseM7P29zYHJQXAtYWhRSMIPdlckfXI5jClL+cfwVTX7q3XF07gB0aVkk6+AwpMt3o0yqCh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750579794; c=relaxed/simple;
	bh=gUllCiOpW4yqWyIxYxVJLc26UzxJQ4oWW7ocQqxQKT8=;
	h=To:Subject:From:Message-Id:Date; b=rCwBHH5pAUCCrinGwubeDZSfGKW+CrotGLGk3ae3A44af9M+melZ3ztKFrBoPDV6XILvW31SwQo1lyvVwJutBXluGgBF8+rvmLWC4AKvCIQT9gNc9bUOYYCulFq6oo6zrgwLfqO6iDp5fU4e+qkNep8NBRDeRVr20bdHakKjZIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNgpftDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNgpftDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68C4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750579793;
	bh=gUllCiOpW4yqWyIxYxVJLc26UzxJQ4oWW7ocQqxQKT8=;
	h=To:Subject:From:Date:From;
	b=kNgpftDJx5B7PYWRVQWZQl60GQn0DaBxsltDyhAuVEznBnpoRHVFo5j42E8VRc3et
	 FKNfP0x1w5hAn4v6qL1NysNrVJqAGsKWrASSoTE/OWN8jPvtRU1oePvQxayyfOsmKd
	 w+Pm3DYSJfxfGWDj/YTJC3pinU7gEvTGzjL/VjSGwuY34x3CTcaEmuueXVcTpIT2fJ
	 /h9yaIWTD6W/60pqm7wVX/Fz/6aiH3Km7M1RrKK96gF4NA66IRhCWRchld+ziC3TH+
	 rRU80ZurfeZjNwafWndp93zLwB5UqyWYbMEt0R2RDejqqVSPQcHZUfbYRdrrJgLH1T
	 GAru8/6B7fY9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3DC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057979358.2021.4594662927276888367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c45abc4f2a6c3fbcc928b65b2fee0a80f13a8d70ab72501fa6983f745fa81d
Date: Sun, 22 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750579793
