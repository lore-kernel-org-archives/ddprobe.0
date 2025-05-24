Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3737C43146
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748069994; cv=none; b=LBdi5m7U4GA6v/LgH7o/jnYWAygbSatsgs/+2DFx25GIS6FVB3RnIvzCTSDffDp5+QQdry8BCnCV85QULte25h93SaxjKqICT+yu0gHKV9+S1lzEyZmzF8e0QfHL0td3SUZ5QKUNDb3dhdTZPdQ5ecDVR92GgmUcxdOyN8vh16o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748069994; c=relaxed/simple;
	bh=v/kDpyaQtigPdaYmc0Hdiflb4EUwZW/UCVdz9cI4GxU=;
	h=To:Subject:From:Message-Id:Date; b=OeihmG1mnhIa6k8AotO9gV7ft0IhJDEOSwXfwGTqqcPHwcmG+XAblUPtp0dssVnW8SepdMm3mY6LxvxV3p9nzDXdTnSxiHy++iwCP4uhD7sWEKAZEm3Z8N5OOTcWA1rOJ2aXMS3lAre/GR2emAntN90Rji8R8f7hwwzsJeqh09I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSXHEYr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSXHEYr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748069993;
	bh=v/kDpyaQtigPdaYmc0Hdiflb4EUwZW/UCVdz9cI4GxU=;
	h=To:Subject:From:Date:From;
	b=WSXHEYr6QyBq7NIL/AX1CtsRLhsxObmUiz8GrWmsVeE3HKhuQOJwowA/p/yiSlKjy
	 ubJccDQTxaPBv/Gp+1w4TebfLaoYwIqXopGuhD2+77V76R5zRIIs3VRrGNPHlvOaz1
	 VR0M7z49yhDxgoqv90tyjo4F/kdWzrxzgHGzosfbGjjD5en9smAs/u/ACJVtQzyqFK
	 rWsNjSfQ7+xiPreesOfBlhYfSZu8zlCUrH5wihS5Qxx5FIDRr5fwVljSPWAsijkPEk
	 PdbqIYpq5t4BWD2+khUd6ffStmsyJPAKdds3rb9pj2omUMarSDCDPlmITCgr9hRaHh
	 2khohKqftzdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B1C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806999357.21402.2473436902838517865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b854ccee983aec69b1b56a0930b715b4f67b2966caf846dce2154a3e9a35a71d
Date: Sat, 24 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748069993
