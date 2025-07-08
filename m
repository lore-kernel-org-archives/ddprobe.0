Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0AA1DDA24
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752004194; cv=none; b=gTBfv41X920LkL8zZxinFZglx89aUzzib2GdM80ZWqSQf6SthXBO5Q5MlfO1QYUK2hg+iiqglJOcnoik8hY7hUlBHNh5Ig+OVmoyMXfvAANupyJexKj41fZgZ4rbAleJkk/hVHavZSH7tlD5/vLIem489MjX42QEd6otTAKUUls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752004194; c=relaxed/simple;
	bh=WjSmhj+okvz4T0bTnTOoFbBVqYrfhcHv/F0vuVr+V/8=;
	h=To:Subject:From:Message-Id:Date; b=NZZcpL1IjMjDIlzM2nuuNWZRRKhfG7RGZIY1GSa3HXKGVbJ6kqNmvGXQi+lGjLOam61QM2anT//HUX6OQe21GM4k8Cy3vLyVAjsIQ/SHzWbDJcqzBD8EdHLOOYJjSDde//0eknogE6RBNvIDOIANwFj4KkaOr0UiOBJHythrGfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvcM+Cym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvcM+Cym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF74C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752004193;
	bh=WjSmhj+okvz4T0bTnTOoFbBVqYrfhcHv/F0vuVr+V/8=;
	h=To:Subject:From:Date:From;
	b=LvcM+CymJdnnzsGRRMNu1O1B8uhXjixYDtzOOtsrotZa11gMGfvHXexOYRIQqoerU
	 dSCKaXkxD+/zixZlB7EbXXJeoEo1efh4dAxCBIzbYBrQ7SF1NHKibh2J5LsPaPAwXP
	 tQemaycMY/pZUsisu34U8Ou81tZwqzgj1jAEXDq6JVmVBhxRj7yvSPvbc/90KwzzPa
	 3vird1axC88+bNWylv287C/gSr7yudmQ3E0OOatsGhUn+CWBsXMCetjBpFxePGbnJz
	 xJwLUeuZzBUDrLM4rmCngg/TJWiV5M1MYHOBCvluIZ6T5vvQiv3o6Fj+ZSzlr7YRuG
	 7nj3CyJWi3Y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE25C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200419357.22290.17180632433125280165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5068a162c297e947482f45fbae63bb7a2ef024035760d70f069e83dfd9624d
Date: Tue, 08 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752004193
