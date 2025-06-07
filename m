Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092651E260A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749311394; cv=none; b=oms1zdk67djlU6XuG1o9X2MAFlTOie9euV669JhOJ24SfoxrJ/xDz7sQ8CcpYR9W6czyAprS2m2q+8TJe1ZWoPf/qu6q6/Vur6yjgX3zQmPayhwa0S/BZvykjfP5p9wF/i2UiPxCc6OAuv9MMwkEXbX4X0C/rIT/x4sHBsW3E/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749311394; c=relaxed/simple;
	bh=E/5WxrQi8cbiKbFyuujQzKYahjA5MzVSAj2Ioyrdqis=;
	h=To:Subject:From:Message-Id:Date; b=GCPStatPqFJukHJIsvjPwNG0h8z3P7CDoVV7rS8WWCWvFHqkuNVh9zaIJFm4ACKm8aTd0nKEWNvMXwLmux29pzbH+eKVnThvejbk2bGfWdHjlKNgQzSWBcepGuR7HyoR6dJpUYMMqMB5XQMMAelr5Ue5Ss0vcX4CElrmFPipg3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/dTA3Z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/dTA3Z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E8FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749311393;
	bh=E/5WxrQi8cbiKbFyuujQzKYahjA5MzVSAj2Ioyrdqis=;
	h=To:Subject:From:Date:From;
	b=A/dTA3Z06SdB7CTmrj1CERqfa+3LU6mguuOv4t/gqFJCR5klh5VVOHx0fqJBmhsvd
	 SN9MLlGDDSETWVU3gAeP9FFSOWeBWlD9UgM/DkmVUIeCFjB3FF5Mmnyio+hm/PfUgo
	 NOJ9Ko1AcroWezLFu6k/kM1WSNOCGmaK6BRO525k6OAKWUBdxYpUx06AZzYl382jW7
	 Izxwi/RHv2Af8dCUh5myVDKYMYe2lpo1TQMW6zkYnCMFcoJd1NAzLsnxZs9pDWm0Yq
	 Vn35uWewvX8z5lwo5ywFxHiQA6y9xIgnxSa2PEXeQNbGvwnsl+572VsQg+N+T53157
	 QcwN/UWrjEArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED39C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931139357.19349.9687613044371795884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8dfd56bb45a7392052e3bebd5bb0b8e5512fb48aaa179c9dd565ee5767851a
Date: Sat, 07 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749311393
