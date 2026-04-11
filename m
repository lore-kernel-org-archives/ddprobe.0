Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C05E1FC8
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775951854; cv=none; b=bqPeMu2tPwbA2FCz+EvAjRYg3UjmsT/Crn7rhFDddq9UbdmnAzH3+/6KWDVFZ4JVSpSy7VEImseRIpVlGG5zc1WgVFM35VIH28v7moIMCK7ArXFVXiE6KBYRhQB108y7MUPkPUyaRt/fwXTxWXOtXzwRq8abVY3jljtnDteyuME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775951854; c=relaxed/simple;
	bh=/naXOrNdfCMuzybq08YMIHZiGmJ1vgyd2j0+FJg7MdM=;
	h=To:Subject:From:Message-Id:Date; b=MtckbDsfy5tRCvIHfaa6gg4pMCtrk5vanillqcgoUFyu0F4pr+J4U3fX9jR8C5/Y+IKSM3grhY0iNClitGyN468icFx86fGpuTMSOlN5REnH5fQL0gpd+uLfXbo1GHNsdTwg8UbK2KSgRT8W+ex89JaFTp3G+Bun9K7YqLIhBJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doxXfOZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doxXfOZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D70C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775951853;
	bh=/naXOrNdfCMuzybq08YMIHZiGmJ1vgyd2j0+FJg7MdM=;
	h=To:Subject:From:Date:From;
	b=doxXfOZYCez1HUew9f81hmzez9p7d6UScftJtFBuwCKC6vV8V+K6z8WXRmG9CQ+Uu
	 JpkPEu513UNp0KfqJZbK2zbkcpN/wof7C5lrdQtMaqmUvu7Cl+M6HrzDh6yTmu/Nmr
	 fFmp5/e81GwYNIW6gUnwILkhZRL/zG73KJrW0DZD9z9Tif+orgfYvSB9hE2gsq/7rP
	 aFEL+NNytUWh3NpATcFvMmhzFgpl1Vu/YFOYLzSbdMlXtSealhqtln4qRZBLbUgNjr
	 1sHKo2of89BH11+coj4m5yDXWK1JFI2JOY3TTl5Gk11Q2F81SdbamVWIFSSB66Fh0l
	 3GlCAi2qVnB3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD53F3ED6B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595185368.9403.239755467459254103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abaf93affb322e3aeecff120051e07b00407b98332ca9cfaefce4e6ded92771e
Date: Sat, 11 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775951853
