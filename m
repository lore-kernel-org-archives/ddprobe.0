Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE512E613D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749642594; cv=none; b=fLXSftCOt1OCN04iYo3YBc/TNlFgqrw+FwCnaUcQsOYvsnZ92C8v957aqxtJMsi3KOxK1SVw4RlaUtFOwNw06TQDZ8oJlFY+MvKalkHybuEqem7G1Jgjw+sRAQMqpitoAfzR+mVGu+0W/Da6X8ujYe84Uzmjqpk2i5SnqKlutiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749642594; c=relaxed/simple;
	bh=zxQEGryjW0lrQK6E2iaxy28pRkDZaYkJYEL+sYPI4dA=;
	h=To:Subject:From:Message-Id:Date; b=M/CHqGjmvYvu3xCkQZSUHZuM2+2PPa8GJX7zQ/rI4eEqeHJ8loeRcbZEPnx6yYtRDgiJ10FYciUiI9MtDfKkpKREZzOmgh9r/+eBUGb2NVcgcU7QtVhe9cRg5iPrd0A+mLOf/drznAmWjorrMmRvBfU+auwoHbAtPq/w6qDDc5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1RtHwYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1RtHwYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B626EC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749642593;
	bh=zxQEGryjW0lrQK6E2iaxy28pRkDZaYkJYEL+sYPI4dA=;
	h=To:Subject:From:Date:From;
	b=f1RtHwYBHCXQyJT4hUG7ppWSLAZScW7+l/RITMHeZ4WuAz0e2bJi/dq6zDvtUJQ0k
	 SQWX0qNI68jpRgseu4dDgz/OgomUN2rOvoyPr/OqDMumto0C3GCh4v4IFOVsUsIkX8
	 QDPChjj9KxoeqUCc32arlg1RN6kSIBbbdilanSD4zs/7REN5l2lkrWR4fk9fUhvwQ3
	 vyPbNDKwz9MxkymQ8hNVffZRC1yEHtUy/PCZjoll3OzKBvGh1FC0I6z3L9bLiMnZ6r
	 lyUwuSH8PASfbOcsUJjbx49SPhaDeIPW1tWumv9qql4N/WyGwuSNm1WOzNS+blsLcA
	 TmxuzseM4OMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB24C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964259360.14796.13335786307369242554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf840500f877ba1bf2730ecf2366c0a1bb1186cedc1665d65d194bbbce07b38f
Date: Wed, 11 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749642593
