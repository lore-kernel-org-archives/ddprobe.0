Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F922B9A8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737210954; cv=none; b=Vj/2Ek8Xl8Yg6aluB8K2FVAhL5BqkKSmHiijNApFyb2FuOrxU5XRY9FMIyuHnkquB4h6GTZXkf6Vnyfv9TpPg5aG2Ps0D7AvhfDyW+6Oj0JF5BOql1axv1JA3qSo/OeX6PmfSexi0c0K9G7Txv7u0Bv8bY3z9uPbhX6f4rc1dbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737210954; c=relaxed/simple;
	bh=AT1+dMUoOJGIWHbJeLlhGvgz2PuyUxde7otUzWGXVqM=;
	h=To:Subject:From:Message-Id:Date; b=GRm9CuCS5I/ap7+6HL5I84HNiqGi9Of9uJUc9/9dRQxukTAZD5frjVcF6qakMj2QqDLt05gNEwtfE0Xur3BD1Izps5aqM/4jgh6epKheigRBPddEdnqSFNIjzvdYjsW2d0wAGY6x6+i1wUH6tq9dJ9mKPFAzs7PT8lYpK6zvrn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5xSHSgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5xSHSgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C3C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737210953;
	bh=AT1+dMUoOJGIWHbJeLlhGvgz2PuyUxde7otUzWGXVqM=;
	h=To:Subject:From:Date:From;
	b=B5xSHSgbqfnI68YhGIxMPVFFS3MwuA7TItP6UlYq/kK0+JokYNfpDC4rpnaIPnc+e
	 UpAb81+p4/xxBVYJEQ/7KXoVM9hRs8i5eVfIy2kbM0BTKVqzTxLZOw/EDcjUL5aP7/
	 HCe52GsVYIMTgakz/zQyHP8uiuBNxTA94p8qyoI/8RA0fZtpo53zLHSezNGlV3ipRC
	 3x9KpV1gDl38My4HZT8QD6aP2vTEINgQeyc5VS0m80wZtq2ehRD6eRvDVzk+Be9bk+
	 fJfgdntNAk3kBhHJ4j6kIwJ31R9osUF4ksy5M5w7A/mObKgSlaPOomZU8mzSjId9yf
	 d26tofBRUt2LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E02C02187
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721095360.12625.6998171117055297381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2315f6147000aa5aec9a03f745c99fd77abe4b20cf8cdb092cfeab434c8eed86
Date: Sat, 18 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737210953
