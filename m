Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABA04A32
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763219394; cv=none; b=QLbUsqBRpYGHTcA73ViVWrs7Xrr5SB1/VPPqdfr0oAczNDSXDGLE1zAr+nLINdzi7OuNXl5zkF+h0RRb7FVzc0GLxmRTFZJfc+5aMRPhL3cphscEuc+lIDffGCZ5ibwlXoCNyp0avNtKRrEfdwAkXPmNA8SnpeGBRrFxPr2z6AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763219394; c=relaxed/simple;
	bh=Iajk7oIp+LiYJ7qY0rs11bSnGnSdSrUTmjDket/70ZE=;
	h=To:Subject:From:Message-Id:Date; b=RZX33p14+FiRMHkZgouuI6b/I3QSEavM6Tk4YfAKr2aCbBT+QRW6FqPGAjAE3twu6lglD0y5jmASAXl0KT2EqZBCAtDxHXum5KAM2X8L8h6uh8vTR/SFg/j6IcGN4EU/7+hQtoC929mwKXvhFeDmZ0Pwe4wfKbQy2fAcFJAxzLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaGbxGhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaGbxGhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE0C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763219393;
	bh=Iajk7oIp+LiYJ7qY0rs11bSnGnSdSrUTmjDket/70ZE=;
	h=To:Subject:From:Date:From;
	b=kaGbxGhTvLSGzRk5CJ23+2kjY0NMnasvTxPaPOhSldmIIsXNPOd1330sohz/9Efba
	 c3+VBiaj9nScSMjMRgSeLbGVQe9NYoHZIhZ5sk3I5YLbo3lSb9L63285wmPeSv6ZU1
	 21yfOPTyfIsxzulTvqKo8yiU9TB9XMJkX5yhMhd7ehEsOYRSsHL7/c4ndzk+miteDO
	 uTpWjTIett/0tDsR4vB7SMPvzghelCiGyqOIm3vBsPOK7JN5c71fgF/M5zmaag9zIx
	 pSRXGlwqKhPqotfApkz/6PlZQRKkS3uGypLAKdKJm2w7WMBmDt2PkudAyhnP5FDu6D
	 xIZ1yVRgHe1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9668BCEB2C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321939358.21069.13000106858260856554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4ad5e8c84829b787fe3d8894213440f4006a468d6af66e3979d67b86f31529
Date: Sat, 15 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763219393
