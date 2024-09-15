Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4FF22315
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726431354; cv=none; b=LC+C81ewbJ25HUfY3m/iUtLXgOBrL9RiqQUuCnP6WNc5VUcccHYWvVSj4ZqgKBre+ZztkTCs5LEWHc4VMjkv9TECqVOldiZK79kdln4egvyECBBGw6zhxpEmk5xKFXfZ6iIuT6pSaumpB1dZltWLTy8p7XmLhJ+ZdoeHS2EvIUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726431354; c=relaxed/simple;
	bh=aSynv4w6BcsnRpmmgA3wh8AuAod0mQSVvMs72nw8BRU=;
	h=To:Subject:From:Message-Id:Date; b=A5jH1fVPM52Cd7gEQGE9Iy/PPOhUYxxH4egEx8CxkI6ADO8EznxFN67NuaNJsi1LDT3AR8uW4chJDeVl7z7RID+tWuF6hKMq0whguW2FrLXrTNlCpZPPjKaA4qq3Mp5ggMwySF5SWTbNtwykS5kWzoH7B7Dwfj36fo515DZuyD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxJcaBmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxJcaBmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0763C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726431353;
	bh=aSynv4w6BcsnRpmmgA3wh8AuAod0mQSVvMs72nw8BRU=;
	h=To:Subject:From:Date:From;
	b=jxJcaBmm08vBuGekfLcdXxXiaGBPiNjHD5Z1kZKP/Vu5qWV6423JMV0gz0e7n/IjX
	 AowOcPAUOLlnDq3G+LosuVvvsluMHJ03cDXsfFs0PVTs/lpf+UJ9rW08pDj3IR/lx1
	 mluIQRMYKdu+oiEbIV5Pc5VvCm83+PnkMpvjoixRU+XLNx+b8ieqImC45N6zlkvnuV
	 abA0R7jFskGQYDu+/xmOFFUfjtFpVwzQ8UF7wgyfWUZsfyiTdtDrv21TL9taPPe9ZE
	 3GgqVvJyhDu8pN53DrcOrn+DdV91UqzLXY65U3OQpJHXbJ4e3NrYcdIHx9GtuhWKbo
	 axSpoCsxV8Vtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E98FC3ABA8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643135360.31178.16136853808053842665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f031fd1999dfd8f22dbbd9cc2fcbbeb430309bd2d5d8d504ef02485ac0fbaf05
Date: Sun, 15 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726431353
