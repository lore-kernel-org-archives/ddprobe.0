Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60062153812
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714080743; cv=none; b=jl386YxLpHQOH7rIHo/NKt9y6d78r3myjgpFhf/0wcfFkf2ST9TKxBRikwfOCj9g+1mkVlwQsFXI4pVPhs/VUk1l5iBzLwXy0Oxb1dgA0YV+Z4cRNxErvC2qZLZa++Sn/u2vtFqUGRLlKkpMFwgX0yGSURkmIhbWqPWqhzKydDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714080743; c=relaxed/simple;
	bh=6CX9KMmqxysV9VmFdP37o3fX5+U+VqKnO0jb3KYhgeQ=;
	h=To:Subject:From:Message-Id:Date; b=k1U/1SBJl7T8LV6h0Sn8z4nHACUcApr+Fo2SeP8qksngkKXgeHinWyGsEFk91xiLESyZzPxlyvb9A+pe7PqPB8OBvOGEHnYrRvSeAaOwmKXEanuYMsaQhzAhfNVha/RfGdJ3fQLPTUocvyDzm7piwIvHkif/SOoUfsuVwHZa1A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOy1M/2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOy1M/2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF223C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714080743;
	bh=6CX9KMmqxysV9VmFdP37o3fX5+U+VqKnO0jb3KYhgeQ=;
	h=To:Subject:From:Date:From;
	b=BOy1M/2ojUYYk5kCMMcp5iJSiJuEwXE25qFpSpDq1jYebHqtndA0bpuAafWm+G2Oe
	 imHx9bkZe25STqL6pBh4Kkxt5ktiBKIilYhR1CD3VDl3lE2VixrbZs+Q9nT3UhM/Ej
	 8QkklyXXJ5XcW2nI4afW8xCRLVaKMYv7kvFafgyRE/BLABtFoCLKbHTDV1M5svqKry
	 zDIHEJPKR1igMr037V1XD7caWoye6XRuu0eLnExTxb0gM/oc+Spb6Y+ZM/Jz5y6HC1
	 lYYEy4SQuFm1DaLDelxdyJvz3VolWtf50vwBSoW4dpukO3FfICEG8ra70ugTJOyO51
	 2dOX6ZKBTtsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3430C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408074284.5764.6127757331554153777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c3b8e3c875295caa19da7ca7f9be5d41f96b689e4a9bd9833a364cc667e781
Date: Thu, 25 Apr 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714080742
