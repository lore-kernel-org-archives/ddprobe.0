Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449C01B7FD
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726723554; cv=none; b=ThR3rX4c73seELp6WeQOl4NkgZ0JsVufaRqe4scOxMyLTfNtRFdJQUqSrihd4kYJ6Bg1VVFFiQs7UsBUX0EBkfRqyMAsLE0TCvIAXCp8VzkTU7lFbhbm8zuwEX+YZPxcGt9bar/5qp7btF7Z2z6t7xwzk+U4fUUOvxrEfV5DJhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726723554; c=relaxed/simple;
	bh=J2euW+85LJuXGYqjOQSBfTg+mbdWvQlLj2iJoPDZrxs=;
	h=To:Subject:From:Message-Id:Date; b=AhOEpLSaC3JFpBX50UbbKdfvaaveW9E8xv5vCIvXYPaMd22d2xAVIdtFYgOhTzHg+qOtlXERBms0McTgfrbszswPTI8xkX2uaNiGuSn6CvO9P5G3xjdO3HkO3pyWazTUAtdkJzGklOSWPVsweQ5RxZS+pvpLm+QG379pzJCbUnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8X/9u/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8X/9u/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B133AC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726723553;
	bh=J2euW+85LJuXGYqjOQSBfTg+mbdWvQlLj2iJoPDZrxs=;
	h=To:Subject:From:Date:From;
	b=j8X/9u/BtPLrdKiLNpF6uCrpDKQztILJLWTC4esEw6km+NtzEloBaGnh54ZimMjC9
	 y0Xnpd8HIop4TaK1aIanM8Exo36BoeSqsAdVecH7BH6nFjWewlNyILHCxjIxTdSB5u
	 Mh0AT/4zEZ0gH/pj238e5HVTTeo5tzYR3SEN/uoy38ksRUKhBc82Xjin0sALUHaGrG
	 eXaAJrATPPQlo/YnivdAI05XBp6RpMZTUVqURmcHNt86wTElOikvvDFiJgkelhkS1x
	 JqFZaBwqvTWcpiNcJyMeLTB3fwEp9ur+4ig9RXmT9YVWE89SNHou5t+rd7vjpdlcou
	 YKXZqZE9WtcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C987CE8D4C
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672355360.16169.4644622663686452729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f62fa5358cb99deb0bc4c605c4b67a30b4fe6d02a12a9156ba2c09b1ad0b9b
Date: Thu, 19 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726723553
