Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7273F23A3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779102034; cv=none; b=X3+FUQiQxCq0T4wB0h6z5hDZxW0tuEsOJk4cL5olOcuAM+bRhMAsjLkVA4noqqFUWGRYVMsNpHCXqZ3faVjvcHQSf+7j9RTT3TiimSPn2KEr01zL/Yu0T0S89Gi/X7AeC83pwkjc2a8Z30E4gqdmcC/+2LaDg4YSora0q1VZEFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779102034; c=relaxed/simple;
	bh=ZUxB+0C6qNmsAvFLYj5+JqA2JKROcHPeJHF2gwKa4hM=;
	h=To:Subject:From:Message-Id:Date; b=GOWVknvQWvnMJDFePZv+4ovzyaclJ4hMIGvI3Qhove/+jab81d7sjrcJEa1sJyP0zg8eN3tkTUA18gdU0BloIHo/a1sva+ieQ4935P+frXKJgf/8ibhzF7F/WMjfFLNqhEzPcmCtD4nQUVp6SR0PTYYqmS4qLD160S5kegyeHHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh5fCpIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh5fCpIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4268C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779102033;
	bh=ZUxB+0C6qNmsAvFLYj5+JqA2JKROcHPeJHF2gwKa4hM=;
	h=To:Subject:From:Date:From;
	b=dh5fCpIf1mZWgoBDKPsKHB/FH8aUkNml5IKQ5XBnLPFMyALS1cJYkLmWJQn+ie2RU
	 RglX+23K8TzpLMYmjOEe9bv8Uj0ztWQLz67yZypj58NUEJHVlZCVDFVcBIwFqE6ChA
	 UfK9vhKvR6HkjwhwXCgOEzY+zM8x2jmEiE6PEW9bqj7sDj2pL3hoB0mkg9PeUnJjZO
	 /TyYEDLV7TzirdTXPbh8jEZUwKp0zhg0xaWphCNnA10cwVM1N7MZOc1e67/ahGhuas
	 9ahtHcG9RpgyHZVI5sme3yWmDNd5PoPxYma089+I7jPM5u88Qly5Ayuddkue8KMwGN
	 PabNS6yald+2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B211DCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910203371.31775.1896117656880826414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a11cda325689c4d4241ffcb934e18b0b8883d75455e5333032ad2b1c247d0fe
Date: Mon, 18 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779102033
