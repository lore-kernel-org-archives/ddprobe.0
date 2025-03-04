Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D59E155335
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741066734; cv=none; b=R8V+/Zh6lun1wcDpqqBldmWaIhbY5QYH2mmO3Dt5FiJ7buJ/PwzUWE61BlBNZFzUgeAxcEEDEPfXJ+SMzA5lXTxMN1OfZUDAazz7ExfJ7645Ih3w02d9sZJtqf3mreQWVUh1gnTNUiFnpx00rsF+kQgN57emqA9C7Bi7b8rQnPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741066734; c=relaxed/simple;
	bh=wD0vNF39GXxMT9eDkP7dOpMLqMhoaRdiuFl7AN6x+PA=;
	h=To:Subject:From:Message-Id:Date; b=Km2MEueRC6oBhWNnPs2ig6KT8PIRTCb48B0fO84KcIYOWpBfLovC9EEZhuplrrXXZEaw34ui1PeFD/IoM9OcXW0HGsrRKy5NmHOIn8vnCMOd3N+thMng9wmdsG6XQxwOSOciVLv9LPbfP9DoIzAFeMzDRZPmHF67u07t+raadZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHVp6TMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHVp6TMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B798DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741066733;
	bh=wD0vNF39GXxMT9eDkP7dOpMLqMhoaRdiuFl7AN6x+PA=;
	h=To:Subject:From:Date:From;
	b=CHVp6TMKZP8f7MNOWbFET2mRKPmyxcysAbjv/D41GxUy5CXtYhs70EASJOa6oXckU
	 JftPh90Cd0+knpjW8Pm0c6i2n8fk6mpzU7QzrXuwls0XlqDvjCJqomqgHqxxp+QX/m
	 Y/Y0lgE4ncDkntRaedT2ZfHzeX/yxLVez6ochI/7rOypcZDAhfhhJ9auynl00oaUoB
	 ZAs/rhG1h9BRUiQQij4J/QTmeotYGTRynp+C1IhBV9LMoTzCYMf3X8VKTp1qL3xnYf
	 1qHzrnMXztc3BTZkCRtt94AwQEX6u3iKkBRsGDtq31Mv4HzZ8B5ZwO7j8KaYK+kxCm
	 HAanxhfkBnPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2ECFC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106673364.29444.12138801109427376777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9065ca5babe899526385b2de3c1292f7c34cf8b120503d93dec43ea7ba30eac2
Date: Tue, 04 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741066733
