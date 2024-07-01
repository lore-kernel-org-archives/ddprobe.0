Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D684F8A0
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719812663; cv=none; b=uuljM5P+ZPCJgRpupjCY9N/QycKeUMzpmFHNnAhMRZjwgnLX/EXEf1335tR5p75sqGyS5qXfvSXreVv6s/RAa5OHm07PrkNpqOg3LhQdrJCWjrug+g9S61I9jXZxrsriM7qzzTxo2Kwg7hwnVZij2ZXazJJbZjnmz8zRTquFMfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719812663; c=relaxed/simple;
	bh=D6jNTlVbnINuIhNESK+NTWS5idayfmfI/aNZxvArA3o=;
	h=To:Subject:From:Message-Id:Date; b=eMh1sxjVAxSGjSaX2WvVHfGlfcjrRrV2tbHIGr9YwBl4emqfVf0ZxfjzSSTTLsvnK2hf1ECz9/HmpDBu5R45j95wER8Sw7Co6S9AuHDhSRm9d7wwKx/Eboc3HGX9IesHJx8N16lo/iiGbHF/kjVTAeRgqzTtd3D2illb6ahWlS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUZ4dv9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUZ4dv9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99D0C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719812662;
	bh=D6jNTlVbnINuIhNESK+NTWS5idayfmfI/aNZxvArA3o=;
	h=To:Subject:From:Date:From;
	b=PUZ4dv9p7pNbMldxmaMwYXgTWJQYsBBsoNtGJVRYDu0qFNUecApMVuVzIjtg9vw7K
	 nHITWYoDHDUHqIK9J0OZhYwSzcV+Ljyupzr774j/CRh0E5T7N3xMhueOKU0n+hmlBN
	 BfV8cgSO1H/aKnMKTfwvZpwLmXaot87+fWtL7uRGTLXIMzoshfn4YOxuTXFoTtNQah
	 BHaNaY7TOA4ev9wgQnQJZNwI5aF4HyHA1MYTkxurUvRmrplwhQzwNylF4owR7qdPj0
	 kICq1jX5NhUdhCU7tPfl8Q8ozs4NeumySQ+/5pNmFRlTb8fnRxekfC8uUQISIdEtTb
	 q9tcsXy3M5LxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F9BC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981266276.4475.13734760917488898595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d63f4790360a5a5b1da67a2738cfba513125d4c5c500a18771993b0c984d1d
Date: Mon, 01 Jul 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719812662
