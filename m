Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223171C84DE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749697794; cv=none; b=TVRZr6fY9cqM5a8SJt3db+NSIsH1X+wvdoF4zJAt8h5vKlqng8RW5L3v+k2rjoiUsWfnd6kMD7jq5W/UoFJGNb5vzCl8poeTMflIkkBsaO60kM1Gg4fqyETQNNW+NbPxNd5+MhOY/FlKaJp+lRZIDjcLRITgGg3E62WuEIEj1Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749697794; c=relaxed/simple;
	bh=UnqQfzECM5WMTtdrtu1KHPaE8Icz0nhbLMI/DIK1kxc=;
	h=To:Subject:From:Message-Id:Date; b=P5XyKIuhAnVJ4hdPrb5Cj5QOMBJWpdc0FDXoZqRoUd1SJ8/GnGsh/nEAdrdMYQHELaNrIfOjhSJwiMC/WtNH+3gr93zhJ6faRjqBUe1GZRzHuWLKpYoXFD2KDfLTnCSGEOW2gF4jH/0V+OZrt0GUxZbLs/2dtoiq6xBVOQhOV8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVTm9Ykt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVTm9Ykt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749697793;
	bh=UnqQfzECM5WMTtdrtu1KHPaE8Icz0nhbLMI/DIK1kxc=;
	h=To:Subject:From:Date:From;
	b=aVTm9Ykt3OARh3eh7+nG+RHRyiG2AKxOeuUvcJl3FByNLEWU/M7m0EiUZRpQAqPVE
	 upGuOiGuwiwbuEI/aeXUcGOuQ8FO6eELRBWMUVYawgKPw9GWVgTsI2Fda1xmInOrk5
	 +mDlw9YR1EcqbCk7D/jdXR0L+hOpr75C0iyqpAf6EejASHjj9AvcAv+JzBtceEpU6C
	 qAiaYJ1t/nX93xvr4f8k6BpH217IFruFtPC03SsD5Iri5/JFJVVk08wO3Bu6gyDlHO
	 t9/JofLyRdk0Hl8AcnBl8ea4eEwsBoWUzuLphIAQ2yroeUQwGrI3cO+2RIA44t0hII
	 Jr1LLpYw6O8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFCC71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969779358.21127.11441796276952956886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ba35c564f3b06d6a65e0bd1163033ebc4a9f51bd98b55e3e49bc5078a88aa8
Date: Thu, 12 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749697793
