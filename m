Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6EB7581E
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710449296; cv=none; b=AFYwNO+npZoK1zg6TEn9hVyd+zzw7aTPz8ZPzkHC//zUGXOdpLxZkvh/7RnIidL2z1eroYkCCKXL2rYZR+zeVkeUKAGs2Q38+uRgfDEAJ4aWKoL5hrXdDtyUxocEOxnzS6dQeDtgfLl1WXpPpMaVwzcvJzBoEoKLGAqlKT6Pj2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710449296; c=relaxed/simple;
	bh=ILSgyfWwOf3sKecMW6a0guqi6kOzO3DwPzONDYX/lMo=;
	h=To:Subject:From:Message-Id:Date; b=HnM0jrCiiXpyXdHs1RNc5p9qxmdfYyLz99wFKfHFNLXWrN0pbFMOns5YvIvu9N2k5FsMB6QdyMuPm+1VMrQuX9NyrnV7kmM8M6MWscdKGeQkAetgcgt2U0OdxxJt8it2ckDQa7tLakmlii0bGT0msfCGFTdiVSluU6LxjL553ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT44h6Ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT44h6Ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FB5C433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710449296;
	bh=ILSgyfWwOf3sKecMW6a0guqi6kOzO3DwPzONDYX/lMo=;
	h=To:Subject:From:Date:From;
	b=PT44h6Ln5h6lljO3SSY3S37y/uweOAuSwD17Zzbw4NydQfx/wZgTJ4qm4VWH2JIfz
	 HZxwzwWUIHWNB0YA0DnFoPFJu0/BHBT8nw44fPbQAvsnQ8l0vQwlCEMNUj1olscrax
	 RrzdFZyMsVZ2SRqPMMXBViovE39eIYaEFri4uqFQBvg21FfurubUOg2ro8D8Fq7eHF
	 l/Hz/yikstPRea2OrSxaKIm0dRzbm0Z7+/qpLaR8KH0aLq0bvUCZCbU4nHa7mUmWYV
	 mG79ftQztVcecQfM3yn4OY1KZyWGTbBiAf6God0lMr5sOo8Q4ISffc9nAl21j8qTfM
	 VWwINFgrh0r8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60995C54E5D
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171044929638.22896.10355650472190545595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eecdc21e5a998435b4f1fc2a9038df27af5e096e022a042aac41361fdc4f510e
Date: Thu, 14 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710449296
