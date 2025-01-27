Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8C280B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737939354; cv=none; b=TYMEm9siNMN2+AlZAKYJRm829OvvYI4dG4nBGOh/21HKQCetbR3GNvyQ1yn9OzlP6D0r1Mw9JjWNd3ONJ/ubfhIXhnyRqMHFS22qsi0RuQVS0Uw+tJIRCBOocvD+MFo1EHy2ElHSZAE2LxGwe3TljYwXi6x21+7s0M1lzBC7O+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737939354; c=relaxed/simple;
	bh=iu++TpCXVvUsrTMUuzwc3R+bDEoPEYGturvesd5JU7Q=;
	h=To:Subject:From:Message-Id:Date; b=ept3qkAYNi5tCGBE2JdJEfxRHQ6IgFdG0oI8AigQQrTab/Bg7HeXv39vHiNYmrjxAGeJf1oyDmoHCoi+7AbVUG45jtUkIZYgKo24702mgDeJWDCkM9f1Oj0zVEm8456l031AtA2V0qGif9u7GC0eMLrNwMm1E2rnsRV3stwmdOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGi37gdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGi37gdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F08C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737939353;
	bh=iu++TpCXVvUsrTMUuzwc3R+bDEoPEYGturvesd5JU7Q=;
	h=To:Subject:From:Date:From;
	b=JGi37gdLXo3F7zAvISNWRHNx6ZYasSoKp1Ma4VdB0SQXPUaPddStQVwyK7Cz08s18
	 7sOZuU8hO11KJRRea7bSToJ54jehFKkd18kIJwRqkTAxQXgyfBCG92CuuahAw1ZctE
	 j7mcuj1//RUeRjHbdpU6MfBi0WQGTLg60xdWkXDasZrj17s4X40mZah8eKXoyaJV6A
	 esJFNnPu9fTkTuc+DsZEtq+Sh2Rx9tr3hF6fRtoAY7mKk1zxB/b0JftEVQmmzBi4x3
	 cTzecWuKOtDWQxm2OwmIIaeiwimkTmmSm3rR9IF0Nz8zp8ENHr2RA2A7PNeum4doz4
	 OogUPz4+zO75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB53C0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793935357.6380.9471891254098486901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a46d08ce944799f19ecd3f27bd7924ab8efae03ba271da370199e7bb7dc0f47
Date: Mon, 27 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737939353
