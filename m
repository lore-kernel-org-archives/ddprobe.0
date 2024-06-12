Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7939F16F0F3
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718195303; cv=none; b=NFtMgsCQHziEBsY3PG5Jy6/nWANeQBbRw0mE7m8Kt96iFi3GA3Q949L+YFrjc2wZ0cRFYuIeoEQS4HudGZrMZu3koszK75uPqQJAzKBQRsT7bbS6bdq1kMUyzmxrlbcuJwXeAx+GLag2fy0PvGO7zG/6GFLFmHxLxrGe3hXDwg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718195303; c=relaxed/simple;
	bh=nPaquxcYFx2ct9FhRZLECIzFH85PwKlEJkAq3dXTXKo=;
	h=To:Subject:From:Message-Id:Date; b=BaK+h2uM/AAS4AcQ+O90KVB+jDAiCfE82bm4A7TXCr4tg0iNcMszwBSfnZKxITJPeR5pUbI0MnfUEn3KaH3lked3neOl2+3YA/qLxx3GgohoGKvGCjG/TEiDt//rCE/fQLt4zq4CwS3s7COND3id9Q7KNTWcdUdtrbpz23IDPT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfRV9bzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfRV9bzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1AFC32789
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718195303;
	bh=nPaquxcYFx2ct9FhRZLECIzFH85PwKlEJkAq3dXTXKo=;
	h=To:Subject:From:Date:From;
	b=IfRV9bzBv7358zAL+XXuORMu1A2q/yycfct2UyjNetY0+aZk2ZCkVsrrVIPWNB78e
	 L/gnGDiMJh/CDH9mKr5L0JlQIEq5xDF7JK/l5a6LaQ+qqbtvB7MS/AqDHPgHyPSbAk
	 MFql5ufkZ31ROc8l4rWI7Sb7XBRONvYwIBHTnvB5VLpolvmNgnaXr2iVsZBXxm0xJg
	 2n8jyfzcsW4HsxeS6hXDwAWP5DRGp9tVlGevVb4IvcbFHYt1Od8XxGI4XqI7YR3AwC
	 DNmlG0meFu4R5h1K+Vs3RF+PYA0NiCoY8Uj645EGjUYJrUZClbk0/ObwxMaGeiO+Co
	 0w7ZqVvL/DZ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F76C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 12:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819530286.21627.8806323495996415859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08b3a8fe2e69d298444b2c5ff82872d58ab531d5d0fa0f91bfa0ca50912fe3e
Date: Wed, 12 Jun 2024 12:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718195302
