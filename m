Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331092EA752
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764769974; cv=none; b=TKyFeA12fcQ5+dlYqtbVaQi+PQypYa7YICbbnVDKNcoRC8itaqAPzeqwrXGTda0ce/bn93nB8RMn12gz4l6eVRFXwfUANOtp5jfl94ZeP9m9ol+VF/R8iNUe/iDio8bJEh1r05LCHbgW8ne4SzHQma6XGHbIEiljGZtTt56cIl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764769974; c=relaxed/simple;
	bh=hFlnF3VDkaKCmDh88YJglG6C5yyb7WguY4jkYFiklKA=;
	h=To:Subject:From:Message-Id:Date; b=IeBdfXjS4KNFs1fPvJezVik9P4IrmZc5g+DA0QlAXOkUPZqetpT/q8iDIGcbPDg/bys6J1bS2dVJaTAkEdB41/zG6DzrMR8HFkXYXh8fhtUoGdeZkZNb8nwSs+0IpgB2QTS4y4nFdURyaeTzMtNJOlv7XJ3tpbaja3tGjIUGi3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTWBQKgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTWBQKgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A787EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764769973;
	bh=hFlnF3VDkaKCmDh88YJglG6C5yyb7WguY4jkYFiklKA=;
	h=To:Subject:From:Date:From;
	b=UTWBQKgyln6P6L+dWO+BRo/OUfOivBYvtBP3KbEullHsb7NgLX6TokeNsPzjXiwGc
	 2m9NVveAJZUNL5fGaKzWEIR2ySerPmNHpKzRJ8jSqt+bhuwshDDCVOQyCMlSOKSlfz
	 otlcDOPfKVCzmLIfHWyKmorUCU1RMSB1AzjEzdaw6ooWYZeXKuLUUBVXj0O+vqCQWO
	 Dbc8XXaCvZpMhr81EKgJIpzBxmZ6xkSo7jXiiIosDIShtMahbObtek+KRR0oSCLEdE
	 syN8q/Mf2tDvWdUHdxmrG+pj/sq8tP4CpGPm47HQegPt9wh7XwKxBBdp0k2BKkZxe5
	 8XWlBln31VpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95480D12D62
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476997359.12141.16142275354009673555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4d43c7c8208dd8283a8af75e23d8ee31e040624645f6d58fa30ccdd8a51956
Date: Wed, 03 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764769973
