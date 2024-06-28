Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C056208A0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719548063; cv=none; b=kXV+nk5k0Pg7ZYAsNZOwghpWRkYmeXilYxSNWGcOjXcH3FNMCCzjXwCIBVEq6tM2xvg8rk4OMbUFbKCLMENyzAWrEvSIEuL6UzotYz3j1HMnzLYVywqn87EzPypJDIf96V4hb01iVt1gUL6w41VB+Dptqmmvtd6ANf6lkNWMzdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719548063; c=relaxed/simple;
	bh=soS3MWr3BLJFvOgKdWZImO12TLtX0pcz7EZXaLpnKWY=;
	h=To:Subject:From:Message-Id:Date; b=AwE0HdXZ5LCuVXO6GPkG8xitf6pWTgXCvRRGQBL5rwBUKLIYr56GZbTR5J02HvdMs0Y/lsXNUk8rH2YeCMZVgFcT4pzKDhnmahtJ+tTHerbIn3GOZFQcykvYkMnAdS+Mgd/DB1SVCBvUKYhGdZJWWeFSKA+YgaBqiOA4+CebzLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqCMieGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqCMieGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8EFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719548062;
	bh=soS3MWr3BLJFvOgKdWZImO12TLtX0pcz7EZXaLpnKWY=;
	h=To:Subject:From:Date:From;
	b=WqCMieGci64QIe5DvDqZKVqFmPAs9bKnYLW9RU15FnQ1jFNnw9T5MPJ18kZrhQUMc
	 pIuvFFm2b3hwcgKupeSd7vZEcrlqJXHvet/I7AS8JJT1RhAXmoesEo/XpsE7GjYspH
	 UTTbMstdqLnCgfCSBbTOzbdVH6qQk8F6h6HeyLgEAMa9tjLcPRaOO9qwmRhrhv8VOY
	 8RGbMKjO99hD/b/I7N3hCZ9iWnNj9raCu03yEQiTiTLeLl4MJZOLsfQQ+acUA19Ty0
	 EEoV6aA2RW4fDRzefpYHJX6GOTsTkyfzw8nNdIMgdbZHXxufLgyTX5LV7+U64p5IhX
	 uhW0UWYhYri7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC31C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954806276.25969.14508895656974756125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3861247530dfa918cce07d7c7cd24f1aba8166cd1a4069639289e573e6ea491c
Date: Fri, 28 Jun 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719548062
