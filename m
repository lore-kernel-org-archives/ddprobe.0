Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF061FBEB9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750510194; cv=none; b=NXAhzy3NDSwRRcZJ0YSgXnV5gmA/P5MPGlsmGBhhGUnsdJdtCLrjs4BNDdzr2mXSx7bPbOuKoQsrxJ3BRkWJ4x1/yQ/kFXvGEySHAGSALFQlJ7HA3nNbxaZ5SU0AgRdSjKKatmmcBcxc2YzGo84GuRLriPiGPtQoBIVPOfQjTR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750510194; c=relaxed/simple;
	bh=Hp0eCRtSb+rSxUiOexUETIJXM5hSji0v2VGRt1w+g7Q=;
	h=To:Subject:From:Message-Id:Date; b=uZER7IfvQmr8yNDWvI6BwuJyIqyqXTurPdT5Et9nYU0uDWF9SmSweg6Gv4BYzAEXFj5HWPFEkrhKNcvq2eLHgIY7MAUSL+MeWdWINwh0qqEjG3WudADSqNGaQ+Z8khoSmY+Wgu5XhTdM6qeZUKvrUm4lZAB0IgmmSarnIuesg88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng4NaF1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng4NaF1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750510193;
	bh=Hp0eCRtSb+rSxUiOexUETIJXM5hSji0v2VGRt1w+g7Q=;
	h=To:Subject:From:Date:From;
	b=Ng4NaF1lZPZ1V4oi6GbxEDNCX+VEPJ9MkAoeqD34Pbi5q+SVdA0J9NvP3XuwDYuTj
	 gI/K5g5ej2rXyG8zo0IZYrU26LJCo1AxcfWtx0atj4p8TUR+oYPct25BARe7L0LvaU
	 U4pie0K3CPlSu9tn+4z89XHpo5ibFsFSwFwHGU6TAMXvmyh+cE/KtU/EhLiLpJo0Ng
	 WObGEgs00LXK03XC2nbHcMOAl3YSazTNkC6iXwWInc1GsaQvfqEyO4JgaJhj7oHsQ8
	 YfPp6qZqpmeTGnXVEX0rK6Hbb3ghmhnSXsODpin/neZtW/CZH+xTtezezysu5EL9bt
	 FB2pAgxCzqQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E21C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051019357.29224.2382167637908081189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70efdc6040897bea47ee82655a91c9fb1d974a1537a61916f93be94f871f5ce
Date: Sat, 21 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750510193
