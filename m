Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675F72F8E98
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780150414; cv=none; b=HtfY4S1KeqBTutMT1v18JHxCV5Xk3kk+hiiFbs8DldKK0iKk4telMklfq4XWZ0wQEVEEbI6ZeYlMPwa+EgL6POESLgnH+8/qALdLaYJZg2eOPmYb5XlER+qg74cq86ZQ0R3xazM20a38+vbndfkc/xaBjJw9j8AMhynyZlHjud0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780150414; c=relaxed/simple;
	bh=KhNi6eCHJ9WAfAauIFa/REE+uQILN/F08H8ZONXhqlY=;
	h=To:Subject:From:Message-Id:Date; b=Z7ZaUcBEyeL1bO0MNxIUrJzCAYMpRv9+CO7Mif7R0oNIOogfU/9VJ4/Z8DF9vnzM2MxsaJdOIBZbVNCejxmJ3cp9sZJj2ftOTPik/7ON8XAyCbg+HZaXopWp4/bAFNpa7W/WAdOSvXsHRKN7MfpvW9fdCGxW5uM74jJ77EfP76g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4xX5bv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4xX5bv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64DEC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780150413;
	bh=KhNi6eCHJ9WAfAauIFa/REE+uQILN/F08H8ZONXhqlY=;
	h=To:Subject:From:Date:From;
	b=V4xX5bv8obXLVQYyh3rsS1Q7Udzc0CJjHAoZ55hpKxVzZ2MqcE8tan2UVTjV7ePsr
	 NEqw1qmx/ynCKyaPf4pReyi65iGr/xDafSxdKTDjJ/vw9uJTr1Ljig6eSGu7J9e1mb
	 i2WQ81LHkLHqRCsyFWritCGr0euEyRViCPa6wnm8fIknYtNwKhQmFwBoQI1wfHqVmb
	 rR/XHcV0PJgG/t8/7D5OIzc1s371geTrFNYoWUvyb9YJph/BY8tHeUK1Bt9iKsPmu8
	 qR4WkMbkCsHSS7AiH7TW5OyMcwMsDlC1971v7PdyWXQRC/hHBTzZpEElVxvszxT9wy
	 jRW6tc4aVVvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB159CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015041369.31328.10864575261198326230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4774fd0b20dee2f0d1dda26ae17a01e60a5b68c6ac81ee3c9b5480f6bd600310
Date: Sat, 30 May 2026 14:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780150413
