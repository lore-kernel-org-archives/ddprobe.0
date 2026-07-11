Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFEA76026
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783738114; cv=none; b=fRNOTXxxORLC/5jCUPwtqFP+3sm6BoCg5ZayYv3TG26B6VW+G0JCNPkcgOOQOtGBBnfQMMTyMSZDQ7nJ89pVo2u/+LqxK12OxQOQ69dT4vFJ2F/S5rRXRoAwaIXWYEr+208mncUh1NH1gHh2P6drzg1E7Muyw9KdNHoae/XDB4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783738114; c=relaxed/simple;
	bh=gthOisY/qiTSDUL7e0GotePHB+cl+rx+jFNkbeQ+iy0=;
	h=To:Subject:From:Message-Id:Date; b=udPPc5yTM3UdpHmpSNmj+MKv++7NMkFBq0Yg53W2MnmLtqExAGROnvTFPKK6+qzjrFMOtb+wmjbEuQXScS2Xk6U2JKgTzJCHe4USBPOf6jZPkmT/9TAWdg3clfgznLwu0V5IFmiDwMv6elRiGNoP/My2jE4JWKATWj2a7Q8sFSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTA9xUJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTA9xUJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF616C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783738113;
	bh=gthOisY/qiTSDUL7e0GotePHB+cl+rx+jFNkbeQ+iy0=;
	h=To:Subject:From:Date:From;
	b=XTA9xUJEztJE4uLh4CPltKpjkSL7sq9pFgrutqbryP0zU8BAmlgDGeaxUqIcEqOrO
	 mHGaOd6dRP+K5ohpD/7EQIfZSddGUPhmW82HjMyPP+ryHimMFDAwLNMQpkDysBcQB4
	 FzabQXDgt+Pn7G23J28fvD6BZhHznWbcvCEY+yflJroScj036voQ5Fs3jK7+r5kpFH
	 3zHve9oegB+qp4ZEliZ59mNnlGFzqleHTmEOOf7dPcf8Nvn+G6NaJtbcPuz3gnX484
	 XYIFjCMglF+OR015j/lEKrKV5LPCaAeKTI8mu7WlkH719EUz1KB+lD758xFbGt1jG0
	 zZuaOhGZ2yCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE777C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373811368.4831.1249129225010860909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e877176669b9c8f9d57be4afa1111bf3ca120aaf823db7348442eaf8dd79c39c
Date: Sat, 11 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783738113
