Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0210A70830
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757386194; cv=none; b=J0947yftV8vxMaauHKU1m4rqY0dE/P639YKyQdQsnGUYi6YelEL4cRwFeif+OcYO/IGyitFnGSyndXK/CIjZufhpd8ZQtgsal5Jl9suUm/gJ18TUHCEdStq/Cicij6wsa1B+9/4WhXHWqKiPhHBQVFaK965J4yhCRzwEDztRnz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757386194; c=relaxed/simple;
	bh=edygMnOWKVQLCYdTVwxPr1YSouGBpK/MhIZBdfQNaxM=;
	h=To:Subject:From:Message-Id:Date; b=NLD14AeWoOn6td20uxUb/tqGQuOcA2umIWRkMQy0jEOz95/v96PCiyZmDNuC1MdxVBhUxE5+nRqHw1n0sRENnlp7C9hOt0MXbr3YPTSKyQv6kNF09yVEqhfwvzsdQKsYAx21uB/4N790jnUWiZxFm9DnOoo+FSGW4tl5AcP7W/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcfTRftt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcfTRftt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E85C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757386193;
	bh=edygMnOWKVQLCYdTVwxPr1YSouGBpK/MhIZBdfQNaxM=;
	h=To:Subject:From:Date:From;
	b=jcfTRfttdekBMhvRBtxCgmA3MiF+0acWHjzbrJQhwg/c9G5Cof+8AvGnlDEByVv3b
	 te9YYvmHpbfKpsB2ixTwLh4Z8Ncn+KoF6HUismF4mZcyB9Y16i1BJxetTCSlHxbdTo
	 MzYKcCiQDu3oTwD8zfiVKUlhdlPhijDYAffFZVOgTpFmDnas+/Nm9Ahk49UVuaTaHf
	 oS9rQY8TubDanHf1VqfCdTlYS+A6Sse92aZ9V6ppHt+nzlda/zVn2BBdXwADdtkFaB
	 zxkRH1L6AtnM3lTUmqOZvcVb5VycnfLqGFydx266xbWF3U21QlS3eEgcotL9crvL6P
	 9H1havkc9rTdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E3CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738619357.792.7489385211948830455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2993cfad98b190014d2987b06607bd953145850d4c895204c7f2cff61139954
Date: Tue, 09 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757386193
