Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B30A2253EE
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759010994; cv=none; b=WJR7yQ6D6fMRsoS7euJ/vPaeRYn+yg6ArSW/olo7vhyDdpKKhWcW+Kt9QZITD0sjpjTz2wjya0BV0118Z9r1zpyWnViD6NLjTXniC/rO6pBLAyxAXQU4jALAvsY6f5GwDnojGMSobA7gkJKFwfdO1jJ8KtdkCk1v4OmtWPGMpvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759010994; c=relaxed/simple;
	bh=z6N42ARm/4ZcCzxoUWyphwIjSYcfKs/L5D+kMvVFoJY=;
	h=To:Subject:From:Message-Id:Date; b=AirdWA5CLw7u0CvJIZntkNkpYLipgz/yLzXVC+ZJHrAfy7Yf+nldnZcqOar+s2NvFO87hvTegzpQBrRIgfRCpQ7nFeU5+pN8Ocog7ZDhvkNT1MZs/F+y/DLSayNaJ65Cr6LbENUKUHyA3FD+nhQPGOKLdrdTBCMuOAWUJdan+NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpPWeKZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpPWeKZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3509C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759010993;
	bh=z6N42ARm/4ZcCzxoUWyphwIjSYcfKs/L5D+kMvVFoJY=;
	h=To:Subject:From:Date:From;
	b=IpPWeKZM83+glvViAopJJuMGxPIIRMgvWWccKW7moRflIEdNS1o5PdZWA+EG0FmT3
	 iMcf2oDE6x3AQTtppyPNel1FzPL6DLY7g+aUPSupL7Y1gHfbB0Fv0wntguUXRUY9TP
	 /73c6fWQELvupsjZBuczNjbu6J6OatTbmgJKp+YkINAlYJWXs/cLWbJIqjNW4wQ9QX
	 MiexR3nkgalv8yF2YxGljyJcsw50UA1eHkDtqvO/bdV0LFNAwoOcOajaqofDZ4isPv
	 Vpf86OXHKnm0wUQllp2bFGd0UPnXPl6ph81eP5NVTKZwHjCZdH74pki5IzxqKN0Cp2
	 HybIh+UlOzT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901099357.27805.12273487117573736446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7729e756161fb23f6257672b9c44268e64a879cf16ee410f42f4dbe3c2593353
Date: Sat, 27 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759010993
