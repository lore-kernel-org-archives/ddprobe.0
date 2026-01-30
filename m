Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24041309EFF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769739834; cv=none; b=bVxB19KD9cY/59SQXoLx9eEbzFGrOg/tjJNYVeTu0HgXDhy+LSP7qJJCXT5B6Mpjs5s09pnTe9jHY0DhqyZDLASmkrkc5A5uOmbJS1FINb3bMdef7TXfv5giWBDJtjaLq4eK2rTc3Tg4aE914JL/rrP8SQzRnA6MX+JA70ew+/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769739834; c=relaxed/simple;
	bh=y60g3GheucRGCS2WCOGg3s8NKt+8hEKZjHbM+z98aiU=;
	h=To:Subject:From:Message-Id:Date; b=l3ot3eL8VmelP1oo84ZmI7pk9BOXSbtXTDdy/9oEjH8hq2J7ZAFUswXl/PEa2fpeoiEXyOXCr39IZ9VC2ig13Wdmk5TWQuBYnMdLfg7+jpAPOpQ5b3AzVzdDsCWUdfLpp/GZhGE1rrhJghTS7Fk6yCly+4UuBaNYDDSpfVE+LMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMdd6qcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMdd6qcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC19FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769739833;
	bh=y60g3GheucRGCS2WCOGg3s8NKt+8hEKZjHbM+z98aiU=;
	h=To:Subject:From:Date:From;
	b=nMdd6qcBUP6HYcjbUqVpGa7ZoBynHMFpN906u6noNOiGj9DH0ncwDh0YgPnu4q8wN
	 aYta7kY6wJPvXTw5OSr+v1/RmnWt4knEQqrMyY60DMAz3SJad+L0xaO01F+ox3PxK3
	 ZsVEoWw8Ep/U0z0nNaTheI66V8fzhSieAMsTZW8EimfnWweKctn1gIE5KKUUCVOhDv
	 sYdNrGVntDzewvvsiNFfgxN37nIzRhhIGfuM/ljPGECur87corgrU7g9UiaNH7zuW4
	 rMKak6iJOUIfsfwsDRLhv6Kh9wEY/FnZt29Hrn/6pKFCx97Qz/eh0MKZpc3Rue+ETJ
	 t9AL2rpdPFy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C917D73EB2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973983363.23254.11459597762355134657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a17056d5778a1aa73c0c88aa5b6cb2f769a3aa3cd4358e96d524494c971ee2
Date: Fri, 30 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769739833
