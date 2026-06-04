Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1263D0BED
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780603474; cv=none; b=HA3i7U33VP+3dMANO+h2alk8MSP7p8et9vTW0v8Nq/AIjg/gBZlLlNA5iaK6SgBTjg0YkGJRiPkGmRRie96P42ACSpksJ9OJii9NiuA8/yyOyiyPE+7i6ROHF4u+9dHPCcpw9ds/G2Vkeg23cOyAImccfXXxfi9/ApXL8+ehuCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780603474; c=relaxed/simple;
	bh=xJng6igqps3yf3L+5DbeEHbjiRucSI3aX2uf2jUxiyQ=;
	h=To:Subject:From:Message-Id:Date; b=HGC0PmXft1YYFUZJFcSia5B+0qYQSK+bvg2pQn76LDP5b4fiTSgT4FvGeGtjcZ3aQzpkGaQ0eBA6RSUkiHjyCfsG/higCbD41S/5MI9oXolQ+aT9xL+/0hjyECEiM3NjDUUHJMEPR9spHEROAf8gWXZaN50TA+JmjyxNsS5X4vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0KxtQ1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0KxtQ1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD020C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780603473;
	bh=xJng6igqps3yf3L+5DbeEHbjiRucSI3aX2uf2jUxiyQ=;
	h=To:Subject:From:Date:From;
	b=k0KxtQ1LWWHY/KIx8P/g7iqpVOQoZQXOdPAj2lfsYRMqK5f80dqn0IQBhW9jtQw26
	 l0XviI9O+dbzXqTEv2gu4DM74CiZdmvT40+xlDcvoWPCfNaL1pjHhey60TAWvaM91A
	 Idw5Lw3gfqb6/KKI+FjsB4NmYyD7Y+598lyjgGxkj7gTZkJvvID3IxQWUzofB52bQh
	 iNkjwfTkJwY3Iu6fWH68meo8Ni7448SfsdiPtBsrPwj6Ml0zxMr0Ymmt5u1HVBsQvw
	 mGN8Nxn5UaKY5WaUWAjn8c7SP0vwbcks11jtQoCQFGGRGaPo/XagFlnZKWQCkOuXfI
	 NNQzq4xB1kElw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5B3CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060347375.1856.14939939208582694133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895c726740499da65d1f9517132c0c3e0387910a38afd3cb6f1c19e3a6d197ba
Date: Thu, 04 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780603473
