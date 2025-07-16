Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F081DE2AD
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752704993; cv=none; b=d4TjF9hX3HymuQ33IMt3npJlzDooO6vq0ZqjrSWvJym/rSPXQqOnUXf6HgIWpqQPVxo49N5sFwRcOgZxZaQL6nhhhDNDouMwzwctWJKZt3wbaq7c5N/b++UEheMw+kgRuc6935jpnUgoT/upuk99yVonPfQo2itiROWBP1JEiKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752704993; c=relaxed/simple;
	bh=udECFqPCIaJQZPkQde3yJFRlI9e2rw1xVkQoCfnRy7s=;
	h=To:Subject:From:Message-Id:Date; b=rscOAb8Skg9iHUJDCXT7KYA+1RCGFhiq9ymeCLY/3jC5uPb8I0o5IBodfUxpj/ke5b7KhcUCcv2yyc93h9naz22pWVCFbngyY8HKpal0j0F9DLRF67ZhcBleVAHGvGE1JF4NAehPlvLieLX2lNoPJ3Td2SyGcpAh30TbAx72dI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNwabRU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNwabRU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C9CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752704993;
	bh=udECFqPCIaJQZPkQde3yJFRlI9e2rw1xVkQoCfnRy7s=;
	h=To:Subject:From:Date:From;
	b=XNwabRU0bVvnn2qNZpzy31TloAOHZ89zpXeolD4ICKvIHrh0CrUvQBowqeZrNipD6
	 4ZeZzfP9Ed/bt+pqvmlHbRBxtvfz3uwWym4Bi7vCJ/BdLuQ173zbtE5S8ad54ymbJ3
	 xJ3ydtyRV05d7wjooO3Pj20MmnZgjDLBCUFpMGUZmk0umz39uHQv25jziqB0xK1lih
	 eI/QquzY0wgMVTKpvytDbrx1+DnJbeyw/KL+iqsjtKrheg9xymyaI5mpUrOpTdDQvq
	 wJoE3yZfKsy814ci9ouEENvwocDG5fntxnuETRub7sf8WDo/g5wy3KQq2HPP2+MnXE
	 R0Hb5gudOGLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF0C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270499358.22697.5555520622476829576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff0d6812f4d2ac9e262f8b94c23bd3483cedbdf47a26bb677d7b972d90ccdf8
Date: Wed, 16 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752704993
