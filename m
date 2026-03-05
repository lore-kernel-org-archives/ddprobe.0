Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4E9336881
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772683494; cv=none; b=dd7+TqXGTGWhTiGMpjge0FoPVqIdSj4flJMe4Ty4vAXdav0/n3ugIauUp2tyPCTaqPzSW9vh2jx0Ztc18Ultujg66aEurlOli9fX5/EAVhrPuvOJJOjXAmYowyVrMJWysVNme9xLWxt+IPwpP44vLjeYInTHfqwMmMDszYqp1kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772683494; c=relaxed/simple;
	bh=SKIgZk44nYxKrdlCi/YUSaGfVMZH5KoBbCRdmaWoYQA=;
	h=To:Subject:From:Message-Id:Date; b=ekBBYrFO298XFqj/ufyl7PxdeGWKzSjstUeJnHeLdPJwDBBwwfXzrfkGMhe9MVgjOoN515uLPpvgDO1UKkbJzEOoEtGsnT1zgJEhwqOmkB3e7nRIRULx/ZVc8udvykEa12dPMxE5bxnMCgyMuvpoBlcn1DkoWU0W6Zd4SYOGcdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaE4QXq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaE4QXq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C0DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772683493;
	bh=SKIgZk44nYxKrdlCi/YUSaGfVMZH5KoBbCRdmaWoYQA=;
	h=To:Subject:From:Date:From;
	b=OaE4QXq8Bn3Ce4+TazAhoHJVomNbRCzpZWvL7h3Oq+egi6lorP9Xqmv8lJHZ+5+0I
	 NgkpI9LdNujAcIYOPM4bxqel+c8iE9YIJ2AzyFcOtqHL0X/d6XytoBk3za2rG+g5vQ
	 zMHBBdL7sEwjUkNe6Nl3g9JFkmeAvT4fgQ+S6sHmn1PVm68AFeWFKRxc5fRHSHnyjC
	 +EqR3ISeWtMHqkpQgmk9+Ix6YLZvah3xGDLQydT5B19ZYd6xZUXGOBTqla0sKHAozd
	 R6Oyd3jAZg5Kb9R5QNIZ0QpNUdfczcixOJt/n1BCXfAIFB5HA3+WYrHOeCSlwLP7Sw
	 AR0nKUTMXGWAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E1EFCE5E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268349358.2963.4769273786086776351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd9491e324d170b254d3e97388e9f7abe70a84a9ff7c6c8acdb13c59dcbaa54
Date: Thu, 05 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772683493
