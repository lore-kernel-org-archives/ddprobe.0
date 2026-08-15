Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1708003D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786761034; cv=none; b=OjoGzBg/Kyn8DyEmUUFMgIXUkOkV1LvyOYXJBsMji+fm530UB9P4wrBSb/ai2lIJzLCm3RuAw6zNOo9i7opnDzL/9nnAr+tN/zsVQ00XcFkBnJze+lGaiTFvBgf1WTRnUaf1jiGjAS++ea2s+lOxdn5qZVntk1y8vNgt1wcRips=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786761034; c=relaxed/simple;
	bh=LtmkvHs0EZ5cUHl6FMralWvZuKnmdkZBRXgoP+HsJdA=;
	h=To:Subject:From:Message-Id:Date; b=A6Uy0W5eIhjId7ymApP/OuG1QsA2iYewoHBiX62cey8TIpfAcgihmV3SEY2TxycOIjT+NBEjfw3KxPEFvBHjTYnFau95dWrQmXnwSB30rPyj9GgZCGUgo+7giEAdOdsXjP2jsA8r8QtD0D+/nIP0eLU9qe5rX/Xs+syt+Fgy0Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6b/KLBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6b/KLBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20DBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786761033;
	bh=LtmkvHs0EZ5cUHl6FMralWvZuKnmdkZBRXgoP+HsJdA=;
	h=To:Subject:From:Date:From;
	b=M6b/KLBgu2JZypnSEZ07MiYJM6AsoCV+p+3tWQS9QYIbfiDxfIF9pzJ9+11WwJk8T
	 xZa1WSCv6CJjK/xMxYqTMRSuPSJAeOq3200ENZEWiWyWt2jhg+prux4CbU5JfsizM0
	 ZsouGNID2GqzETr9z2pzUadlLL3WLCMwK4tjn3zV+aBYMB+OYP7QBXVDvY/V6ywRJ8
	 fuYVnGnzgqVHt+uaFWul9HYXH2My9LphG9/HabnZteQgX/GuSV0QrLhC0NsdtqLEib
	 rcaJdgtHQoR1sm9fCm/hIaHsuEBw1zBzPWgjFb8SvtY5QwNMoT6vwwhGkiWIzmkeZQ
	 DVfVWFQithWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF24C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676103373.22655.8919293178172665341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795fe904b58ba71b18728664a9431bcd41db97a1068df85ee8e8a3490d480dad
Date: Sat, 15 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786761033
