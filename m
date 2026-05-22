Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC6722424C
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779421954; cv=none; b=cbMReDJ0Xi7DykqEemNICr807He3LfYqvHHgR88a7llVVwHwP9EtEqMO5ntPcaidGx27xwzTCBq+T2KRiaVMRBmOeY25IUWZkP1nOfJcyli0PanB8Pr0j15vaCDskgzTXdr3T1ocSF8avNfq4hIEgEqDjb+nrb1DIvaMTtpploY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779421954; c=relaxed/simple;
	bh=+1f9FFV/KQdOL0NhHyHOpZLkN0pQuJLRBy8fJeuZQpo=;
	h=To:Subject:From:Message-Id:Date; b=umVP0ZrVHrOhb4KRzODXduUEoa4A33wdjQJ4Wk1NWxVABn2BAEHTzr79nFLDs+u1pPUkLCsWrhcX16sYSMB2Hc1KHSphdxgzX9xYlgrljYfPOacxU6Gh6s16eQ2NG40OTfMXZCbkFcArMsBXl9eOh55XVvaggkIctd98XhMKyG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQGqEsMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQGqEsMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0B3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779421953;
	bh=+1f9FFV/KQdOL0NhHyHOpZLkN0pQuJLRBy8fJeuZQpo=;
	h=To:Subject:From:Date:From;
	b=jQGqEsMw2cd4uafBk1YNNYdTS1CY7T1+3b+ddu4G43Wo/P0WApguw2lHJVB/raspP
	 zZMale0rqJGbRyPMnwWVqMhxYRBqODq8X0bRNDxvt2YZnoAMa6ZE7XZHeBaa247sHN
	 1B9F1WEkNe5UTWSJzkoHTQfubD8K1YGGgSDxcO6NemRqDeSE7fzm1fC3ND/WKGeJOl
	 PMFRD4maKIygriapVhAh5omvJQysO4oY6yObaR0aICjVlfLq/DIScCbkXxM8kHRBf8
	 Ouru2HUHxF4QnBXp4nevR9pN/lWIz7WhAt8D/a37LbG3DNQ/1zHxqgOU1OoV5MfUTn
	 M5vNssQ6l0Bjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D38CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942195369.12452.7135520134581946147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f88bec51ad152b048d3a80b422251b52c84314a65039a3c2606ef5075395a59
Date: Fri, 22 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779421953
