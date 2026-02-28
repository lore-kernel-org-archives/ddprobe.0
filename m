Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AFD1E8320
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772294094; cv=none; b=Ck5eOXpGiLcoUzghXqKPomaVJStZnTmsegmgbsbZBZV4kmtpVMPRjCejTSHN7dqu+bsqMeEfmzQwSrkVKI7odKDVBZqx9suSTmc4fVpprurbEgleItV6nuuFJjNkSoonLvNiah5o3xSJo9jLgSAbJoFW+YxRtbFHltUeLDu9bGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772294094; c=relaxed/simple;
	bh=7Wcpa4HV6a6qVJMHAU/bMLOM4lRSoKsn2eXpNCOXuFg=;
	h=To:Subject:From:Message-Id:Date; b=ueQ9iDMBfea8uBcGZqltzNcIUFd2/r29j4NwXVqhwKJIB8Ks37o4C768pjfaXAdry29xeVYDYhCql/JJtlgIhY8dweT6U6ZjxATTtbmZr6e/rCL0i3/rGwfvJ0g2nIGtca+kVmi7X7OE9vGcSLy2scFuk9O0qzdTrVcGIdzTuUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyF5deUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyF5deUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772294093;
	bh=7Wcpa4HV6a6qVJMHAU/bMLOM4lRSoKsn2eXpNCOXuFg=;
	h=To:Subject:From:Date:From;
	b=VyF5deUgivoFg3pUnLoXJ6h/PENHKq47ZcSXLnp/jr8xOKiFoljA+YTxXlXyU+T85
	 krxRAWVJ5P8gVU2OKgCoEvdJ2+AzjpchNOhiufGM0LTsMeMpa365yZ/tvCOXRcgOKn
	 1Ng6rpaHua4PD92Mfp+RzrGdLLNQzpzDb+3erk3hMc0cgHJPekVnh2ZUiIBhtJdRVX
	 UBd9oOg46nSZmV5b7Pb4q0BreYI8WVM+F/SoPjX5rFyXYZoZ6xijjrFx0OKPi6P1Tm
	 6uj6k2cJ4uGAMQfXAGdK4Msn3hcODe8Q9uzLWx+3OVN31wbKxFR5DGzavZii6VtAtW
	 3iJYBnv5s5PAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91235FEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229409358.10033.5063093136868478660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8c0fab077950fc0d0098888ed030e56a6e6e724197211c7b868fa108ed63d5
Date: Sat, 28 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772294093
