Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D573F3FCB0C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779106233; cv=none; b=NibAAwqmblcQNVJYp5jp23eWWWS5pgQHoPw4E1vurbiPjQYtJlLvb7ad8MsvLOtt1wGCsZEwt6HAvW5l5DFKFsi9FbSlyOWZgsBJ1ChlBSLCRWjQ1cwhab5c/MVHUD9QCCIy1uAiViH41bvvb+IHSJ9j6wEcYVbF22b/U2AmrH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779106233; c=relaxed/simple;
	bh=nl60maVMPK84TsDVzyfmkiQu5yV9+OTOfqrV9qtFe0s=;
	h=To:Subject:From:Message-Id:Date; b=PXXB0+67l3/Yf74qOAnEeeMIuOw+VM4KoBgZh5v/q5pkd7DqzIpycUUKJx6bn+N22ME5wFp2XeUwb59g/1c9JFAipO8vh1//d+n6H0jjRhqxP1VFk5KmaG6tpS3Qa3aS8dmsfB3/bK3mXBN6cdjcuXIB882U/5qP5/WY6I3/jRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFzOh88Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFzOh88Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9716C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779106233;
	bh=nl60maVMPK84TsDVzyfmkiQu5yV9+OTOfqrV9qtFe0s=;
	h=To:Subject:From:Date:From;
	b=fFzOh88Y7luBaonNwcfR9vjI7+0F0JCpAIO06KuF1JpbWcVHQMH6tF7SybgzFvgo9
	 d+TsNPjL0+ve/oc6YYqDOwQj8nJZOkWwgn8FW6cbCbDVIQSfeT2olFkFeIG0tpaVFX
	 +tsTTXIO1IJbab/ShaLXCAlOHivVn+caB3FPsjx4KBFkABptytWj8mk4+9MqjT3Xeh
	 SexgtM/QrXQ93PZCEDY8K0q4/JJqKGwDbNzP2qShcUdOms5JUcekyndBlim2KEZ6e0
	 SfplEwmSki5evLj0qHbFybwiOi03faH1LFuwwe5YdzvHIwR1oiAVujh7fsSQaWpwGY
	 6zfsHu47oRYeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A4CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910623368.14839.8517770616069081751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e42853a7f764e6d8e4e6cde36789dde96cbdaa85b75d2bf08de3521fd4d5ec4
Date: Mon, 18 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779106233
