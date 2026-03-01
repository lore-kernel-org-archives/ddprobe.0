Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013442144D7
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772402094; cv=none; b=robDCbLUTxg0oEisjYYgIg+MIg90vQv09y90sHGRWFVUKlKi+AImXVap7lVN3Q9R9ProHCRUfb2kz/B2r5OhVVs/vjqGv/hZ6f3sj0bzCESqGKbS1uIfl7eXj4QRURjc0kWmqLnydwb2aUOvfy1734xAQDkdqr2wrhlPu7Itzuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772402094; c=relaxed/simple;
	bh=mm+NWj2l9KJV0+o6r3HRVv61zuwk4IqkNxL5wnjwlyg=;
	h=To:Subject:From:Message-Id:Date; b=NFJRUA0v5XBustT+oaJsQVwVJorX3waWSqN8+dTSNSuoi+fWXEf6zCNKOkAZaMejyou8VsuefjYFqeUUKlIICjgBNM++yb4rI1aYpyYJO6/YfiwNu+aBJrx3n1+JeNnnGU+uQCohC8YjFmVYRIKPA0kPitDrmbKSfOqvOTL39E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twXYKFD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twXYKFD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73BDC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772402093;
	bh=mm+NWj2l9KJV0+o6r3HRVv61zuwk4IqkNxL5wnjwlyg=;
	h=To:Subject:From:Date:From;
	b=twXYKFD60et/eNWgu4sdGsIiqMHvya1PZXy04XONantzhw83BP55chwqOXWwcNmYJ
	 jDeibv9iA6A66K1g6yDYG1cdQu68+1D3Sc2HhymqYj15bUqxn4qzsDPP4MiIpjsWSf
	 Kau7CiB6UY8AF0zsV5spoh/MQ4PTgVVcZM7qoE0BvRQF5EoZlO2PrUy+VqdOJaMPKh
	 AyJjNAoVKtH3kmTUUEsC47mV6jdQTWe1FiXhu3peN6ap63xfyNygC0VZzIOeb1S2wt
	 hmJTQLjIBSXGN+Ic8VShfamrtX864wOVwD8U833d2fZyGjWr8Svwxq064IN/FrKQSy
	 e8i9vjUj2W1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37C8FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240209370.21075.1872198543090414621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9db1a4c81553880a1e5c251700bb0ffbfb7cdc6360be64a30cc12ce606831c5
Date: Sun, 01 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772402093
