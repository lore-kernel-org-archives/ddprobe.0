Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36624A07C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769464434; cv=none; b=WxKwufw3ZFyI3WzR9x0GcQ4MBNQFDkjxOO+IN7m9grLBu0xMYpqGvdPDq3FCvauUHC+JoIeGkTiJqiPRD1ujsT2OIchh75AU4qhkTdqd2dvxLhC8zxpXLNG+XUl2LsQLHG8S554YF7ZU2Vagd68S3OofHM4cf6ST0aiUFNUa/y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769464434; c=relaxed/simple;
	bh=lEvI6H0MOQJMYXW35JvZ9g/IuebX93Au36HMv0LZsQM=;
	h=To:Subject:From:Message-Id:Date; b=mjxdnGOMAwcKpBOX8+dfIs6XsAwRb4BevgkszhkQfDycotaDtuIofFMn1CBeD2UudnlEsH7mKi4viZvybqkb9iK9KCdnKxEKtzVPqOeFIpG5B2rU4o4BLScrkTTimXwpAGyHh0FeyB91/hyo5YEwLXtAtqv0J83BbZ90l9Mtl5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAyq92tF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAyq92tF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D0FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769464433;
	bh=lEvI6H0MOQJMYXW35JvZ9g/IuebX93Au36HMv0LZsQM=;
	h=To:Subject:From:Date:From;
	b=HAyq92tFz6iSB6XrnwLmtbw4dGUIXv8pCGg/Xnt2fXc9/FW9ZRjIU9SD34ld41O/K
	 KvKLzDfcFXoCGOXPDcl9FytnmbN5lu3guEgb1y0/KY5wwAk+qLggh+96VYdMW1a8Yt
	 RRxv2ZngCsL7+NV1AmHkGwszZ44VyKKVwOmqzpaCNEaVNKhsaHCUoW8MIy8x444xVw
	 KHnttb+6dt1EApvh0W7JNrJFETkd2Kl5xCHM0A8A+yPNl0L5FLU/E65ib9SfnW/cO6
	 fy9Flnf/sSq/rpEcdgNUJV9vnRYbb4Bh0wdyokew1fcaErNuMPDNs42r9d1FPu6gr9
	 i7fUMnOreZuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93499D1951B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946443358.29568.9742551326775274325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800a7fffaddfed26946be98ab84cfb1ccd144ad69516d153d697094d191bfc00
Date: Mon, 26 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769464433
