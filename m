Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABA63209
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749087594; cv=none; b=Fn7ZgPtC9fo5OJol8/pu/Roz9BiIMadeaLZoYE2tmv6ixBYQsBSl5kKfspVOWe2EcwgrmEIDczocV13kq7zHHHxVpy53keW3CXhCIaV8ZYgnPCtT+80xmKY49YzQFDltbWgmp+Je7Lrkx960QNB6oNwCw/lgEJ4wmPxH9COK2O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749087594; c=relaxed/simple;
	bh=Ea67qdlANYWfZM3X7fjcxyN5ONQfXLnzdv7co+lBWUM=;
	h=To:Subject:From:Message-Id:Date; b=bDcXvaqwJh8C3pT0+eKWp7TpMQVlu8P06DjJvxTVOqphD1yPMqW/qAc9Mpmp8fa93g4gCiCbIZiiRZkcXrzUNbIIYnQCNzClRizy6SNjfgE3qwILV/KZHxEQec0q2Cogc//lx0ShOMZ0TRPvL0BiYaPMIiCGddxP/az1puVoUz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJuZzXAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJuZzXAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BFC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749087593;
	bh=Ea67qdlANYWfZM3X7fjcxyN5ONQfXLnzdv7co+lBWUM=;
	h=To:Subject:From:Date:From;
	b=qJuZzXAnYaOpzm+QQAph8yvtQVazr8lzpHXY/vt4h6dw0w1j4HuU0xIhidI5NORHX
	 C4OiwWTY3z4kHWlgjckDgZau5SWC1kPA3EggoytVUAoMrf7tcdL0Sc58LoXoxoMpBg
	 mMDBWW+K5YIfqPS9JsD4yLpktAZKHDigtevvoAZyU1lszbXMDssxFPNBPm5K4FLRyF
	 vcapITtJHHjU+mNkBRAnOHBV0yNt9WUMymGPbooLjEmsS5Cp12eOToEQp+eI3bNaHy
	 y7vy/tbjnNTqkbGWG+d5T9279dODFhCM3j94TcGnRnRKL7/9ljTOOOqnhKiFOZMa9S
	 QGTNnjZxBawjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F3C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908759358.30500.1713608912971901188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c6ec8ca7fe740dfe405cfa681aa6d12224b08995c6baa11d0c0a6fc0f2c6b5
Date: Thu, 05 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749087593
