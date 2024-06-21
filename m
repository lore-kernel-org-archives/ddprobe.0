Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF8B82D66
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718963543; cv=none; b=JVlC9K/VQFmmIli3oDVWkDf2ORxdtmRPlcgIY8IzcHBBrCYjusMnrW2MNihBF/37RVKivU47eGXR9YRfOzsvckLcK+cDNXkYzevrMll+zdsDfg8HIWOMp9QZUtDl49xIdmUCZZFLliJvtvPt/TI9aWhNpVsSEPA2LdafPgHsmmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718963543; c=relaxed/simple;
	bh=WaUMhUJYdb0I4HAWCjo2vB/BDwAFgUlIAYYcTX0YuUc=;
	h=To:Subject:From:Message-Id:Date; b=FOwDrZygqB/Y3gYgra5r4vu/jmCheeI+GCXu5aPUbvtNCCDkXtjdF1JE8WvI83ZPlZ4CDEDOpjUUHuxuw/hW4S+RMMBf64cttGTU7HuDvNLSPPmXHnYVKDJKHAyZz/BqMh6l7oMxYI4ps0jNXi70qYyUbKReZdM8DpoZzSYzfV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9zOWtp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9zOWtp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EB4C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718963542;
	bh=WaUMhUJYdb0I4HAWCjo2vB/BDwAFgUlIAYYcTX0YuUc=;
	h=To:Subject:From:Date:From;
	b=m9zOWtp2FyFqK5Ty+9KFVg9pJExD4XULXjot6NICknBXI7ENHtW5tqp7OCty0Fo6E
	 UPjp4ddZKshuh4a51j7q2FYkn3GcIrSKvxCvBp36AVBE60mkSldUdXQcRojlf4MXnV
	 yzlFGD6KphjDu6aIB2iYMdqQXGKDYW6IiirGGtN9lTttyjNUOIqQKADpIxNn2Nqj1x
	 3AG+27oLqyIqlHubja22wNsAwdMKjG0Mo3DPS6rzti62wwgUDL4CUZKBPTlImM2zTX
	 eVlaaKHU3RiLJzRtteSFhZkm6ZntrXcUsrN2TY2del95OzKLuYmAB+7+k8rH2wUA4Y
	 G0bOnucH2bxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71F9C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896354280.12489.15899900331376845900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be438a0486e1346a7dd113921db446d5edeb3b3e41175e6edbebac980129924d
Date: Fri, 21 Jun 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718963542
