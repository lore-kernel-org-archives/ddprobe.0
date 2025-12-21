Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE8B61FFE
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766331234; cv=none; b=U13OVr5B3+rcrDQPTaiw1tiKdbuubuCUDYLqYwZrpV45TGzl5LNHaCI+3MLqWAZb4ISqwko8DSBF84rb0iM5Hk+hq2OSNbdgCcw/P0EoXvFzsKdiwWSxCXknlpGHF/YahrH6L+DGUoYq5b4+Bsmh+oohUyu6L6Rckh3Sx7r9JQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766331234; c=relaxed/simple;
	bh=RqJpnB9NwPZXL26gZylGFeukK7ZizVIcKDAdE9GRKMo=;
	h=To:Subject:From:Message-Id:Date; b=TDvqLuI2pQp7ehXviK5Khc7ZFIsG16WTkL3dk/uraMoGsQgPK+1Ku0ZSCBcYsCidOfAoBADkvwBnSdSYInzuqKdVCSWu/HvTt8sUdoQ+eeCgLfzXxjMyivffu3solFieLK9ooBD0NCQjSNjx0bv9e1+O4QYflKXVkT+Gh9fawvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMNApWV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMNApWV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2668C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766331233;
	bh=RqJpnB9NwPZXL26gZylGFeukK7ZizVIcKDAdE9GRKMo=;
	h=To:Subject:From:Date:From;
	b=nMNApWV0oIY5/0kB1c8hExby0x1mA3R5ezvllshvUO/5vFeCTl3nrwHFwRT03yafp
	 IlKLYGEFvml7JDPQ7Ik/h5AhySgtZ7/27wZlPSLNaHaZoNS/fAPw7UTL9StXntpnMo
	 GqPQNB4fAQKmzfpz2fl2I45PlLHIfUDoaFTKY1KsIQjsSnUAhN1/kMol5RorP0Tjr0
	 dRX1MOBU60c7fvooHjKqB96w+0ZZ9P0vIdUUTWgsvfGFEe9dzVYdmBX+FZoGfrIxQD
	 EBGpuBAjIWqXbilHDJThqw1ZdHlz8InlGDa2oc2ifQKlpmgwTLqEQ7M4I5bmAY1GSj
	 9v1/xThfJQ8Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90560E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633123358.26994.10745933739181807861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124a9aababb5381ce0c09c0cb336c0d978c37fd4f96bd56ca985c15dddb4a49e
Date: Sun, 21 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766331233
