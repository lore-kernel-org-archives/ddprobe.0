Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423A13FD4
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735953954; cv=none; b=j3z29YgnsSBsRL3bFt7fUjeauSxuLJojksjB2PTRfyCDGrAv94Je0YzQ/G2+AtX16kjAjrQeTkUQO/Hl+hUYzTM7sv7ugi5BeGl9k4ytE1yh02CuLep0wpNQG/kxqO2p3zQ/3Foca3ECr9c77RUhQ4WtLu+zE7xtnAvm9JPbZdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735953954; c=relaxed/simple;
	bh=p65p+9queie8L/7WX91u/suwD106sRnUeg15Vj/hKGo=;
	h=To:Subject:From:Message-Id:Date; b=kVSd9rJlUxBp3oDR5QVx1rN5pw6hZ/vhkDp5oUBW/cA3I9o2Tuo/W3xq1nsDgWH/c0jxcbXKQwwLPizjx3Evaivk3VqIQ7bENW8UsgeFFG0tnZIbaepTCTU92ryfNrw4pDWbkXKQm6pAwO/eJD97qaTczfs/i2o/CtnXXYahWq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea4bCWlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea4bCWlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E7C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735953953;
	bh=p65p+9queie8L/7WX91u/suwD106sRnUeg15Vj/hKGo=;
	h=To:Subject:From:Date:From;
	b=ea4bCWlQWElEhHUVzRDBORxzk+uTMIkxaH8/kdo2LA4662K1DmYl0Jd9UozfQzLme
	 P1gsMEkTs4fqnWFqtza8mwUKy5gIsl+UY9KvoUOOE94HdpAlsLDxt2GnvhNUYSTiuI
	 4ig4ZLEJW/bwL89guTIs/OSxPOzDqKh6vUgdEuA86JZMSW2/B710IHsCcuxzp+UiZx
	 yicJJx8RaGD9EoDbuR7YvN8hGkzIDcZtGiJao8988MlEkiWDHK47b/mlBiOFdiBhYg
	 cE1gpa05tHqaaZ2EQHR+NCL45F7T3sBlThWf9F0CGKn0aDkAOsH0l8Veb1kLJVPVq5
	 yv17XTAwr43HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC26E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595395363.10223.8694372995719953147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258a5396e57787f71dbf6f36d7e84dd0553df5adbfa4689fccd4b49f8c2ef62d
Date: Sat, 04 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735953953
