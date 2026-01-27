Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C51C28030E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769538834; cv=none; b=k70ZdRfrGXZNZNBw3LRkSaSWx7/XIuV/PxDxsyQaz/8ZsI0jDNXqS9o3gydQ9t3CxT6faAt8YRgLa4bUdMFwV1KQsao9lTUbH5YgTePOTR866tfeXcX0qohxbfm6rAiWRO51MJLetvbqirtwI9Sm8F7d3EdofhZSlq6n2AmtCo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769538834; c=relaxed/simple;
	bh=rUjOFZH6/XckBu984E93azxKnk71kO/GmCZLLGpaEqI=;
	h=To:Subject:From:Message-Id:Date; b=Sp/Y32O/8pQsJX6wFt8EE3lTDDIUmP2vnVrNEIu5XPza8dQRMwOcMw5k3aqWgcbKiKu3Ek7eRixj4bz5Qdi5XNnV2Ze484JZ/5ipDDh9A6tVXSvmMZCG7iG/2AB57Dpg0ZFx4PLsE1r/b8keuoqPhad1+9wA3FhTTcV/W7XsoxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8cJdBex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8cJdBex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769538833;
	bh=rUjOFZH6/XckBu984E93azxKnk71kO/GmCZLLGpaEqI=;
	h=To:Subject:From:Date:From;
	b=H8cJdBexANA7x1W6zH47sUzX2WHBFC5P6hqQDHjoAoPuJjKvVTvLxH1WF16ti1CAq
	 6CkS/WkFyQqo7V7NZCsyY2rDKNaVA+wG25jWOElWWkiJnjJMUPa/CpimGR6zXYjg0B
	 9X45j/rbEdYZIYSiqucyJW4MM7Fj2xhr1x72V/ftPD+kv/PUr8rCoGLWN5iSAVcSAW
	 oewPVn91B2Fv73uBCbgapLM5DmYttzB7AeZxkkmDs3SjAK9eq+AyVLVYJfu1rHPAP6
	 RsfTQGGHn+VRwWjKta47iBc5UtGf2NJY4Qm+M1lpehZ40sIY+mgkm8OE5ZhQvWIItl
	 TgoVcwx5aSMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90243D2FED4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953883358.1005.14521838621096299920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d1743be3feb7bb2ddb2773c2c0b388d864874d9d536f4961b7df7e1d147963
Date: Tue, 27 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769538833
