Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175943597A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751867394; cv=none; b=De3Ei1vXbdNS3mu4dnTCaVXKjHxM7QWjiB9+wkkURbx2ekHQRhv+54Ma9cUrvY3AcymHKFKoVXZQ/xvszzZdNmD+YeXSApbk5mfy8DZrBnTgtyMhAIUdLtvz/oBsj5/jceCucg7fpyDFkYiUiGr8/AGDxLKqRyH3cTKYcAGQ4Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751867394; c=relaxed/simple;
	bh=2NK9LukToA5T5jIgiFOnAcg3qfAhkNhhKUYt2ek/Z9Y=;
	h=To:Subject:From:Message-Id:Date; b=Nj448EinynIP7nGulQqHJtX2Ovk1hly+5lxwcZzIBzxBM/fnbKj6P/hI5zEFu99Sfkmo2zrWUqgCazbRoisjXEC/Lyhseqrg30Gh9ZclQVNA79odkYyDUNZK2PpP1JKT3GgPcXxi+9lA2HY5/xOXZVcI3MZTcNAbekjXeeND9TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOGdsBMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOGdsBMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0D3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751867393;
	bh=2NK9LukToA5T5jIgiFOnAcg3qfAhkNhhKUYt2ek/Z9Y=;
	h=To:Subject:From:Date:From;
	b=uOGdsBMsUQbx5CpMDCYiWR47T2mP/f50p7iw4Phz2KczVXkPD0j3QqSDqlX8Vifgu
	 ZSBP1DrmD2cUjg8DEoPNfpb9rd1KwzF1z8M0B6BV22f5wVFol233MQovDvtHlPVw8d
	 k9PiGmYKlPOKJqu5TlpMAWe32ngHE4wBTp8/1YLdOCSa8AwIHDv8gukBpq2luINw7H
	 GXkHZg8Qdlgk9eo3I2NZGfBsXXNcxokqJEpUDpQEeNmS0rGI1VjD6Mn3lUceVYKMSt
	 /cB3tHkv6+579Jtr8nmP8gsVdSnzNho9fAn8RSl3RkJaApRMWNRZBoIie0ap6Kpcc9
	 gevtEptYkP69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC19C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186739357.22209.13043726192506051859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eacec31777d12ada9c3f7cd835c0cda8174d4339fd24ed96cdbc300cb1544fe
Date: Mon, 07 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751867393
