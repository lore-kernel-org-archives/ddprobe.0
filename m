Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324EE2DA75C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749803996; cv=none; b=umByRXt4R/nUBFjdFIdCrgJhE+yGp4v476RrLY/yY8FumZZt8Kiwq8IxtbhxWEaGR7wNECUHJdlSgf43pImuWdTzBIUv9L+qozHjOCZlM4nMzv1CRoyvM5QpbfmgdFaKdl2v0A8StTqIh1bdskoqhMCMpYgsWRuTY7oWlceyLTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749803996; c=relaxed/simple;
	bh=CfgsfkjK9U1KFzdvZfza5CzmRhEqnoZ/pMXC+EmjjK0=;
	h=To:Subject:From:Message-Id:Date; b=IBf9PMY1mhJTHqwl1Vsrf7pWtu6tGWTo6zcZ9SOR3+5OegJvbfhgREyvt2XO7Y/W9+5UYrbws+d8wYBhfNIHZRPtNs6x0EC0UrgvjlD8Vejs9BQkglZrdkZnzEdUkOHYJGY8a3hgI4yzrwzY/oDLKP/zqMyyIen5DbgN2wD+Ed8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IopOF8ZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IopOF8ZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749803993;
	bh=CfgsfkjK9U1KFzdvZfza5CzmRhEqnoZ/pMXC+EmjjK0=;
	h=To:Subject:From:Date:From;
	b=IopOF8ZVyK8iOMSYxJ8K9JfY0+Y542zOgyZXlsPea8RdJ7N2WvrvI1TDSuLu84akT
	 41ak6ESooHTV2EUQzA743wJRRzBgHd6RIN+Ek28YhS/biG8w5MPCWpmlWh9sTKQ4rK
	 8YHu4hxN04nlgDbEK8t91iFXhjMCNQ+h2OtWW7JP5829IAhxUu9DtqHIfx5WeBemG4
	 IQG8MhssPhJbV3b18g8AqE85LODknB8Je9l+ICgHVMRQAborN4u0ZGcfVV25A65asL
	 4enGmW+5cqP3gNK5PrzaHNcqUv1chrmPZD+thKuJilNLNo/jj15d6w8cgZPXRfpodz
	 3qi562pbawi9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB70C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980399357.1697.530285899683823157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d18bf59b48424b9b096f101f92e60163b1afd37f6b576f20848b8f50c0a329d
Date: Fri, 13 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749803993
