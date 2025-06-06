Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290A42B9CD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749227394; cv=none; b=ICS4l+I9dIjjQtHuQE7rWomUIjDA1ad+9ACY2jDc5rfewPSI7ApxdFbuiS9AGr7/mCNbFJDwga9hKtlLkzXVfr0dr/QSF7cYy4RCiUAhnBXweeYAmG+IrRtythRZYUd2TX7R+KFsZAnpdCPjzNmGaEIa2cEUDYxDBL+W2qCsBbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749227394; c=relaxed/simple;
	bh=yXHyPAjl9ghY51JGptPltQYDAF12Q2x5okvXCuWaBJE=;
	h=To:Subject:From:Message-Id:Date; b=dldvmZLPkO2PT2qBj1dx9I7s6FRMrFgiOSXwM9DWPiLZYBkb5kOi41bF/L8/yyciioXrSyleqgwrNFpVg2ly6vWtSvIPf05J1AKVPPJUp/gNtCHT6xOSOfwPzAx046WqlRQNkcf/4HBAGoHGOsIJ8poN6M3nYUkQkDC423fBqIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmTsxIGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmTsxIGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FEDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749227393;
	bh=yXHyPAjl9ghY51JGptPltQYDAF12Q2x5okvXCuWaBJE=;
	h=To:Subject:From:Date:From;
	b=kmTsxIGB7RnSUyRaYDIFIJ2zIltbWeNkn9iSYZkZDby7kOYgizdj+BO3TNmBcRM7/
	 63Z5k3qjRxaIm3Wy6ZY1ITg3lnN4qyff4BVtu6wnuVVQp5QGeQUazEakCU6KPC19bQ
	 Pr7Zyp7hgEVf4ms/qfWlKYe8Pc/VPI7iipwmQhkq5iHhr4SOx3AAtbLoA6scnajYUh
	 QsE3hzZ+DBUAzLJor1rMdxbnIVIn16SypiNHV7UF/w2MfwB6CQCGBWUoz828MENGmA
	 I5FdxqjyiYcQBY1NB97HGPJAuIM/KRFBm6Hrt9SiMqsvR5eRr1LC0v5ncqjtr2vcMy
	 uwEeN5KOIkNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E9EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922739359.8396.17890574999459006861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112ecf24b5520e834a621215984370503d368fb7d7f74f09085b53c0de7f351d
Date: Fri, 06 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749227393
