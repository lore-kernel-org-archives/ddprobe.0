Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3E3354AEC
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769727834; cv=none; b=sqWUYOEx/6xom3F/s7avyRaRbIlNoeOj6mwjahwVKgr8VaDvJv3iMaJAIO/7FjF2RVunM4dKiGKtuOr3m7t64ubMPjTQ/Vep9ZK6TgQWEiQzgxS2LeL2VjJOI43ZJK9H5Td2awmKc8tU/euALL9wOB+5GACgt+Yw+G9/JPuFu9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769727834; c=relaxed/simple;
	bh=I6Xbzn+Z8pteYVnb7TW/oiQgcRoW9clukKfoJlwLIC8=;
	h=To:Subject:From:Message-Id:Date; b=d8sZ2dg4WaNNqx7+PbH/N/ks9Wc1dFf4Ge/dFRV0DFXfJSs1OGPHaOmuD+7dq4tHt73nQ3LSJ9QhZqTaY9gHE7m9h4HWafxeS8yN6DKhNFeLt6yIxIROIBHQSYUuf4Pqbq50WDNhas5tiuRQl+SpZaLcXB134hho26CUZQ11UcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=begQFd1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="begQFd1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C9C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769727833;
	bh=I6Xbzn+Z8pteYVnb7TW/oiQgcRoW9clukKfoJlwLIC8=;
	h=To:Subject:From:Date:From;
	b=begQFd1j+eEzm5TtoepoDgv1lzTDBpem8fnkHeg8fh5QMK3Y1eX6tvyATVVzW4s6n
	 S66FT8L53Kr8aTek+vlf6lmXe4S8CAacYZR1XSdp2xjU+WWafiGqR+P6UKJ80H9TVY
	 uj51QammQSCw500jTiPlQbSWzSBF7GbcD8ED3/3Du4evayWPEfIG59/QydknUQrNhP
	 7AtO2vb8NnKIG75GJydd7XN+jcck7SXKskkMUPrkzd1Hkm6OybJbQmiFvsG1P5uP8t
	 kNZvff/7immO+2fsFhC5MmHZm1OnpxSqCSJwOuojB/laB+LLNYk3K0NPZHMwWlv44r
	 mPcahCVl3RI5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45FD73EA8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972783357.26805.2250056446356150433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9574d10f0c8d09313faddbb582dc6f5472541e7a01e8420258129bf989ce07
Date: Thu, 29 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769727833
