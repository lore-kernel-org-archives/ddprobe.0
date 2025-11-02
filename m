Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FA62C859
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762063794; cv=none; b=aUMhx5kzx216WXYybSI0TcRMkfV6nDFx98yvw8+VgUR5vJf7hqACBjbNVYPFJjznxzOSJuK+X5gX0Po5c4u7x8dcV53Ta+98A0YHahSdg3hH8PANdBzV/BJmSfNopOgs43S9w7eeH/NANsc9RaZ+bTAZ0a3G8rzXNaFxlCmpjIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762063794; c=relaxed/simple;
	bh=mRVBFlx+Aafgn1x0P//jkJ6NZKtNFLLNmS70NrLapLU=;
	h=To:Subject:From:Message-Id:Date; b=jeAHHzf6fYEkdU17KWNaT6TieoWsyBsssXoS43JPQ/04dgCyih4Keyt4nfnelN3cN/LOHIXUukCc1eyra1ZvrhqA8q3eSnAgdOK4cG47q6NE07pcZbQI+l2sQVxw9fXpTQnPZv7O/mc+AfgNUal9GnyxmQfCBy3BHDGZe/qaxJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkwshpCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkwshpCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62F5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762063793;
	bh=mRVBFlx+Aafgn1x0P//jkJ6NZKtNFLLNmS70NrLapLU=;
	h=To:Subject:From:Date:From;
	b=mkwshpCPAIeK0Hqm2MWbf6XeyM7r83AFBoeq6HvUxWUGEq4haiHEwiTqJXRQcqrip
	 R45PIWK2xQK1EFanVfNgsc2yPocKMchbFM6rrh7PdwEkJJfNm6pwDN4FcRhPQrh7Fw
	 PuajmbKfOk2lRhZxLRShCCUxAqZODURrL9uxWjET4X1aLqqbo+P3v+mwdJ8jUt2d/L
	 anyBRnR2rkSy3Isl3Suvcmp6F2E1d9FgkMsgT1moR+LCP6pDTTam/dS+z9UAQDx/Tn
	 51bZHCDzciBkOt3LknPLv44k72b7r7paGMmSzjevBxSMnnQcH1VBLoUBNFtsX8Ku1a
	 i86MEjFqSgevg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDF6CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206379365.4367.7532470453335474088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bc7e5efec5f50fb18d2ba21284a98bac21a12306a0dcf6567f61d4bb09de2d
Date: Sun, 02 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762063793
