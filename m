Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C99E2652AF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764888174; cv=none; b=eiyLbfdfvvM+QOoDKtaWWab7S7kny9+ElyFbppMz0tD/PAyLZ0u79pg2OwLDWLv5Rmc+tpnLAHKWxWVouwYlOmaX2xmrLMjIcLvQXBfHl1DDQUElSSDkrxffOfUP+7SMrt3WrhU4KduPWJXHrHH2i0P89teaxfBY28EiTI666Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764888174; c=relaxed/simple;
	bh=1GNzoCcBRUq2S7oYD0fUDPCuP/lVQb6dvHyxirpoNoE=;
	h=To:Subject:From:Message-Id:Date; b=aXmb20YN+h5xyJvNqTp8fwJLGLBuPAzYVpdbirWEvT0Y2vYntN8DB6XPGIqc5lZcNdBkSyfSI3T/ajoTpbzI/ylqOUTtlugMHWCGY1yzDSzLjfmUkodSrYE9RdzeazYtUptaBdt0mrbHIGR/MHGKmOpsPtrzb2GwqAUbVi7KBH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gii0dRh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gii0dRh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA817C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764888173;
	bh=1GNzoCcBRUq2S7oYD0fUDPCuP/lVQb6dvHyxirpoNoE=;
	h=To:Subject:From:Date:From;
	b=Gii0dRh4Mk88oajOyEyDM0VMRc2o2EJCIIpuERrwMGpy+SGgRnZlWSD3FA7/jdOLF
	 H27DxNtfapSMymfIHZQ6s8HjLTKqpsiihr9CJOTgF1AFDEUl6wa0KPWPQVrKw3b3YU
	 ZOZ9wkVtRv59j2o7ivh4LRjkmV2ldHD3jgTI3beGsKi2jNhIN/RmZcU9gNbNcMRCIl
	 eXtlHbso5Xdq0DodsBNwZoofzYlxqImQyncnEmwwPP48vs3m2Ntnq3D01khW2YGaIO
	 FMXKauxxcyCLT/o9otKmT/qRqjVJG3ym7KcSbkouCO4r6dgE+sIWa/ams0Mdug8NAM
	 xHkCtlaJVRh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D0AD2A551
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488817359.28847.11764570757088890553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51343750a6ed3589a91c711fc17c3c8deb6132d5d328d99e3872ad076fe2648d
Date: Thu, 04 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764888173
