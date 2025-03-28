Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D05E1C5D78
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743127194; cv=none; b=cyRtJUZ0Udsj3udrDXCETLO8lYdhn227R6hxKz3sVkRFVgCOEQCUUZjX68jDif/zPgYqfUGpRqWIJoDyTzxjT/rAfcJkK6P9IvZjmLr7Nn3ZjUUkRb080/drQR1P0Foyn8/moSoMU0njzZSKeZeVSJbbQYqlP9OMC1HGwI/yvAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743127194; c=relaxed/simple;
	bh=lb2oY5Nu9z9nfVEbhNZT/V/6WQjlYvGnwOy7XFlWBBY=;
	h=To:Subject:From:Message-Id:Date; b=gDaXBn7H9MGxywssq5leqyVfQoKlqmUUfWxfgiLu7s9Ba36v9OlL4dn914DHgyVU4pE5aVUaZpxIo5YSNYvqN56p4UNMWfnfnnHN/KgVay5FZgYQLhSTe6OCrl9t+WVJSU17ogawERAiWpdYqavQZ9lX7cuNFum1Ll7zBpmXVOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is/mUn4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is/mUn4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB59C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743127193;
	bh=lb2oY5Nu9z9nfVEbhNZT/V/6WQjlYvGnwOy7XFlWBBY=;
	h=To:Subject:From:Date:From;
	b=Is/mUn4w3WceP3msTSVePRUa3Jiy5le3Ec7zCTMv3igwO5HvjT2sBm2hrrgBNl8p4
	 BCgp2NVNDk9D4TeweK5T+xUfm8Crm76icd7OUEP/w5HtFa/Sj/Ui/achOVQFGAveoX
	 Jz5OGaagDHAP5BfvQgl0upjvZwOaFhyzk3cTTGDD2DRj11LuL+A1kwy0s/VahM3VtB
	 85+Q0qeivb3EaCEN8Z9CTU2jEeNVy8fWNEhIWURtGo1wfF7X9K54P9uPyFVePkX5zO
	 Bi9zJM7xPUaW0d96OVVFcU340iOn6SP7u/ngbXJUC+hw4sPtx3lLjavHmBoM9aDwiu
	 eUZKX5gtv2DcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A640C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312719362.6129.8699239308161607794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76c101fa8812fcb8c34f93cbc0f7a6e99be20667f077bd63c3a749bef9a41f5
Date: Fri, 28 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743127193
