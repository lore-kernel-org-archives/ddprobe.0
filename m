Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570D8381EB2
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788372034; cv=none; b=mDGz0ppwN/Px2RQ4IHKAk9N/R6dp0CP9Kf+7jecJC0Na4goU34j+ow2Xp1F7qW53VZIe7DTo3puuwuawNgLM2sYOEY6iXxcSLEe1En23gNvgLNo3w5fF8jd4ue7nIzMeIRV9/YKZipDL4hVBMjZyMAMqXmHlidbAfbi65jJ2pjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788372034; c=relaxed/simple;
	bh=VnMVWPOcAS8goVW5zytQHHZJ1EFFV2y7XYoVcwVMp24=;
	h=To:Subject:From:Message-Id:Date; b=rrOKDbc8hOiDFybga2zC58DYijIQeUl2exPcoLRSCayLTY+cNmQfCV9MWr4fI24sE+01ADyWjGGWCIMLYj2hyXEfnRC/7glDvQTHCcjlVY4W5kCOjBmkUogVFQenLMobVtcy4Xn4hbpCpYkNYwQJViQQinfXkPGpkzEwv1dzFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGTkeCkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGTkeCkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32FFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788372033;
	bh=VnMVWPOcAS8goVW5zytQHHZJ1EFFV2y7XYoVcwVMp24=;
	h=To:Subject:From:Date:From;
	b=XGTkeCkNHs3RK3x1KmeG8JljEJlGHOhOr6021PE7yZyG5aAdvDH7ZhuYfBOprPpr+
	 etRWSm/kq7hqTVQAQlFXyNCsw10wL9hwSXXC1K2Uet6sBmd/Z5wi5oKtD6xKxNS9Fs
	 QUwl89Fg1mbc0E2Q8PTYxJyFLrR8hifoBi+AgDg81cwpX05of2FBHEw94R1NQVtOrh
	 XIDl8b+A7c5C1je6ucnn5WZFLqw4dcy/hpr0qyIzWsVsN/yxWptRin717sspoGTlYn
	 uAGJuWL+UjpzH6sWZIN0TxgIriPsVMzO1qD34FK+VWY12Y7uam4vZod0kqzsEofMjP
	 +ntS+cKWgMs7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C72C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837203368.6624.5673453205532112953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b5123f4f6c9c23d3cb03ab70c70bb11a5de2635e7e0d4681b4876690b48a6b
Date: Wed, 02 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788372033
