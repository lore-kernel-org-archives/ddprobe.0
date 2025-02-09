Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D310F4
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739078754; cv=none; b=ZyYE32wFX/ju4xhYwt8hCy5pcwa4cQhIRyUfknOHAtklDfiqNZznOSYUx2+RVTvArU5l31u35cQeTd3UooZHXZUWoMXVIivSG2J163r+l10EJCdNDePC6znvJsYjaz57e1EkUjfEXtp7I2LBYmNH/WGAZHzrwVhC9QvMGxQMYHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739078754; c=relaxed/simple;
	bh=T22mt7hLZGqzluS1HEZGMMptLZczGKFd2tsmb19epvM=;
	h=To:Subject:From:Message-Id:Date; b=AnWRJhdlzycX4J5Xuva5l2G9zHFVo/VJEsZezEMCI0Zjiwhu1RwZFutAD7uA9jxYQfCtUOw2TmxweZi+FGOy04BLe42Xdz2liqHIaydZfY+IDejSg0Ma9/Y23+7kf5eQHJsuYKT+lRqupWI15fw3mS56dg7Nggop2XajIkr2jaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ1qLyN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ1qLyN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65C7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739078753;
	bh=T22mt7hLZGqzluS1HEZGMMptLZczGKFd2tsmb19epvM=;
	h=To:Subject:From:Date:From;
	b=YJ1qLyN7FpSpl+bSLB7J7QoQ7ADTiIjoad8rQlU33++Couzqvc6Xf+Jf4tvJ5XEU2
	 SSLx5LRmz3m7V4wr9aLoLGzgiD+az1q4LUKznKK2YBdlQNoCZR+NUVZ4O2Ck4UrdJV
	 JsZR0h0eVd1PqUt86AhFg4ZdgdsQvNKGykh6A/bMepD1ITaAMM13SJd5zqjueVzDol
	 1nC6OWCIiOyTo6W+89YkBYy46A2Ls+g93LPwQjOu0Qj94PZ/v1AXypsKA28G7CX8WG
	 gU7eOw02x8ttJ0yMAaj6YHlCF3dYP+2nsKUuPM7sAdWE+2ez28i1RoppRUp5SKN7k8
	 bsh1gPTXc/MJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B8EC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173907875361.23320.16441225109850129021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7c5546af1789e689f63f286794212dcec4afb168aa01c7de5a9764f037c542
Date: Sun, 09 Feb 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739078753
