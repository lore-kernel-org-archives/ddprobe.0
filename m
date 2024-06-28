Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4821D2139A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719572063; cv=none; b=R6rpToJNUC8k8LwAeyqyTrJKbOW+HhpbF8ctLmJZVVi9Cr+zkZlNtmZ5mX9lQ4wkkDVhvvb/JMRteXCUTK1PgKODMfyEtY3H3e8YfuxhuM1RB5LfoGkqSbXMWrlLrBDzeahX/v0BNIurtxnLA5J2v5jPqECJxu9ljwUxdqcArps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719572063; c=relaxed/simple;
	bh=6iBqYcMHS5P3EkTRzeWrJifh0mz1wgYcVLl2WskN4Rs=;
	h=To:Subject:From:Message-Id:Date; b=NHapXlJ9lgeLnqTS2u8bqjhQJp8HBrUu5OrfC0+cLEtueSs0Fn6zzCEuDXY/PIp2CuCkeFiwLT2H+9OqzxTup0SnD67QssIUlUK+X6Hw0J9QarmFqcan+pQYv0UCMcM+3aUvWiGOG/Ig3bM14TSTPq6CusqOPtqEJj/3n54KWs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbVHiqgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbVHiqgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE063C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719572062;
	bh=6iBqYcMHS5P3EkTRzeWrJifh0mz1wgYcVLl2WskN4Rs=;
	h=To:Subject:From:Date:From;
	b=CbVHiqghungWu3R553L5WIukq5EYCWHKfr9bP0YRH608lE2wmSOslEGP7ORPildEZ
	 ibbSBQ7ia2jNETtPczWxqauruCao68AYmNzMOtu0kHggQuCehDm83CCXXrUS5WUhxm
	 FkiS6C18+5Orjlfefo5OSoLQzOK8+2AaaTVlCbK2Gx8u008t81OJOibJuv1DU+D3sU
	 mm8noIbgWNCs1ROFK6FBfMy3krOdMTkC0SJssDoaHMfFHSCrgjgGTwOhFvMH2uQJ/S
	 +dte1mpu88ILC3qEkCRygbuOZb6BadmWM/e6OewDRQ+zUUs1LjkjpUgNQY5CV98SLS
	 UlZNbuwjE2xRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C34C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957206277.6991.312073952512618567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e801bcf9979e1dffc043b7d2c00667081a49fe12c45db8501dabe2da77dc71
Date: Fri, 28 Jun 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719572062
