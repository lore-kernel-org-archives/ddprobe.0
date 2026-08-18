Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6E930D3E0
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787073634; cv=none; b=LS5th20ECOGuu0B4aWBXP3m3t3bCZxonXgU4ZV0puLe9tqgekKPNiJlcYOfqkAAWHDCrdY6oiKsHqv5bntoiNzq3p4N4eEh/3eMJDLzgOvWnbLi4d3Z6zLuaxVW9U0WqS10tR0kk9KG2/G8Imd9vlIHN9ocrvHza6C+NEVvcARw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787073634; c=relaxed/simple;
	bh=LICzVHEgQTAaxiOy9px1oG2VCCyRrT9ESpJbI9VbVqY=;
	h=To:Subject:From:Message-Id:Date; b=Q7xt4R68bHL7y/ULyCM73sccZic1sMcYjqS6E7BwVdlG4PxCW3bl0VEYS+/3WKB9UjSwNA33OxI3nd1NPvGbsouDt2kJ0Sgz0Q/fW09/L7vyBpxIblvSF3cgbBKb93QnEeD5sMi9EkzSDPV8w2nuIbmeCe9xelmGcpREv5CentU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKReLFy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKReLFy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD4DC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787073633;
	bh=LICzVHEgQTAaxiOy9px1oG2VCCyRrT9ESpJbI9VbVqY=;
	h=To:Subject:From:Date:From;
	b=fKReLFy+AdG7QLQxc/m7HbWc1G/md+E2eLuLZrFe+TkItPRnRXyegIhTTXRfTkKLH
	 ppVjgUhF7XKkPDe1h3h9VE4pStRGVmPTKuiF/NhdO+A5IKaKq6kF8cu/98lvj+KaRa
	 e2Er13HE+UQeIp5C/eKa1V6yhnomxB0RpRSidrJ9+ZFeSu2+WbPwpANxLHwuJh2pS7
	 /IbRxsUrIMZWL2R8I3yQBi59TE0iLixdtu8xolRDATMw5wrXtRYLZd3xig8BDeKZ3b
	 Jywc8BJ6On58j1daN/4iSxDEhv90x0El4gszlaXMigWlarHb9A/MQMcQULq1UmxRI0
	 lSMfVu4ut7EAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB64C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707363368.1639.6100808255085373936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a975db66f2fed5ed5018200a2ee4f7e128429f2c56e1bb043be74975e45ae3
Date: Tue, 18 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787073633
