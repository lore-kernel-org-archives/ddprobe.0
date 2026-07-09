Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E83B2FED
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783595914; cv=none; b=RI61iaV1is+9p6TlnCD4/36WwGcdD2/2tLE6W4KZy/ZAFtQO9Ja+kaKE8XyoBDPdeHZLoSVcRoODkUP63O7zEnI7UV9p3HAtJEXlmf0z3Dt+wZS8kxzNpc2SMQnLfHYTxoqyNu61+DqX7OHN0HQuBp+wwjFlK9WwHtS+bXz8ZHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783595914; c=relaxed/simple;
	bh=j5GnW7tKq15z2ws2pAMjebcN+KIUWt+wD9nEIw4DFQA=;
	h=To:Subject:From:Message-Id:Date; b=gEyPW6sn0H8z/6PEho7oUT4U2LQxXA3vgxUJXWIX+1pHr4QISB0/3ahPD1JCCxinYDFV+JkbcGZmEOAyADqun+TpuxFh/PdewepLSkLAvZy9sIIBAFClTCOmiYLl03fvQAkw+YMLSLivFzaHyKnTI6tzJZINMX8Ej/q0A5TUOKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO5VWYEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO5VWYEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB45EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783595913;
	bh=j5GnW7tKq15z2ws2pAMjebcN+KIUWt+wD9nEIw4DFQA=;
	h=To:Subject:From:Date:From;
	b=EO5VWYErjbUr23ubg+idlFxesYLXw8PcoEQTmS9FFKUC0+dbJalwib/NwnSZ4sFEU
	 PSabeiVRgessLes9KrnNC0Fih0EyaTAARnaorJtI/7lOUTVGtJSOWsX9r8KR2HfBr4
	 qkA9cx67rPnv2anFzJxnzSQiFoUZ7uiwA3Psrqew5meAntjXh6dhm9ztjKo7MIrrZO
	 SwUgDp6VCelJQsIWk37pBbvB49E86hbD+e7uUd75kg9Goj9OJHgF2XzGaADbbft6F7
	 sCD2ghYud+F1OVUP6vMTa3n2yRs2Wfw4aWF4GflGaRq32md1NhTlS5KLoyGGoEgEAO
	 uBxkfXf9fFoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A955EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359591368.25936.16920812122311096292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f709731e7149c1bfcf39616ebf2ac3ca57740d8290b7a0cf94e9b9f2b432730
Date: Thu, 09 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783595913
