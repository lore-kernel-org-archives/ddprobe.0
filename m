Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109621C0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705467497; cv=none; b=PVScNQDlxjgFFhBuey8cM1t8I6BoH3oQ02SJqg5xjU0RgkdjJz1d5MX6OSb8m7z/uXguitemfw/SSXXa63kivxcbVv5gkL52vyBvKSfW4odjhGIRUmgDJlQ/bxieakfct8ueMYAKms5g4pNZ9c6bfeaxRF4ajoiB244lHf5aovU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705467497; c=relaxed/simple;
	bh=oSftpDfrIvTNaZl3gjdMnKy/jdYGJP8ArCudFRK9I+M=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Ia+pYAYN0VZ21usARUp+AHNl0B3uEq34TgPvQ9VeZtQ7ETj5mb+Mt+fSTZeYLHNeAmmhH8Ubwnm+6AA8zy9ao1KxAX+H0dtryFKjBw4tZ2xaMwR61lIDL/tACzcb1237yKwyVseei4oxK4vTjaI0oX2ycwmo9ti3OMRjsz+5S3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7HNPM1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7HNPM1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFDFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705467496;
	bh=oSftpDfrIvTNaZl3gjdMnKy/jdYGJP8ArCudFRK9I+M=;
	h=To:Subject:From:Date:From;
	b=h7HNPM1MN2hfqjL9n9a0RoE3K+ebuoHmc8PGnKwb3ZM/+1a2Gp7nc084jWuyRWuiT
	 jZY4D1g0CPh9ToCb4Vv25uHPD4smXyxHgKMOYuJEusKwIs7tNsCQcxv2+ZQxdKkkgn
	 i0E4KV7Sb2ynNakEZS3WoRbOhD3s4S5Tl2vP2an6m3E14Pm8F6Q6hOVS5awZ7jtwH9
	 wDF37naYh4IfpDjvMPkImFpwCEC6nrT7RpwYBIJTowYIqRJTYUqvCfAihnmetgjKwT
	 036h1mrCvr+DFaYpiGqjS0OWNU42Z224zwVSxcNVECgHWdWSbeCsYyUd2tq+/jbq9h
	 53zcqmmgM0rhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6283DC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546749638.27111.3575345226313183929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b051108db48e0f3db80995b92fd51d0b744fa312350b193717b874607725c2f
Date: Wed, 17 Jan 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705467496
