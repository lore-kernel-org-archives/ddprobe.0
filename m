Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277E9192D83
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752202795; cv=none; b=JAqkxZa0b3WHW2ez0fUystOuHH7r8edp60AKHlEh/Y0zTXgjqsll1hl0GIKFhhJD2LsMQw+E4zwLyoH/QbIgIgczkHuMaodsYgEmpALmSa8FisxsqlJPunbbXmyM/LY/WuVEjgD9wpBQ7/sFD6TlAT6867ttlMUYq6hbXbyF07A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752202795; c=relaxed/simple;
	bh=e2vMC/XeaWeeQCczBNkK16cyob2yzPpa0qXsNNcaRzs=;
	h=To:Subject:From:Message-Id:Date; b=CgCkVyNyT8XkeZwxJZdxqi+h4KoqV8IbuuvnIlHdK+9EaRph6wSkmJANQyt1WVAAvcrI/NelgzjBRSdFlM+Nl8k9W2cKnxjND9JLvHEy1s5xnaGUuVbDMOFiQuc/z61iaJid0hTF4LK7p7VgHwM0vIlp4Y/yuXBrKRv4T+Zbjs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grgR7qNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grgR7qNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752202793;
	bh=e2vMC/XeaWeeQCczBNkK16cyob2yzPpa0qXsNNcaRzs=;
	h=To:Subject:From:Date:From;
	b=grgR7qNrP/bwvWaCBNSOvBPPnNlZCO2bv5mJB/P6GZiuJikh+piSc4GoTBcqQDKgO
	 sLbwnknWI0oCD1AHWy/IQDzyI2VcKeoaJVuEZU87+Jy0LyKLXnnWNO202yhv7PGBfX
	 VR4YcLW+VvtHIXjmg69jvYA0NfuDl4Zm3uvlBbleHsUGBHKKY6tzizlLs+v7CMnm6z
	 w+3m+yhKiI4/BTFBclN527pxmwyZkeo/HN7bWPvxzCRhfknfj7Wnso02GdFZrlYxbX
	 FPZp3XPaFRmMgIXzOl30XAPgXXzVI7JoDXh6MWVPHn4etdZAQK3A8TjhwdPYdv5oj9
	 +J+2w7OQTymjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEFC83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220279357.13848.14965061410933516571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11c0f8e9340728e7205ba12a58bfbb03e41f414146b01a0c4b95d8d8f104151
Date: Fri, 11 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752202793
