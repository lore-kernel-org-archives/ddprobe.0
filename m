Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33683625
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775421934; cv=none; b=rX78YB0iag0xhRgLZL2ruwfQJljO1HB02ez0vHO48ZtNVtE03d/2ulz3K3IXAec6r1cvUNWQVhqMm+961js19rXBDCaaQyISXiyN50y1DgDm9a83VZgCJpK+fS7bxNi7o6qNT2SUEL98DhRG7jmRsNOmbrpISXS/yXhIO7URSx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775421934; c=relaxed/simple;
	bh=ENd0nhwoY/+8pGchKOEuUFj2XJSFCyLCO+fLoriPtY8=;
	h=To:Subject:From:Message-Id:Date; b=D+FLmeKhEVA55uA7LV6n/5ez6/bXZZX7ZhKq1FjggJi8DV0IkQwky/Ah4vyuLJFLEzu3ezzfqPnq39jDF84qmNj/6VcYBSZjE+Im84aGxEcyuKU/SGE3A3haOkBXv/zr4tSm7QWr9PDAUqNeIEM8B0dL/fJRF3G8P9aVf8faQ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUO5APoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUO5APoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E86C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775421933;
	bh=ENd0nhwoY/+8pGchKOEuUFj2XJSFCyLCO+fLoriPtY8=;
	h=To:Subject:From:Date:From;
	b=lUO5APoDVomAyVH897aa3fzxd5mTjcOTcGfcg3Qz4Pc/w17orNqe/cI9WjBq+d1hI
	 0ZjI/0OT+ArXmF1xNnhnKyz4mTdXNF0Fuf+H9YOlR8Sc6ObFDRY/ZMAsUp5Ns6nJ5s
	 wAANUjXylrQo4o7EYYWVShs1m3aH5DihrqL2r/r7tTLM2l4btlAYNM9V6hyhUgH9nb
	 iCZVKJqEM7zd3kzcEwbWxQACbuN9Sdwm6DZCkEVsHpAlJgIm8FjA3DVI/hVh2PwGcH
	 flU0D7sLycIOHZ++cU3Lk1q//m0AajkoWK6mq79eq3s9mkVBljMtTX0TloGcJNN2W+
	 PTo1yw1k79q0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B138DE9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542193370.29778.17316880678782509404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc169d53a5892d88f8e07acc41c63bd0b2b49e46909f38b8eea0d5dd277492c4
Date: Sun, 05 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775421933
