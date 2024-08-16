Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1421EA91
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723774554; cv=none; b=rn/hFRQ9r4wUjj2zrBEDLOQN/5jt2uSxnlUfIcYt/tl4AY9lu8rPr2AhNXOHM6cRkkwmD1MeHSB4qpdvUE7X3ldx9d6xRNQAsftlBJHV67RaDebJWpfXK8IywKFoXdEuVx55z8EDQduTb4gilhaS1aqlAH5Q0ltJwJey62eo0tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723774554; c=relaxed/simple;
	bh=2rJh8fp1ZABvHs3XURXZsgQGziQynP8QeQoTgBVHBXA=;
	h=To:Subject:From:Message-Id:Date; b=ZXhKg5edjK3Vnw9rYptxhV+IN42/Gkywavvc8GMymiAzTUf5eiKBRwkwFkCkA/8lCFGUiWVyG7ygGiitcBsXXmGu2pGz07gBKlwIRroDvAKgzz220W0jfNAQ9kiUPKvO3NiuxaAbBG6XOiYJQ6KMD1ya1HTmZImcuMHV/gHPxRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBH4rieW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBH4rieW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0E1C32786
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723774553;
	bh=2rJh8fp1ZABvHs3XURXZsgQGziQynP8QeQoTgBVHBXA=;
	h=To:Subject:From:Date:From;
	b=XBH4rieW8E7GDKK6zdsujNsw5ojdTpapnt/wkp8hHAGTO7ouM+EqI0WArrizMtoSb
	 um+754W5ZWqrOw32nEHDB7KeXqUswirwJiWlacVzh4Oui67NlqSI1v3OVmIA6ZfLQ0
	 iJoaJVTUKDcIxio1NQosrOGYLHZWUZ0OMhhsu4hMuJ9H1ZRSIo/fIpCEZGag7lq+8C
	 uqlfBCc1Q28P9hZTNRsMVrdEVD9Ed8sFEu16vPnZG4EEJYu6sE76+c+s2MUNIt/L/d
	 1Cz+vNizBAzH3OuncC31EJil2LmX2szv6todxHFVfqgzY4or1kjUEi4l68zzSBvKyP
	 va3GstrHCWUKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7902C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172377455364.25726.9992170911330916984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d09d4d3baa571f3009fd3c1b47f670cb08ece6bcbf6da501042ada6781c9879
Date: Fri, 16 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723774553
