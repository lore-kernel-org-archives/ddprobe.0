Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E8267B05
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782117994; cv=none; b=EpnOffDWM5/DgvufioOqXSsSeVH5/dXjeFJcGV3hZVsRaHDic8G2rBOY60sqTkZb7fiVeNrCyfoKu05CV6Pvw+daEacpdL5yKiWryaryRWpx+dztlmDQ4xQigSRFHw9pARUuEYTw3dfR2qDXP5FT9uPDLDgieqJK8E3U504UzzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782117994; c=relaxed/simple;
	bh=ctnIrOqezAtwlO8Rs0weMg6EY3bZump9tsS4nk6i/e4=;
	h=To:Subject:From:Message-Id:Date; b=V2sY6taHq3G25jUDn1CmDWj26QRyQrIwYBsLtwYd4AHZgD5KmK1Vm7XzPx6WYPJZJS0drzH0GnOdzpBNz+V7Zw570o7N4kZGpP4oNsg5DKfjZacNTVhgoTQnXbc+pe4ydsCoE5qT9johVxcvSqTJifE9bWdIrcjcEAEGquBiS7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbfB8lzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbfB8lzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B85C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782117993;
	bh=ctnIrOqezAtwlO8Rs0weMg6EY3bZump9tsS4nk6i/e4=;
	h=To:Subject:From:Date:From;
	b=PbfB8lzUbTTUr8OSNN937bwE9DJRsTd6O6MUIPRrKoSA86iaEBALUpR0iYO9uPv7o
	 uRPqjtI23B2wPBTbUi95aQ9Ev5k3jowpiyBpVGodrXA1Li07FYmWx4BvrqLFUtyKl3
	 7s4XskiwB4Z6T6rNFIH/n2BoDkxdMLM7QO/o2S1aLvlaRrLf64G4Ns58uyswCe9p/D
	 cfmLhQ2WOEXODa7fttFQ2mwXGt54Nx2S8oHavi0JqH+ioFrE9pP2drXR9xpdqHJ0v0
	 m+VU+Kc/OsNlEp9jB0DRUIBma9P7/L52d7MvX/Bd9DGeY37KjxR5eh42VvcHbh/cM5
	 rmJ3ISDuXaD0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD136CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211799370.21716.5954135900953543114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4c7af146fb837c77e4128ad3bd8171e461e601c35b933d6bc14e7c82d475a5
Date: Mon, 22 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782117993
