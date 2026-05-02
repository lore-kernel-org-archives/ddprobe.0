Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250AE23B61B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777730854; cv=none; b=SQnzyjqDy4pGEOUc1wAvHpBh7mi9liPcI+T1rbrV/KI+eavNrvoyxEa6g3juDFB6RMW8/8NfpPJgJMvzx+7vov4UKRZ2/SltoESWKk3WVwK9pa/Ooc5rzpb9yoNOjv4UwlgEdaRIFnqQoa17JfXAkdccU/9cmplxlVO8SQtfZNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777730854; c=relaxed/simple;
	bh=NuUawLSbbFFvDmXbq2oUOhsN2CUP/RATvrqBauNV1wg=;
	h=To:Subject:From:Message-Id:Date; b=Rnj6OVydQK6q+Pc4YVFflYVQWEYPSkvv2GmyJeRQefImh5xlXyLAO2dLH54cNIt+ZJWTcn8cigFQsDok2KgXIx2P1fq2CjBpwc4cdQGbndndLiAsNVaaEoo5pmMq8oYTs6YbOOShyLqf8insLkGf67yMLoXOm3v6iEFnXXh9ls0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMubovKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMubovKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19EFC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777730853;
	bh=NuUawLSbbFFvDmXbq2oUOhsN2CUP/RATvrqBauNV1wg=;
	h=To:Subject:From:Date:From;
	b=UMubovKfbJIsHKscdnOcx/T+3nm/btJUrNBkdNbcd0Hd3PWtKbPY3o+xQZRK4DeSO
	 GRtfEwOTX6+jEUjjhRF1tVqj53PUGot5lCFLJcMwqrhaAzfpjcLEj0pEJK1PPHYzxC
	 AZAJrIi07f7N17vIa2YmH9VIMLuk0151fL5rpAEpFRbW09m1gk72EFpTqv1uipSA91
	 xz7zZ2kAFQCeomDeQFBGbu8ZPmxG5q+Hg/OhqNcka/zJwvgeXk6bmPXMBTwtjsesE8
	 6p+n5JfUTGK6Qgw1zspDboYS9u4wBAPcKVv8dEz8xHkvR6sNuRMhpVlT1h73Q141In
	 X9c4nkUBuCZNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4ACD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773085368.25284.15874081030236689478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cecdcb7011e4f1d2213d79553f463a393f8d803bbbbbe408837cb7963d24c91
Date: Sat, 02 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777730853
