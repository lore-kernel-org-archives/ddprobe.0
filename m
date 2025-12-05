Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F8D2E6CC2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764942174; cv=none; b=l/zr6CjZPi/FpGJPwgEb3ws+FII2z1M3wvrHXREw55hHLPuBRQTlNIK60S1SmZwTKN3QOrzLe+dNcGwbRg+m3IFSpDsdZgS4zH6bbbUUHB5G8FdbAuKnYcIsSKQ371znOHKblgw8OOT+qcKMSUFkBiVjpjfSJLkjcOLYJh4ynDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764942174; c=relaxed/simple;
	bh=KWB2raTueqb+9SxMqBxUvNGBck+aS4lBK1zDncpBFbM=;
	h=To:Subject:From:Message-Id:Date; b=nOySevulfwEhSv5Ai88VKdYus5dupXlawpuOaqaaJUL/942DsbtIUM4PXx4q+BtlfuYvbZIU0F6f/zctxRy+CKAp11tZ6u/uMpzZXsp3IxhuXsuNPx1gUSkohG+WeryaaZ3jklSNwuhpys2fABWIhZxKK+uUpCrVtEDfHrRxuLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzTV0CvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzTV0CvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F7C116C6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764942173;
	bh=KWB2raTueqb+9SxMqBxUvNGBck+aS4lBK1zDncpBFbM=;
	h=To:Subject:From:Date:From;
	b=gzTV0CvZhhX0whIOybGRGi/0W8JIhI0qLsDsW5vJaKCq9ekK7CNSkoMjwDh5ZsASA
	 n8BfdvSvUu3sSw1b1nrl5qP/89j+m7rKYkvXgLHN4M4wPoGGxTGEOrd8CdKGPIv3ml
	 CZoqFCoCnp6DJmvRtkmP3JyaJt6AKHJdUZKfUipujIFVdj6xokyasaRtNZEx4PBkpb
	 n0fajZv44tpLvXaSWP1sWmnro3KQu/fq9VYxkQVNwpg96m1sYoOEJuze1U0v517Yto
	 jJVla8LFDieSSAHw6M8c+KvlXqSlOnjH470LoKmbdS9OOw7bx8DTHCNYTYzbVo7xpt
	 29SG37FLBzhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AB5D2F7EF
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494217359.11505.5897204138933727125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d097085696c90c05e1c9a4ef008bc5f7b70a8c0757c353f314d84ec4268bcc62
Date: Fri, 05 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764942173
