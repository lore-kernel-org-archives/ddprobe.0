Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BAF2032A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706251697; cv=none; b=Opug1feRQsw9Tyt4F6nOPeMJeabeyNVviXpqG9PyIZXbxGvcAimBHAz9QcC3OwNqvbFPtDr7fFF3dmt7z7TH/RyxtbL80pvjXSkA8INfOWsfN3RXQjdHEEFDfRGqSFMB6RrpY4dEw7m00iiJaZxiF/eSssNXUFsqI/kfUguLbGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706251697; c=relaxed/simple;
	bh=5p+B13De3WWbm+5lWU8emzgnUBaw+LqOjrZGDhPkhlo=;
	h=To:Subject:From:Message-Id:Date; b=iuZ4npyGWbse/GIQCtY2LzWXt0EJuI+xCeFosUuvFxDz6De4WcUoScNWoCVhWJOLiWS5c1ZmJ1bL6TLdr1Q3hcld+5SEu7+mFY0DbxjcoGciv8NXVrd4X/cUvErzAVauAIfxTNoeUYdEvntCE+3kov2YLZKDEbBcjHmcLG6Dk9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/KG/7iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/KG/7iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CA4C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706251696;
	bh=5p+B13De3WWbm+5lWU8emzgnUBaw+LqOjrZGDhPkhlo=;
	h=To:Subject:From:Date:From;
	b=Y/KG/7ivvgQ9O8BHK0CnsIST19vbeikgqX0hk3Crh9358Hh1V3oY490cc6n8YiZ+f
	 jq12ljtdWPh+70yFPwojbRb7vlzx6gG5N9fv4Y13z5e0Lsp24SW/HHXj8NUTsA835j
	 XbpjMaEE2IcUFRgiAxg/Px3ujzQbeSZUCajgATt13sM3D7kHCHAXUXzsscNirAXi3C
	 AkOZsqvDWn8uXnXKK0kIQUUrjdkNwT8Xq9+JGZb857khigf2Fa5Eu/tdGVauZKLkgw
	 gQcsfoi3vJ29Y057aZecGrNgWfo+1Un3EeH/R8n98kxQzJi1g1P+PFXwdv16+SMIdj
	 V9wEJPu+hRObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E610C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625169637.15527.3367749466522690069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cacfb6ef011651e39e5c86555bd01c0fa32c49b4d0397b11d17664e657b3ac4
Date: Fri, 26 Jan 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706251696
