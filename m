Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3794547C0E7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788898834; cv=none; b=O6bKCUBJ8cak6O4n0qv4FLGl8hUu7k8fky5qDCy1V5Bk2jFiQyDSgOysW3VMXx3CLLrdFeZAkFShC6nrPWina5OqEsn+x1qk63XSaIHKTOkVwMV67XucgqB74vphUk7ASyWP6eWwSsNk/lRFTNEy16HM/qju0ntLZHg8L7ErAnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788898834; c=relaxed/simple;
	bh=yHStZDkqhoEqajslxIEyQh09DpEnmOZ+hkH1IUaUg/o=;
	h=To:Subject:From:Message-Id:Date; b=rb4YCU7HhP8rVXJh/Cs9AceN4/vBPW3+SONF3aPapFzlYGzhLfcUEBNdtD+sIwOxPCYCxRVNZ9kEzoXY6GzCo/3ZQ5z4luOZg41UCgqawJdBKEhAdyoyZ/ZYVwkIfK8OryCREDEI0GbvOnnwFEpnEzGsyDqLWammKs2rR7qA/hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WciLoFYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WciLoFYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA386C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788898833;
	bh=yHStZDkqhoEqajslxIEyQh09DpEnmOZ+hkH1IUaUg/o=;
	h=To:Subject:From:Date:From;
	b=WciLoFYS/ivueAFqn+BpdXoxhY02TlYjxnWYmM9YQT7vBQk0OmdQgjoahn0n+n5gT
	 3qVIjLo6B5fH6N3qOCf5DgmTbX4iVPNRy/jsouoDzStcsTM4eYW/Gav84FSOBCtYhV
	 mhfehKL3ek4BSah3nQqUsn162wj+LfKnxxJ70WjqpT2wHQu1a2sEDLyNGU//p2PIsD
	 T0LwqVU6WfM9Ewdm3m6R3A3wMgZkGNRVIQhGVq6Rsgo9lvIwoJvN4rNdpXuoKoHd5G
	 wGDnyYXJ6RIKLD/MqpegAnlyuJ4ESIpIAw5nlFlv3hLSuQn999TRQAt3thPxw2M0/m
	 +9DRP22D1yJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA691C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889883368.16424.2630426159420229182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f136120f35ac171df22f975c16ab9a27b59ad9e63f2639796d4cdef8f08889
Date: Tue, 08 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788898833
