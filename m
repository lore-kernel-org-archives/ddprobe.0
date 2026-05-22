Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCB03242B8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779465154; cv=none; b=HZkVJeDgQKSRRiOJZQAja+pBxMhSPyrpS/kB9BsoHjREw+oqXdNddcFj+oPF4Nx1hQ88t1RtRgyDjXz+AKbuG7n7aguruFtOk6mgULNrFwdUshQOrdoZg/hocBO4YOH5mnzyycwRIKJ0PTAeJJ9wbts5lEtC/dYhTVV5Jeu1i8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779465154; c=relaxed/simple;
	bh=IfyPMQu/LZ4seKY1TgXv39cLTFbRaljREzGKtHQNCqw=;
	h=To:Subject:From:Message-Id:Date; b=tKmjq0yBR63piVGZZZ55pk9PZH+8zmCrqvyNWO2flsdgc+aI89LwvIB4Fe1KxI7A4w/iQt2GmSaDv9tfsDXUhyAh/Fd728P+fS9Umq2WIozv6cAH/drV2A7eTVRI5aYMBGF8qPfK7ITJZ2VEfKYcHyN4f2D5GBfEuWVWQR1zdTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gcbluj7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gcbluj7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C9FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779465153;
	bh=IfyPMQu/LZ4seKY1TgXv39cLTFbRaljREzGKtHQNCqw=;
	h=To:Subject:From:Date:From;
	b=Gcbluj7GtDkcsC3FUm3cCG+y2eXousQhEXarzf+Bd50RTzP2aahUvHMDosBWB1inJ
	 hzHWM3wgo2Hf7YxhxXTlS4jq8VH7ATokAiBnX46o9UaHD1PFPDMIDu00LMxtEoTy4K
	 kYkXmqphKOfUfUhIQV4So/ALqffSUTRUtKFs8KpCWWztpAlBnyw0nZe/Q7ne4zZUGq
	 YLxv9UZdXW8xd7meVvVPQ0NihwzFa/aQlzYac5pyzxq6RTyPXmT1TA4/mFQYp2pSV5
	 h1DEhe0+Xh2vX1JL02u9eMGKLtTMVCbK6xkKDrCaoV0Ju6obUU1C4GYSEQDiAbf/Kx
	 VextLhNtckM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D5CD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946515368.3890.11202637189489610904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b96e4385fd843aa66fa93b2050e380a2efdc25744d8a69456e4a79845ebda2
Date: Fri, 22 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779465153
