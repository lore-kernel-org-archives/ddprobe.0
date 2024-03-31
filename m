Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163DC762DE
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711884497; cv=none; b=eZmYdWYM3IhOmqjsaM5oN9rJZsER6CL9r7qzKiTSvBNufkikLGSbomX3+7JptmS+tlDacqMatQLfqdK877hmOg8n6Vo7Q17KZlAahZFsugjfSx+PcWs7g+Fjv68cuDli6WH+3poNQhhoPJCZSfz37+X61uIbSG+AKalYUpmXUFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711884497; c=relaxed/simple;
	bh=Hi45fh7gjJ+d1KX3ItEdiUYPIGFTff4Y/eeUCsYQqro=;
	h=To:Subject:From:Message-Id:Date; b=B9WxHoFgQgkzi5i1ITtYei9umwC004pigMZ35WbrIClrD54VBCguTXxBHIkSJtzMJ99Z1fviu2tUN14UtSvRiZE90NUysWn11XMgYX118JXR6NICNgQNuBLWtd6/ZU37DI/OjI7Vb0gxBQU3l2eac5WJELwsXKWmRpXATJSY2MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdM/FHSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdM/FHSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CCBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711884496;
	bh=Hi45fh7gjJ+d1KX3ItEdiUYPIGFTff4Y/eeUCsYQqro=;
	h=To:Subject:From:Date:From;
	b=jdM/FHSdf0bzxIxr3V1oA+VKcU/YC35pvbeqo1dY83CPFhHD7keyF6thpGjuFgR/e
	 Luz+/lb7FUpBiisEYQJWFjcjTW4kQGvFxpkxid3YsIi+nKjI8FnMySAzsw+eOvQ/DD
	 /nC/C8b8yaFDm8HqTr6TD2l/wI1JOkPlvsTl4/AYEokgzvDx+MLJjtKrerY5gvcPxt
	 qBgWIT7gEyNyBD3I4tmAjmV85jMviDB62cr7NCiEvK+LietYzKh+9JmnFG9rHyzKM+
	 ksk4HLLnl2guJrRKaHk0bwYlNnW6YjQqRqt8kJ4dLiwpBV5mEkRoP5rYAYiGGq9UZQ
	 A3gOcDrJAHP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9A2CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171188449640.32304.12463476489078492808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed98fb2704d61834313070eb8fb0e2bd96c5e55afe4cac0e988d5d7262a8ac4
Date: Sun, 31 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711884496
