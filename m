Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EB71D63FC
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747598394; cv=none; b=K4QTYKUnIEa9AOSFl6dMnDy2ITJeNonvC1jMcQ5dDrKk/hKBgOVnbsxP7rQfN9KAcF39bUWBr/SwC+fsOAzKxp462WUQesmHHfWTdSStY/mhNBx6V9m29hOhgUq3P43UtfaoCvocsyEFRfol4G0m/Krr+RdCWVW40BfRMwRrAuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747598394; c=relaxed/simple;
	bh=ZmTEb15aqIVcexqaOWIyvxLPx/qi3yGaRxzgkPxKmdg=;
	h=To:Subject:From:Message-Id:Date; b=rqHGvGlbN75kFhU3Ev/R/jHA4Ss9jmiaxam4aV480UCS+7QwB3kKrwjb9Mj+ECLqxMBV5qPmbtwcu5rvfyI1dJYGGURJjhpF+5j/HGv8ph3FsYrgDOBjmIaLecrY8snBIKSGSC1jIaiIJGBajo0qr8qEi4YuxuGucJP23NJhLJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0zYaCAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0zYaCAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACBBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747598393;
	bh=ZmTEb15aqIVcexqaOWIyvxLPx/qi3yGaRxzgkPxKmdg=;
	h=To:Subject:From:Date:From;
	b=H0zYaCApM6hiInET9Q17mIy7d/iMZgawehcMJ6FNifr26rkFdtJnolHKICmErl0SR
	 81WV8abh6oBXpZvXjd4p+zBLNNw7nMbc16zV4KPvQRXA16kvSLYOEgOkUkbWA+L4Xh
	 U018twwbbtr6UW9dIogQt4J16Au3wFmNETcC774+FKkbN6o/Ea9RTTheTyLydplkef
	 HLl8XVulktZN8CRwIrsRMcQNfyaO8bP/lxv/RULr5/6yvHz+CcqubdBh5RqUowZnQI
	 Vq2fgUfp6iV/IJGJbi7UjHXFITagL9R+YTIzkD/cqblZhtFDwDK4Ap4asEsTOkWPT3
	 iYr/e1L+dFx7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E7C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759839357.25397.1954662207137112419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73caa456722a355944c5e105a94dad5ca03c060fa22fe9104c90e411c77acce0
Date: Sun, 18 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747598393
