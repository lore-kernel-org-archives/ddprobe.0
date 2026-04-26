Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2495D1DF736
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777178254; cv=none; b=BDsXeqbwQQ135ED6VMCVxLhAlIl1E0bCeMPb7RaAdxtJ5VMrQ73j9/iqrt/jCn45rDrCSkO1ilmxRm6XiyejxT8oufkeD+fhvyNE5vuK3xK2MphhknlJqegZHWwx1cKBUJxXbVUAkZ1zqvldI7uj3s0B3P9r38zlp0tsKUgHua4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777178254; c=relaxed/simple;
	bh=6fkXWp3tQOmMB2ttdx/Ib4e+zX+0BV5aOHOUoAK/Nlk=;
	h=To:Subject:From:Message-Id:Date; b=K1ifEWLflZ34AWqujj3jzbecJynjIHJ/95ZChA1a8Yy4Ex1mQSj3wC+UVG/PgG+5TRpEH39e9fT4bzJuu/qnHVd4z8IEVCu8aIb1gmfCstgLVbPlwlpIjpmu855IWRBXz3VjNs87JaeBtSNZgGCD7KIJmW0OmxilE92iyhhrnoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcOjz5Rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcOjz5Rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C97C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777178253;
	bh=6fkXWp3tQOmMB2ttdx/Ib4e+zX+0BV5aOHOUoAK/Nlk=;
	h=To:Subject:From:Date:From;
	b=mcOjz5Rqg+DPPWxJLoLlAPHS3xLJHwhYT8nu9UHNPCF3LuOx8/eg7cslDNJYpIapv
	 sgY+IRW0xxOG8xM7prXfJ1abmUcKs6/OUul9f44IuO8DE7rPmR/rXmmo7KJEW7FL8N
	 E8gklPBt5zbcsDXl2PBnnohpkT2dbu7dT9+XV8tRhvkkBTGnXZ2rMAOsa10fPjfQOW
	 g/wPrO3bmWYe0e/rsNmPQIuByhF7e3TKIf3a20RR4ArMkGb3cY5BXWdrNByRyunusa
	 Bibn67CTwMcXXJYUTuIz04UC6/0eYlF5vfu3Ywk43jl0BQVxt0cxlSzI77hMZTqGxY
	 q1oaCrWK8gUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC342FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717825368.16076.8706131402504067166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c548ef2e69aece039482922513dd28c8764a6420b95f91deb4480aa84d95a5
Date: Sun, 26 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777178253
