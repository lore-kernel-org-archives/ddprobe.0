Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE7133CEA9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769637234; cv=none; b=M7MWiCfF2PqwtTNqVk5UXhm2XhIIWJ2qokNKjn5iwkXHI6jyQ5VsCL+T1WzRx86D993D4xOmnRjLLwnQOkCqk7wa9pHEtdxfyX6mFCiHBjObw1z5Bxr80sA/iP5mqGb/aQVfzDi5qboFHt4tx3u3pJTGbWWW5nxP2UKaEcR6IZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769637234; c=relaxed/simple;
	bh=jKXPuuKNmXGkx7QaHcoPhavpJ4fQbLsug3ne1zaNwDc=;
	h=To:Subject:From:Message-Id:Date; b=QnDR9kWJ+jEotxBV4IM8v/4aHEf7D12IL7ewPCP7prSa/cgYcM2VfbllgOlitIBLfLVQxq0Ko2sleIvWUcnEARuP4f5AG+jM+ZKUAN2tyKLx4GnzY367phVGMyX/71yoHwAuDt2h3ZM1PbXYKZ3W/MzStptKwGS388oqCJLX4qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXTLSUv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXTLSUv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769637233;
	bh=jKXPuuKNmXGkx7QaHcoPhavpJ4fQbLsug3ne1zaNwDc=;
	h=To:Subject:From:Date:From;
	b=OXTLSUv8HrM76jIRsQV7kTI3isTtC3eaTFWTDhxgleD/pQ31BIWyXuRRN+Jyg4yIh
	 aPJwWOxEMkCtkoIbngSa3n28ALVelGPxU245HDoe1YQPFbzUHXXCEZC8JrQ1sW81Sb
	 lCtFrZZKY3/v+OmGcmIjM7v1j9LCRkY1FnX3AreSxsJyx3t0v3W5f/+DJysgWfWBlu
	 hYcGPUYt0VjVThJN96IHT3jQzJXBW8b6UH9SWDOglh/r0ohTcaE3bmPGKx9BFK0/OI
	 +DzgltEAUiyGVz8vhOSBnVSO9GTG+fCiYnfWVtAxD3fT/F2F/FlhHZ2kRY9JHCvjHA
	 zRZhwgjXNGNWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93612D46C04
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963723359.13004.7645629668090080878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf0ddfb34c69f610654f4d6fb363b48c17df32d28a2ad0a7fd9ff121018f30c
Date: Wed, 28 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769637233
