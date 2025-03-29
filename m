Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8C0322E
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743219595; cv=none; b=Qliaa/EjzLlRZ+0IZK4bnlapFa2Cxitd15ag8exCWCXKQEQ/Qk5bX4nRx+rrCFHSq8t9FHKcgqVkeAGMhnC/JwX/uZwG6zJ8rtK88hAgyYyYaf4zF0XF48tA0friQIRCzE+nY/kiMbj0sAs9+abKUUnT56beLyMr8TCfALxtj0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743219595; c=relaxed/simple;
	bh=+RhPbsd4xL2GGs0rdZtMzbCjKNEAO7/OpavsSU2gga4=;
	h=To:Subject:From:Message-Id:Date; b=ZcTn2bcQT4INW+lXhixLYcPK6bGug46xzNWcubN/TgCXLBAGPVFl3lWke+iEp7ga6DGh9WDkRusNV9EvqF/NOfkge8x+m8u3+Wl9w6rYZskp3WTe9/7v6TF/0zB1wHsBPvvo9qSHT3UH+N+4OlQokYClxaT+Xs+eJvpgj5MxVwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRaO36EE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRaO36EE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CE8C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743219593;
	bh=+RhPbsd4xL2GGs0rdZtMzbCjKNEAO7/OpavsSU2gga4=;
	h=To:Subject:From:Date:From;
	b=YRaO36EE2XiFePtiiEfsFK4YX5IZIcufOE5bj9dIb5ysmTWQmj+2lkpaSVoVhQg+Y
	 koMR2F1+GZVsDspNNA4bCP1tEYYlb3xV06lrEmYtFEDH42JcP01UXnrFI8gl5RYVw/
	 wavFSSoPOxOvY5v5D3vYGT2HksRbwGVr2+n1L9Xcq5hOndL1fEMkiilmhP5xat3iZc
	 ZfEeG2iz5hED9OmDil/JkxDqyhKCcosQ5lRQ5u+ooTkVwo3Bm3kz0X27Zqkn2SusTR
	 BmcTqt7NuxpEvUzomMX2ixnu3qfQidX8x7im3Ruq9buOOMGVR/G8HpODClPFkoLNF2
	 R6a1vv5L/+RGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0614C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321959367.9143.16013022237672353007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd78de29e7bde5f484fddb1e12c4b1b6426e8fdbf424827a806629887c14376
Date: Sat, 29 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743219593
