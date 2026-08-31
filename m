Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5543B4CCDEE
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788204034; cv=none; b=Jvqp7CuhO1rw6JzFQC9LN+/PFKDwhvMA/k8BqmNTqN0MCdPe81E/aY4wak4LRvXDmIv+mTlswQKefZdUB/o4BJbUqeWrZpEiaAS5fTOGVHmyG+I5O9rjgLhtFgJ7FtiZm773YENnO3/4y/07O2c4NpWfnuPJs6pibo78WYh5lbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788204034; c=relaxed/simple;
	bh=ufPpGYXkcmbns3lynBTroia3A7rslqpJJlboflUObww=;
	h=To:Subject:From:Message-Id:Date; b=JQm98hYDQ9G8303iKmmedlKdDy0li0WdBRuIv/i8xJPr0hozxNhkapifkOzjPlpXEEPHEIqjc5394HpsEIFxTgkbluDK+pucrNuvwfjv92O1P8oJELC9IvrKjprR7zAt1dTc+IoKFfzi9vHT02QSU+EL7fVKFAX8PpVCmSCun5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehUYFMQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehUYFMQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788204033;
	bh=ufPpGYXkcmbns3lynBTroia3A7rslqpJJlboflUObww=;
	h=To:Subject:From:Date:From;
	b=ehUYFMQIeuHL9R15QASy5my5pgy1uBIZqtRgwbqMK1B/iejRdul5Vcdmcl9PteuKr
	 w3wqwuJce77Db4ZagpCyaHfNetN1Z5uXZgGwITswdlPIPbnhOmqGfQPbK/1GvrYss+
	 9oYji3Npxak0/5c10HUgPk32lLZ3T6l8WTXT8Cxkqsv6wuTk+QVUNtQFcIhMiI3ITK
	 gagO3H8cIERnlN+un7cXlV0TWE6troKwIw4hOmg94NtQ8ZmoVf3oDOTNApOMxQQ7Os
	 cUPyv0gcVXcUDTExPrTSYSHCa7XdYD5iEP9T1Jp2wrRqLt3a+urmGHzBWYOqu5GPiF
	 kYSq4D8HfJUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE199C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820403370.8771.12468033302072546491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89be02b8c39cc2a0d4407ffbf458f8ba2860af2b08222a843e7ade12c752c314
Date: Mon, 31 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788204033
