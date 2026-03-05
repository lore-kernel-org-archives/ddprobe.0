Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C9A283C9D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772734494; cv=none; b=ekgU/XezY8+ZT49OpwnvdOzF61zzJhKio6Yysa59VIJrgmveEQqJDfNh3uzJQk5tCG4frfN9ZREFxWi/a2dOwkd00MKh7dOSiD+YMphuRpQYqT1EOR1w3Zb/rh2/GQUmIMRUzuE5QHemdFR8YkbKjTIQ73OoPmgnfoId/N9iAto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772734494; c=relaxed/simple;
	bh=uVoQFuBJ1x2hsDdIdUgPSbHsfzc6IWPLleSJF3883i8=;
	h=To:Subject:From:Message-Id:Date; b=HRri2B4wzTzNSYGuJkljiUM/E65cogIDw0Ccc6A9am+S/G9WdmNilUPnZCtuT3aFY093faAuxyeP14naZnU7D6371QlC1CugRyqyCM13zVw7jVqdbVZoLQllakTP0gpV0Xpl1d3T2+cs6Hd8iYUOEeInWL/w8Ewux2tOii53L/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPq7V1dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPq7V1dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88C7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772734493;
	bh=uVoQFuBJ1x2hsDdIdUgPSbHsfzc6IWPLleSJF3883i8=;
	h=To:Subject:From:Date:From;
	b=lPq7V1dN9458aXp9Xs38XYNSARqhCpDKHCPI2V1AP0hW3kNOGrxkHIVWsYSciKZy5
	 twpa5q1A6nAW8vtoU5BX/KqClW+9xgenfxpsFi3jkoqyxK59sQ0Celpg3HY2nLYbxj
	 K7LWVBjwskcUWRDuTfje6LmbjACBw0S+aKJh1akSuYp+P0nGcri2bgNOLzYv2NJh60
	 Ppz+/2845QcCwJkk1Iw6o1Q0ai8oGjW+JspbqlpPi5f1qmX9boqC6w6I6nfkB0crWJ
	 eH/LdoRHJFjQrOGo1bBp+jvtz4YFj8/gVSjw8CcJRq928+kZLuyYT9BuX6g+aGAvmu
	 ct2YR/SoEN4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF3F47CAC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273449358.19215.1740602688952099001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a336f00a2d27235ccc0ee9fbced507ce932b305a11816abde831c0f5819e25
Date: Thu, 05 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772734493
