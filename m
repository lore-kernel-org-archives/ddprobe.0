Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6EE35F610
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780011154; cv=none; b=Ytk9nySKuqfWQfw1lgMEe3ndU68iqce6oxZP1hqBiwRMV1QvSMHZ8B4NDcCvRz3rncBGDEGov4I/oiYcVyL5TiXTvDqxKH6StpjR1nkcw0I5X2i0mKmf4Fsj1wWzal+uVJj34gPyWcSzcllshZYsrP/FFFBudfv0ZaRloIovpnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780011154; c=relaxed/simple;
	bh=YV+LlhRlUEkuKRDVnaXOcdsGhG/jmKM3sERkjkIL6PY=;
	h=To:Subject:From:Message-Id:Date; b=q4MtfR4nwBEsAdaBa8K7t4PlK7mBuNxRPCUAsXIukH06gjpvxSYQCFQ6JL6MJfb4KH5HP3BwN8wVtFz2Mdoowq0tF9GfcpUH8i7ezJk7sE9pVXFhUlrCaq6AlaFmifhZ4g1V9qyPfSphVdeIeQGeBGDFahA22R03m4Rk7h+VoK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GggK3TFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GggK3TFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13EBC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780011153;
	bh=YV+LlhRlUEkuKRDVnaXOcdsGhG/jmKM3sERkjkIL6PY=;
	h=To:Subject:From:Date:From;
	b=GggK3TFF/yRXxzcDIaTaUvWeNuOkkWAW5RuVH0CkD7FrZ0TmLTnRICnPsyQK3CZ4V
	 gdd6s4l0E/8gDmM4z9CQ/YMdJs4wCFnQU9cJuZ6UGzcMGI2D03noZxGLO8FNUHVr/V
	 LeWiX4bND/wh4RPvPbNI91dabFdOcrPh+/SP5uGtmTdT5yKptjsDbe//YtOoQtwuDc
	 +4MEB8+HEhdqH89b9gHGyfGNQUC7Qmr+h0PYBCIjqzAFLWHoC+v0Q71z7o20sGres5
	 63GOaDtSGSICZlh1JQUTYZS8Kx5oPJErFD0ZP+PnuYyr1u+sO+6h6pcUWl5Dti/WV7
	 28EO5X6vcPeDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98DBCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001115368.3273.11650069231439638283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100dc2e872f4a442de9b0db2df9d0396dc40037c98bc2eb4775a5db1cbf77767
Date: Thu, 28 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780011153
