Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE4342042
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716046943; cv=none; b=IQdZaXZNwmqTBIWLKU1yfF8RVqTP8ahIs6sOa2Lm+fzOZVzBlSfcy0a8vJ0NhaVB4xv2LMD/mU/iitYgJWHbhOG/EYwgTugZ9UyvAAyGttTbfsgGy4BYUSFhYcdrpVqGcSAZ9uDEK+JQcyZmJRdBD0eadj+3/U+WvvVKtsss6I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716046943; c=relaxed/simple;
	bh=953bJoAlrvNOxetvTY8/kF2XMmzGTBN6uQhpgaXj7uY=;
	h=To:Subject:From:Message-Id:Date; b=d9pphrvASZ5JgRgxnuaaGoW+GUZ/Cn8kAYRJGsYTYb95gsINCBXuAnoz3q01yG/bURh+2ArS3ACesEQ6jJJHcNxQfbhCdTh/d+3YEYrKKMtVzTcYoJZWIR5WQ8ovNIimDyGuscIUIjHuAALAHPXQeziM4ILF3kzzvtM78aKKHmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq/zdUFM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq/zdUFM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73ECC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716046942;
	bh=953bJoAlrvNOxetvTY8/kF2XMmzGTBN6uQhpgaXj7uY=;
	h=To:Subject:From:Date:From;
	b=Uq/zdUFMao6AZbXRHYKd2oZDTZ4QANn8myw+6NOisrl6Liw3ZiegHSyu+8RNWDQmN
	 26Lvj1XA9oX92GBF7AAIbOqNDaJvhKK5pUupH1EF5TOqdSEqkHgRwe0Lkh1OUy3t4j
	 H/geCApbrQLgV1pbaPDfyfQFJTgv1ywjgSDCwQhilgVKhYUKpbrCZIpyzrv60K5b/1
	 ysHnsZRjkf/Sh6IygUk11Fv9xpC5P/sV1VnbyTAea+Qy/QkQ5lxU5K607s8347+7Im
	 St8euoD3ya5TlBn4ZxUM36SkL2+GzPAlDwBICpyy+DhNBa8k50HY3xGmOnQ3EXgS5w
	 XDrR/nBsMsQYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34E2C25B75
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604694276.2584.11098846257371934604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f602a9c96c09adc523c36bcd38bd2f83ac396e8dd1e19daf23496a8145e215a6
Date: Sat, 18 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716046942
