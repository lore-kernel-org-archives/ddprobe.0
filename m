Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EF33314DA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766064234; cv=none; b=BlZZWd/RGsmBYQYPfWNrZ6KadXnTvd3Md3dpk3u2J6b26CO7qChPixGzgEJqDWxbpfmYDPD/OOXlbvSvewRcUTLvwrGb7ez0dcELR1kcdeYN8A69XYFy+CljooDSNylPJsJBboBq2m2n8KTScQiJfIu4Tt+aBPKGd8cIHJSlFfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766064234; c=relaxed/simple;
	bh=0jeVrGpVvpvysgkBrisutC0RoVv8oVecY/wMJrVg3Kg=;
	h=To:Subject:From:Message-Id:Date; b=ibxTFIkwalHL3Grtx7FUicaAsmILBAKUXgxUCyU+cxojZPGO9nTO426CgczMjkEUpP5huEUTJyUojFaOCPJenpD2pSnZJKHu6n0UsUmC4UqalvN34oWq074heXn06pKPxABMtg/cH769zqT+l2f1+x0U5/Nc6mfvOySWvry95pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh3MZphr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh3MZphr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEF3C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766064233;
	bh=0jeVrGpVvpvysgkBrisutC0RoVv8oVecY/wMJrVg3Kg=;
	h=To:Subject:From:Date:From;
	b=qh3MZphr0yr869dRXlZiIsGKqQb3LU1gwpev8uJqX9LEJlKkmQN1cH6L+ei/q4Nez
	 pZX0nU4PLPWjDIjSSfjer/uXJlcXxe4aUwkIN+zMKhAv1LoVTW+ygB7pnhRa3wTP1X
	 JUFXqm73TK228uQggFC/vtbWog5yHLfCfkJyhvuBgHNE+A0uCAxdGvO+YkEXUVB9v6
	 jhkHPfQNgUczn0o2RW+aGq/SPe0wWd0qM4/0QOZ/L78kb/HsU426WWyPugPigQwitq
	 xMRWTkJioPHM/7dssye4GYgXXFNG2hIQtntoR3OKTTlIWwKSDDDB1zvRJOBxXqqREV
	 V7jLCcKwackvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D696D6ACFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606423363.17455.16784546266437264786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ba56fdf09221695fe1c6a7f33a3c2fc6c76db22743567a9d015f4ba4feb399
Date: Thu, 18 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766064233
