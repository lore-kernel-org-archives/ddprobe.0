Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131A03A1685
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774005294; cv=none; b=i+60MJKG72Aa25alYG97yMgl1dxYKvArw5ehluyBPod1kTFXkBabTiHgHFoxQKSOFtTlP4AnE/uln1slBG2NER/LXNcBOEUPRC3NeknhUPdZyxeAi4Xu7CKPhq0AGGn6QiNqpj+MEl1CiFY8soxt6yyKyX0vEYav5kVFbNnTwZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774005294; c=relaxed/simple;
	bh=jcY18rrA2gzxtg3sxlwQMRxkQxrO5bXR81rPRQBZtl0=;
	h=To:Subject:From:Message-Id:Date; b=e9RWzCouMDvMDmLPCiuKI7qOeOE1psbbxJboPhIWmy15IMxMVSCrilrEWD/uXHogK5M4Yq0j805fai5gE16Fk7OMU8nEQwVVn50e+PghuLz/GMzMZ4eyZmLhR4tsAGsFsPLY+ixHRzxcHvzQcgkQVi2iScNh+sIfh8lt/P/1TFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ope9q+0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ope9q+0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9BC2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774005293;
	bh=jcY18rrA2gzxtg3sxlwQMRxkQxrO5bXR81rPRQBZtl0=;
	h=To:Subject:From:Date:From;
	b=ope9q+0PTLuojlZlHaZkQ5MHiyEP3+vjKbIwp4HcNT4Kqalbw+z6q9O2gFNDxKMVC
	 AD3tNsZs9GJn/vKZwtRZ3PW5S5xJ0ro6zmm7I3LuZD8OWAtpd4JYjpsug+On6Qi89O
	 k+Ikf+EM4bKYZ2BOIjgQRkxPm/xkwIi93F4B02/dOCFglU/7U3e1t+S2Ds/Ma8KSfT
	 T7wwoUyOLGqlNYVAbzeDDXfd0hAZ0OE1ULvdYO0dm8jDRQ3ftDgwrfB6zW7iaQlMmx
	 uxSCsTcUsFcqKOWQN++AwwavbJdXKbqY4kW2Aur7cx6d5H32/KshH032RDk1KJp2/N
	 QfLWhaUS7knMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90257108B8F5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400529358.13645.1977572797757305238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914f13ffd2b31f5331897ed51a0e56627802496080c080b7c41f7fbe01bc6f47
Date: Fri, 20 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774005293
