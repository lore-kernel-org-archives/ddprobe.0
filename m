Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2469A33066B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769437434; cv=none; b=lUMa3bKg0rLAuhYxYBLZAjJ4zfJoCXwnveLZVh89o1aC9vZxPsJHokGa9Oq4O+iqeH1UTDUkdu6S8LIq2uv5DB6ahyHaCu72XUf2PIzKvBD4VwFjoi/XPpzHuv14fl7I26d6EQGNcFREN+r48f61a7tO/hxKpm7qmrwaGp5OfFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769437434; c=relaxed/simple;
	bh=Mmv7OVPpb/hvZiRh7j3lRhPdKplPY82ysFnt36Dqyjs=;
	h=To:Subject:From:Message-Id:Date; b=OC+IRUChxBGisA+s7ZEVJ9HY4pdsPSgmYhN2gGbgSdaAIUx4ur9nZVewv99r3QxcE3/jmkoqlbdjWbPS1GKOo5OnhsTqFVKN2oXr7f+rNNCjFopc0jha4/OWGCh44+1tmF1qADRXA+uuJZ6We2NMRb7wM3ZH9lwTwDmHUNP8/OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyLmz9se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyLmz9se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A28C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769437433;
	bh=Mmv7OVPpb/hvZiRh7j3lRhPdKplPY82ysFnt36Dqyjs=;
	h=To:Subject:From:Date:From;
	b=XyLmz9seRFC/Bw1OraIUFHSmuGGXsx8Hg5R2Vuo7HbRQO9ICIt+oDHEyvJrcAdqPo
	 mEZpPmQXsD2xIR7trUlALVDZ2OActEPzDGwOOrqu2wtTn0avw/Bz2lmdphBnZ4X6WX
	 sKavuKCsy7dW7CiNfneNiEuR7EypsxIX7pPpyAVD1SCHKXkbs4B7jinPdRcCgV3E3V
	 kQvNo75sgLhUqK6Sz+pnpq3US1UWN9UH+qW9TDBzCL8bzuFGonTzXe86qqhq8oHw5/
	 cEYmEGuKnIPEpu5/KUI1vxgGM5LUkwx2cH6vWliqavX6E3qoMkkl6w6btEtasKJjTr
	 UDuAh/sIBVcrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADDD13C1E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943743357.22566.5240979266614257093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36424282a58d396e5cbd2abefb45de6f60973f8b0427a9e9a904cafb4fe13514
Date: Mon, 26 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769437433
