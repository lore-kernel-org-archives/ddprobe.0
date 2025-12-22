Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3ED2D46BB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408634; cv=none; b=cewyIN00Bk+d7hz4C3nMc2vcY3zEgN02/iOPVIxvTj8jHeXvZbJ2xv2FPr1ub+GGMXdwuWV4a8H144RQGiDE+9wXqDqO1UaSDdu0UJ5CFQjUDm8siiwOigJlqGlzbo6/fOvlHyN52wAc61jjIswW0K4bGNAHhUd6R91vZ7/3k90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408634; c=relaxed/simple;
	bh=wkJi8Z23jxGMn9d75lEH//XwGEoti04m5vcr4Syq3oM=;
	h=To:Subject:From:Message-Id:Date; b=Ea/nOND1drgapdkTmsA9lnLwsErwvS2JdXvJDrqc5SiSfXz/clOXncdXvG/TgV7RlVvT7h4XF2GsnQqBydpwUn/S7WvaxNv1nTNXXd2SjkikTm7braTf4EnUz5XUA0Vuj+TyE8/cmXozx8l9/95M35LCkiMzr/AHb7ECINHfJNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW3pXK4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW3pXK4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1412C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766408633;
	bh=wkJi8Z23jxGMn9d75lEH//XwGEoti04m5vcr4Syq3oM=;
	h=To:Subject:From:Date:From;
	b=CW3pXK4TOphUrHGbBOHL6OJmFCF6nWKoVsxJSLgeFqzpEspw7xG6pZ+AEsNmAajj4
	 Ub0LvyDDtzAVHWYeSJDOJiOWVP1ewPWucvJ5n4UvJsxCwNTn0bTATY1+uw62uY4cf8
	 UnmhijYyXKT3qjtRCQB/FbFG30+hlEIIZ00ZQv1GEz4jPyG8YBG93qpIO2NuxDpx4f
	 4c+STAAdqaC6KcJC2HITgUYxx7fY4aOYydGe5xIVOxVt/cC3F2ibeH+6lOeQCres5T
	 VVPyCA2vgUzMoISq1RhpswenET1NGZsq0zZpoUj5Xok58QtnZ6lMJR2ZfdOoH6l0Aq
	 NwQaYIf2iQyeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DBE674AA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640863358.13847.4559565160627897789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 553f6d2f922385a213a77d827b0e0de3b4cdcf74314f799901414e033172cdab
Date: Mon, 22 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766408633
