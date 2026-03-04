Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7CB3914E2
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772615094; cv=none; b=X3hPFFPGkPhJTVomgHcg0cO6PD5LGmWnE6963Cr73rjjz+u+KXENbw6ynSKSDBX5xMkP/urr0le+qeFDf/fx8os5LvwlvwMECyndqAqxF06uKWpcjUVq39Go6VW4A1FLSmX2uxNLn1NOzDGGZBQFnx5nQuEMphROr27512PNaj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772615094; c=relaxed/simple;
	bh=iGWnJYJ/mcZnNlpz5ku+t0pt/Gu8bJ6d7HJ0bNbKhX4=;
	h=To:Subject:From:Message-Id:Date; b=P3awoJbQ1OpnTw2c2Xl/W6pqZwOkh+GIPKLABUUijhq/in4BYmrdK/32i7XK7zc6/9yngdGSvzCcWcFBBRAmkcj/zKK5fqg5xk61UaAntZcF6sNpeupivd1jfrlq59Sc8ndy5OdpjLbNsOO2GHDZAsIblzVtbtaiVBMCWwmun78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaCLM1G2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaCLM1G2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB503C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772615093;
	bh=iGWnJYJ/mcZnNlpz5ku+t0pt/Gu8bJ6d7HJ0bNbKhX4=;
	h=To:Subject:From:Date:From;
	b=LaCLM1G2yQGr82UTLiwc1+BpCFoB+eQ+hgx981mo2OyKMUf23FTEpM+7/J8hAVAPd
	 ysryisSCzp1QhtraS9CwfNXZPukQvl23kM2OzPMzd8DYzeNfhuuoDtxAKOBTg68OWB
	 BqoVC8+CabuHlHhadPxvrWfmuVz7AhKh6ogF4UwvQjN+4zShrmisdS0YGFClxldafz
	 BvQW3ZrIA9AF+3p8WwqdVrMDuyGIbTgpvxXUEvnP52EN9nYA9+y4IvTD6IFUX+D8FA
	 XHlF/r4dmYeb4iFIkk2eH/nU6wjI3eMB405cq570sqd9jCUMLgJ8tAWHMqGBIUY3uE
	 sOHKWIO8rP1dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C915EB7EB3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261509362.5480.9309113549457975361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9133da8484103b738b97eaae84ec1a29a2661e44f6f8bea1e40a5f8ca0b681bf
Date: Wed, 04 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772615093
