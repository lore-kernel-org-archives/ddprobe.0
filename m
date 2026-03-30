Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA5B234964
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774839294; cv=none; b=P18Xxxweg4M18MkCtZ8sqPomRHi9fmlxFmMt1f82iX3VUIXudLqo4W/8V8z7g8yX+IbVfhKG3ruZKO0NrdwycBQbM1p8aSxIsoXJ0d+hB1RZDQE1n0kCt30YuOWCU/WzJlPltfb+d5KmTkTevVozs8qu7QHjABwGIEdcz8WUigQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774839294; c=relaxed/simple;
	bh=ejeV/wEsm2TTR2zNlZEQgIX1rQJtEJD/Y25Q/oJo2bA=;
	h=To:Subject:From:Message-Id:Date; b=HFd/zbgJJ1JMl3jxgxCVnZukOzQadQsFy+Xyxoy+2esTmOz7NVE7LFg0O1MhrXdH4RxatkoIZTHJNmLXzvUyjbgidswHQjqm3pHjKOYZSE+7XvY8djW719UPrczqjD4UP2cd0r3EpNE0j9pJWCiOBhupqlnfC1jA2UioGFBoApU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx3OhRAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx3OhRAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2658C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774839293;
	bh=ejeV/wEsm2TTR2zNlZEQgIX1rQJtEJD/Y25Q/oJo2bA=;
	h=To:Subject:From:Date:From;
	b=Sx3OhRAXtBmzCAbKvm68160rWQLx9XkC3gOhr+cfhp+GwexHQXg+9C1BE3ZpOg1ML
	 GyeTsTo8gOAGf26jYVcI24SFn1976sDP3tlUFzpfMRU4Cha+rrxxaDY98uagPBWbXN
	 dWiHUftN2jNqwODZza/JQ7q4L7pyQNm61I9x6vmmWABJJCdpQXogidesu0WDynV7bz
	 cwm2vWbDVenA65dPbpe7YtvN8fhC+jb7YWpquz/eUsTjSkKqfNBONF8OPYwPrPYaR7
	 lx24V/6Pbjv97b/Z8HNdVlcRZQktIUjygW26W7Bv7msyF4fvJY0UJcXx3qgrpeLMB9
	 vzkzcGcktPw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067BFF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483929358.26529.15274351995307046952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b492b4c15b0db34401a7c44e0c47c44460caa50205c011782d0b830212814c4c
Date: Mon, 30 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774839293
