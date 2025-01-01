Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B7A38385
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735724154; cv=none; b=BnxB/ayzop5yhomX7Jz5XwuSJtBcondJueDxKb4pyepV/1uMhW8Mox+ueIBxk03SQZFyHnqm7zRmm5I5BufUzGzVPWUKg9AqItJGimUpK+tqNu2Z/3XTNjmlixrv/Iky3Rtu898g47s21o7no4HP0uHgQ9n76I20jyexQGzlAy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735724154; c=relaxed/simple;
	bh=UiuTNYXiox4bEFJtNI9L6TEsgjaKMJJyOfOc6r1c72o=;
	h=To:Subject:From:Message-Id:Date; b=gpEaQODafN4RnpIcLcvzGYAMEu3tFUkv+iySo3Tnr9AeolGodeWC0SjsPFzyV76LMHIyPHkldiPPniTi1kRMKq1h4bg3t6l2WDtPeLuYsHU9yqyRJoHD40DssT+2S4LMEoTxekZDFWD7oRPtioHNC8Q2GvZtlGXztnGs6v1fX/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGb6qXAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGb6qXAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27EAC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735724153;
	bh=UiuTNYXiox4bEFJtNI9L6TEsgjaKMJJyOfOc6r1c72o=;
	h=To:Subject:From:Date:From;
	b=CGb6qXAj0OtSTuGgLigSgUW2UhcF3TPMmBdXLY2l0kvw472W3v39bGS5br+zHs6IK
	 AuYVUSSdAoCiW1sfnjOwy7H3+/QP+7Mkvbv9V+/Zi5mF8CML8Pz/y1luU+M7QdP1cI
	 MNzDv1tPkeJNKMqf/vk9L5hkGPwIGfHay+IQJuk66WZPZZ5LLCWyKBouJoxob/lw86
	 Wz9E/zwfzPqljnI1rqkNz1/k6NeSep9v+/62lzFcndiXO0tFW3VLOWcYmvTn+ioWsq
	 aKflqsazkqshVuJdxfKKkv9zKUhao3H7Ed7KaLTqVBvMCczAZYVkjJ5lrfAoHqdHsT
	 kHJeixOyc5Rwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C4E7718F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572415359.17224.2474143698629352316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d79a595fbb7db1b3228d73461a9b735675a50d1aaab041cf7a4029269a5b7b
Date: Wed, 01 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735724153
