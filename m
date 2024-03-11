Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA67CF9CC
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710137296; cv=none; b=r44uUhbnmpjbiPdqdt84RGSihT83brblZsovyEMvYQJCnGcE2dxNbDXpo2KdoF3f3EWQSnxIodGuRbMiEueZXFysC945uSnoNrgwiKHXHn4giQca6EbBh0GXPSDoTrntHX6RJVYFvXXzJQ4/B3e9/9hcgezE+mWl3jBkhpp2vto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710137296; c=relaxed/simple;
	bh=ppeSlePj2xgdmFzKnLRQhHyDMngEqb/0skz6gayyz0E=;
	h=To:Subject:From:Message-Id:Date; b=Zzmh4vVGzyFZYD1eK/2FFd4wgctvk3yWWKgmLTPPUetM+9LX09crQlnrcYOu/gGvX+jDiqX9GQcufAveZ1P9oxK9MycNGJaLKeky802iTgV05xeI30RcQSvZsHf98mciNik+p+47u23g8LJc2jygWD3tG91RA45juwnheZcXCLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyzRNh8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyzRNh8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864EBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710137296;
	bh=ppeSlePj2xgdmFzKnLRQhHyDMngEqb/0skz6gayyz0E=;
	h=To:Subject:From:Date:From;
	b=nyzRNh8nlocfgeDCYOgPet2dYe6Faq8TgMLbExa/SzJLHDz2FnSf/7xvfb/DnN6vl
	 gxfHBouGT0bP6dUXGL9mOjAvEZe1Nl37uTuT6mLuM4DMUJOBwoN1vRHHSCUUx3UOnk
	 vMIiNEWS+AwwZFLQCKmGKUKmeARB2eweFlfLjI+uT3hqYcGE6/O8XhkHlXL2p3PMNu
	 rMkjfYlCH0bsEUdWcl0Kl4/YXUqCd29E0EXxXSVM/FQ8EhX7+MyPjw9HIEcxuwO1xO
	 Zc76KdPlJsB6mq0QT2W2APFrXJYWgt5p6WQEVAMDyTHcCOJiFwhrcMsQ/VL/dGM0Wn
	 5EDD74xlCzuzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672A0C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171013729637.28316.9019967078164004986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d182d13ac6e2a94b13384826e2ae5ed62f4f63d65ba98fc1fba6296e8310ca9d
Date: Mon, 11 Mar 2024 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710137296
