Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D56718C0C
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740200934; cv=none; b=mw9bxtLTvL5iuvq+S1eWj05PN2D0K82LW/atlFsx0U2tFzNkfWCBqtCoox2dNg3oFfNUecotz0HieXOYTlN7wYC1/Z3ozDTTNpp13N/oj7Xo9wTeVKv1QZe46SE3vHQlMQceYMHBN2OHcSTlH19T3w6s1NFBsV5mB52lQDdOEVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740200934; c=relaxed/simple;
	bh=5DmMVb0v3y/GedEQSJLZxqGQtcGVzkrChLaG06KlVFE=;
	h=To:Subject:From:Message-Id:Date; b=fa0wwQoP/mGQUDS//nji4WvU/dT9B+lJk4eVtfao9qd/ryxezsjcwnIT4xNJfp6YzxarpDbC9Dz6UK1zrI+XnVdx0WWcdXBBI6SGby8vNlQFdS/lgEd9FQwcfu5/P7bpBCAjBycivQNCRsIegy+28f5rEz30LUxd8RSVsiEAKnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td7TbQXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td7TbQXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0D3C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740200933;
	bh=5DmMVb0v3y/GedEQSJLZxqGQtcGVzkrChLaG06KlVFE=;
	h=To:Subject:From:Date:From;
	b=Td7TbQXkPid8/ItckxLtA3l8p48PnvSna1dfnlNnr7KwgfcA70UpCEUUv61vvGQv0
	 XIR0iUcYAhC3xQBPn99cGyXmwsYd0oe8T1XYsRpaqEuKY1Psv8V5lINWk3mljqlAEo
	 H0UJl/3logvUxI3GylPy6orqxSL7kMILVSigNDk7V6VNy2WWaug/yMb37yDJMWy9TA
	 intVjMmOAlYgnluYRb7RqhREOHw7fauseSMGPuOLnkOGCk8SjCDa6EfpIn8EpVvmXT
	 yydj183LTSy4jth1Y3ZRzSAEirlBNz9fqRyR9AwYf0FjZRkcy5qPlozuLlVJv2zTXq
	 1T61XrCXlhd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F6C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174020093358.1941.12362440698456088841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d809f5913fced3e04844ee2901190a68463e56166543380170c4852a3db994a
Date: Sat, 22 Feb 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740200933
