Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18429DF58
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721786754; cv=none; b=IWPYqUHb5l76XN0xnrNaZzvJ8wuRUt6r0LD002yn+BNNqN7qosmGUrophBdWw3pXuMJfl0dYpb3FCSserWl/itUadeu4LWTOL+een51v8kEwkZsY56F75kNi94mYN9xRq2oPJ2u9fFNlZYyZtw8JOPVtHIuq1NOiECmq1gwnGTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721786754; c=relaxed/simple;
	bh=leYCQOBeF94uTOTKIWWxUXVawn3j26O+Tnd1I+FR5M8=;
	h=To:Subject:From:Message-Id:Date; b=Qw3UEk6hXnonkSWCR4RfhKnFwtsN1N/LVUbBlc+0aO86UBphd55s7PE5TRBnEdx2zrxzJjEPHLEfDIOxuMjkzvhsF9H2VzDb/wUrYtMPmTW5yOh8d8MO+8dIK1tpf6m/lIYjx3lDhE9RKr+CxfrmpOnnz0hzyJI6pf+TQUxtVKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1kjA6+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1kjA6+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD9DC4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721786753;
	bh=leYCQOBeF94uTOTKIWWxUXVawn3j26O+Tnd1I+FR5M8=;
	h=To:Subject:From:Date:From;
	b=H1kjA6+wi/2QGvAO+ZJaaKJu6ajE4rDmiBHqK2dqJIfK11JBDRtTMQgD9s1y+HbDC
	 VDdnhJq/HhO0mCAaRjWuhtO0mqw4HoIO/d7wONEOZ8zdD5ArFsjh25ht/wbhGpS5+v
	 aGeMsTmkXSVuGTzXrySrRj4mjhZ6ZUutdW6FrlnwpNdAGAehBm9MH6uh+RWJaF8jp+
	 HITzJ1vaf0WulcmhKISJSL61oLb4l0Tek5SNxqhZ5w+Jd7E+ykq4vm671qFWHbB1B9
	 GJz5NGpOSHbcMIaRJ5F38u2HTxwQtMpaVOmbvbZy2ZwI2obX9xb/rWEAkequho41bO
	 NQq7yEUOk2nFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971FEC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178675360.26975.7290371343829266996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f81d246ab32769a8c1cf612ca785d80e4bb837eed453e78afd3079d89cd76b
Date: Wed, 24 Jul 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721786753
