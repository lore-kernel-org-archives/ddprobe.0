Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2BF37143
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718814563; cv=none; b=WcZbOOJOzkrXka0t0UC5/jGtC0SK5f24fCfTF5qSSQdjdXFqqFBaFlO/XpV5o0AbR3hcQ33cyklR8y2/byVpfUXrHEE9bU2BR7D5zAACmXJXffFhz7Spf4uPn4Ib+gyV8DHpCX2JKnY9pc70sa2dVzuB5vsEKYtGvOVxjCTCJRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718814563; c=relaxed/simple;
	bh=Er2b2SMiotcdlKPF+OANmcUAA7TcHWQUsMrjW3nMzjY=;
	h=To:Subject:From:Message-Id:Date; b=qhKO90DZ7bmwwuQvbqq4tDy/gCbsLuEPoepc4w2qWU+MvK9J32S15cS0S91Ug5QjhODnHqognqSCsW40ECtCIS7i0IhaZWWX9xYLyhLdIVSVg9Art8lAq1N3+4BAtJaRlBmvbR9JRISYyXk2RA4vTtlxfpqNqVMME6mc6EtkKUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEJayNuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEJayNuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F2BC32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718814562;
	bh=Er2b2SMiotcdlKPF+OANmcUAA7TcHWQUsMrjW3nMzjY=;
	h=To:Subject:From:Date:From;
	b=FEJayNuKja4rKw5h8NAKYww+gmP4PL33kya8gSvGyxNhrJMP3rfKcvedcIMGYSQ2Q
	 uP+mrMUmgEEfizYQnVg8cTDl9LujZVKAWLjtrNo9ognSOFjnkD54GZUr+KGowiEdfl
	 6244dyJAcsJSNFc9L5dxFMKzXNwcYy9D7TWs9RSamre9TAZfHvmiiysGCKtLkDI/fr
	 Z8fXHlf9CcMU7f5SA5tBkTmYGJ0jfAW8EQOQJYt7++htjJ7hHaDLBxaLd1AesucExl
	 /fqkKjNAuskzdktKlOvcAYI7vZ+mS7LOM9dXiyAn6LXaJVnoJazJTqiuGYRm/Ubw/R
	 ANiZW/Ou90zVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6199C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881456280.25657.10851472314136792651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b7d9966cb591a0147167202eb4b780d5b0d088e87a16f48f8094cb6cd8e4b3
Date: Wed, 19 Jun 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718814562
