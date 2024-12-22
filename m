Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C3B18BC20
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734882354; cv=none; b=pdl6yN/pFGyYfP8HU7i1ryDhOcrF6BY46tBTOayswo9XrylMmUIVUmWFAkMEUelqYmFSlkMhpJdsZw7X9hZfezj1DDxomPb6KTgUokucbGU05oh+2bG5G1aayr1+2QjrkWWhbhRE41JTI2fdbSmUq2Se6EoSt7hN1Ht7fJEop04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734882354; c=relaxed/simple;
	bh=L1AY3OxfxmrQyv+O7mwxqEvNAKN0385rQkxdZSiWIYQ=;
	h=To:Subject:From:Message-Id:Date; b=S1FeWh8peGkubQgdQMJ3vshsszUmUyHAUIsuz9Ap3+YAkVT9Sg6pvJMgNyet4SeUyU3vnDoPE3fqzNJUDfUtWc29L/XCVt8qk489M6a0ZHM1gpxR6olWCKNfprg9lRy6iy+tl8vPBlcY//9XY8WwxoqAh+JezKF+pyYA1lj7Z9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/r1r1WG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/r1r1WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A01C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734882353;
	bh=L1AY3OxfxmrQyv+O7mwxqEvNAKN0385rQkxdZSiWIYQ=;
	h=To:Subject:From:Date:From;
	b=o/r1r1WG7V31vr76AbnPjNWgBUliL+yBUqoIGlQSn06r4Ek9JR/FGAh0YzNmm8vhJ
	 BGJdgDHSVI3EzQOYt0jWa3viljFm/U9G5A+pz+F/OYHmbd6512/B2IV1BaZrDYcG2c
	 SzleoNqQ2J9E9nkRSzeafJOSnb5fEnc5HizHWjZOcEEB/7nigWxfzAHj3aoeckGVJH
	 g4in4cHy+D0f1t5eNe00V+LGtS585nN/zmvwnLm8hN2evsfmN9xMTWBkMwOl3AAPdr
	 3ASm65cV3LaaaujNdGGiZZPWaG/H7I0yKtiffT5f7CFsl2Fm7QWa1h7hotpAQ4Fg5Z
	 I2KjsXPAPcQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91171E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488235358.31278.12456604498029485499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a84c24ae5486b457e0ed954458753ae5b7b629a217c4fc74b16a7b81c8e1b11
Date: Sun, 22 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734882353
