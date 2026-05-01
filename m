Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE6B2F1FE3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777603654; cv=none; b=atuUoMdtiuVZlJ+dXW1lgQlB+aGRwziknzvWKTNARUXf5IGGL0mxHLWXGr985Fdi34kr4d09bILMMP2ws9XXZ/QeHIgk5BEQutMAt2iSwUr8PKuYoyInbjzR04HynhZIWN90rIOjGMJbwqUypzs2IfmP6ugWziCwvz0QDGejVag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777603654; c=relaxed/simple;
	bh=AyhM3I7N/O/dVumFXMIGunw2gusIH0pWMwiQ8WSoffY=;
	h=To:Subject:From:Message-Id:Date; b=KGfhyoR1K0pJSp8fvCkwwyCTeM/8L46Oq87zASq0hyEMDXp01PZ4NOBmlrejH9beqcLgB5MCTK+sBphgoiu8NAo+Mw3AhZ0r1LLcSiF1eEHjVN7wqL+cui7X/QSvLJRsxHBdcYnB+3QPaCvxeOKHZ81QskW3Exh/OmgphqNQerM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/yiG2Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/yiG2Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5D9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777603653;
	bh=AyhM3I7N/O/dVumFXMIGunw2gusIH0pWMwiQ8WSoffY=;
	h=To:Subject:From:Date:From;
	b=I/yiG2TxyN4a+aMEsfDPtIzTwo8cgQjbjGZFZ9ks+WDc+33dpA+qOB0wSf69Chml3
	 ounxI9u8mYr9sjzqUid6GmCW3r5u5pvPeMOxFjlIp4hZQWjrdxqwODqG9KqQbFJ6Cu
	 AezGNEwu4uJ/Se1ny1FOQ2Gtk5RPZqJjm/ZV713MF33TyooqUUlm+bzKqr2VT/qF8H
	 EE1w1wB2a6C7IqHQndZjg1WQwgMpwddXLvUvaTtp43Y7HAQmE9xpinsnxxWVq030u9
	 kYZfMHFJzoMYXVIn0tLMdz7GL2xeNu65ZrxQ5zSuF0o6PtCHAs5RGKhlfVjhV5BhJq
	 LO+GFZKw9s3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89FCD13DA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760365368.25269.5316424011675140333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab76029228ffe1ea4f3fbc7be35c8f579533541d454d3a54e13ab3d7d10ae427
Date: Fri, 01 May 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777603653
