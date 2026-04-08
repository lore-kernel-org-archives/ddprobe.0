Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43A37AA98
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775662534; cv=none; b=VOD0XlvRozQm3Nu9xv8k0WNOANaDO96fsn9gzJes2GO6nPQHscpzYwRTJkcYrKQMJnEXJLBEXsD69Hfupq7Z9PHZbU24r01pkLNoJd6O/aMWm2FyJZRpDrHRs2e+f3Rcy2XAgscI4M9Ejj9xF2k7i/nptrsHQ/kneDWXVpWXLNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775662534; c=relaxed/simple;
	bh=MDA54f8qoQeFYUMxiZuHQsivZS0AglLaabs30aqawcQ=;
	h=To:Subject:From:Message-Id:Date; b=Nz+9rWWbWBkyP22v38wX2k39x/KzN0IM3BuaFkaoRK0Bcet6VQpRMnRjz7qsFHxcDfB1IguggG8kx8ICxt4rDQiENVUJmiwgPUP2E9AGpTKj08ono34yeL60YoQwrnUFDc5ifgiopsKLSYuJ6wiih/PLsmasOr3WcSahpBkzYxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNY0+4Ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNY0+4Ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC608C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775662533;
	bh=MDA54f8qoQeFYUMxiZuHQsivZS0AglLaabs30aqawcQ=;
	h=To:Subject:From:Date:From;
	b=DNY0+4IgZOKrDNE35CUowmbfXGB8HRhf6qtBpOZ1knZjSdHqt3deiFBrRyI4NdrHq
	 pXHed4N82X/TqYU06sSUHMH0allplzJNrhuSzdVbOn0UdBda1+X4IZw8ZOCwVv1NgT
	 EDK7p38tNOnfH7QltwWdKcRJVEuLYCNdOeiKTDKqQRpAc6jPYF1UFLBuJtsFLRppWA
	 udnxfMrPvr78HhXA5CbLXLkcpgtMRhgKKg7NH9Q/4x3f79/10pCNkUU6S9Jio1sKyl
	 q9mx0YJ2Bwbh3TZcfG6hAqOufCkpy9RindqFJox2eOHZmy15zvsEiQnVsMJLr6n1fj
	 fmtIPFxvZn+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F110F994F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566253368.27935.4379523068076872691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73692a98ac2770fc717ef7db1be63de8cb5eded14f6efb00f0c4c4c24661c4e4
Date: Wed, 08 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775662533
