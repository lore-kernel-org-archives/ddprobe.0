Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7A420E718
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746137394; cv=none; b=oZK2RB948akOmEORVeoqAjt8KzRXe4kRTNbfjihIsZ2btUs25C9bUUuM0CZda1aAPysDjfEwwRwewpsBVt3WaDkljbHkS8KyZZEwe2f+yXxKVPDLMZ+S4/zdKjaa5lRl2JHUeHFkLigdjvbD11fm75a6OMlsld5FkcEnLEJzKDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746137394; c=relaxed/simple;
	bh=HGiK56VUFujL/cCl2UsLTfk2gZMUgJOKLAeRSLUz/T4=;
	h=To:Subject:From:Message-Id:Date; b=ZjFKODeH3Roi9KhMMV3hc51Vzte9M45+V7rHRK61vwCQypGQI1GdSGyvCBlYA/A/bC4F5/0PL7pYoYJKza5HZjfn1HVTzu5LpqbE6vm5Jm+t/kPGnJjwzmD/MwPQYkHiuw4EEGejBWuxY8ti71m3+k6xlSePhYX8w6fLzhEZAWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjLKo/gH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjLKo/gH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E12CC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746137393;
	bh=HGiK56VUFujL/cCl2UsLTfk2gZMUgJOKLAeRSLUz/T4=;
	h=To:Subject:From:Date:From;
	b=ZjLKo/gHl3qyIEiDo5Dn6BEQhb+8mnXuMtFHMRIHjcm78p6HWt9G/pHjx/Q0/ptwR
	 WBEEN+pRtTshm+J+c1RUD4Kr7pshF1r0zhtw/FINap2Mr9ID23ZHpHp1fog+tWaUy4
	 HhRWcWXauPFh7uq1Y0dBjUv+XjE3H4Zd7MvbbcoPsIMVuDUWdPsh1KMDQGiiJesTRT
	 0fpoSIV/eQdNMH/QzkyDfTOTtJNtu4U4X9FTU4BQgTFXysbvX7HOlUQTqmGookLpM7
	 aYCIcjo6RCfXP+9n8Oql0aF6WV9s1jqCvhUO3nDX0rTPIC4fY6Ag/cBGlZqxO8I6cz
	 ozJUNZll9XhXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E919C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613739357.20672.3932354712059441134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166cac431d75b70a63f368cf214789c9dd4b6b537ccfca3e2a0171937b7edfcc
Date: Thu, 01 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746137393
