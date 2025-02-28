Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F490230BE0
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740772734; cv=none; b=LqnTcz3dF62buJZoXCJ8XM62E9shNQizZhEzzAKaUob4cN0SCFe6pkk/Jdio+kCrPhxMYV9Mcv1VpWauwSzArSHL3vKAJ3jdsbN2Z+JdhD5LEc1O1Ympkez9SzrMn+q2041UUqBd4ghIeANyWRy+OMggn5dJNkQEgxN36+HtpJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740772734; c=relaxed/simple;
	bh=yi2WEklVSWgoyijuO0lmsa5kapzRgpubApeh1nVabEY=;
	h=To:Subject:From:Message-Id:Date; b=B/A4hm86/Xp/a9ehO6hFZcfcDtpaPI66Kf7Ske3I8IGx+TPVBbhGQ3w8ZE5UnuoEKEeP6chFfmIVkTe7sq57CxO7Z6TGQOTQVJgjrfLAhi8i9Sek+MhSvKgmRbJRX9cexWzdkuCqAINdCPGBiBmvihX1cnN90RRUL64qXN2Ipmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emwYzlRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emwYzlRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740772733;
	bh=yi2WEklVSWgoyijuO0lmsa5kapzRgpubApeh1nVabEY=;
	h=To:Subject:From:Date:From;
	b=emwYzlRIglcpaYI3TKAQGIO2zorVq2J4BeW7B1mfeX5DeunxtKqxe6KyR2kqY/6RM
	 Z3dh8rfTUuzXIW5UZYgqS6h5XYqz6Hs38lg3WxFqQzkaGuP3sHQlgBNpnigQ1FZXXV
	 DjazZkaXW6Ww8aETJzwAlP4WpcMCNQOArCDWhai2/jFc/AWuKDOhrpxOsg9WaUlWyn
	 uzboUx/ExoGhP14tGfrxI7BPdFfwHE6ZKXlPnsO0nC697mRmnnQ7VYKnnnxFB1SLBN
	 3V+R3xakWHOBWOeaitoDjFWF/jlldajyrDhMZZbFvwqhCK6ca7FGAJRjZthlmxbbSd
	 CYm4rUGY6Ogkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF64C282C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077273357.5989.3005501315881732913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d07d2058c6f859cf9e5ec1ba25e9dd49bae13ea4667ab8c966925d808cb2376
Date: Fri, 28 Feb 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740772733
