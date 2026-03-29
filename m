Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1367A1FDE31
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774748694; cv=none; b=uOsRRxdlkY91Pzbup3Q/21FmEFiTj8rqrv5jgMgsGXzvga1iHw55lxDOybXkT90JhhbSw78C7mIhz7lhqBCC5S1eQe6qsDMJzYh4ZrHbCUxVoCS6ekl58sa2LXrkaOLhR6tbTVee2Y40r274XLHIeCGwKgms0EyohAjzRKRCRKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774748694; c=relaxed/simple;
	bh=1PpqG4TmEk0ifLcYo40l7pu8n8tA8z/h8SRhAgLz/fA=;
	h=To:Subject:From:Message-Id:Date; b=jB7/ETXMlczoAKGWGSVsobUahGNUt9tQ9zwBhJ3FG8K+uds13xR2/Dr2owcr9ujHUXQXbqq/I7IsMrQkxInB3cs0juu+ZVpGtVw6Ds5WbPkeDTmExjUqYoEq6FxIcImGboDn0/kU4C+742pqbUNHw2lG6SKyP1lfDBjVXiqVAz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZ1/ARXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZ1/ARXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8604C2BC87
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774748693;
	bh=1PpqG4TmEk0ifLcYo40l7pu8n8tA8z/h8SRhAgLz/fA=;
	h=To:Subject:From:Date:From;
	b=AZ1/ARXrNssIG8pSmIKWRqqFl5HujGDM/zfwIJJUOmO5yL7OYobQg11zfpsVP9c3i
	 QsPn8UmnKj7FKCK6Bu43ikZBExM9DE6CfPM6ftUgQ7+FrqMyA2KOeWSjgbdGFUSVeH
	 qkpImT7uzqpelCEivFoOZwdAqTmxLAv+Bzd916K1rikOEpv3wvJCmtdgXklqxUdaxF
	 eDvKOgXpT6AQTrCVELuNQpVVX+K8mqAMWV2BgdrR81RppUYlo99jH0BP5hCLgjFnPu
	 bnsBlrXk4TAuZyFd/QN3/AlUA/kNskI+dONEgO2tqbjjSqEAXZBnwhnyEj06lQNLk7
	 cI64jIy1C5RYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9753F10D1487
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474869358.30845.8874726149321280960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452fd6050829474f6de4c70cc490653c174ee1dbc8285809444692ffe02603e5
Date: Sun, 29 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774748693
