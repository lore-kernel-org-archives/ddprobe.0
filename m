Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86019CC05
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729598155; cv=none; b=ZKUG2AUHXng09SpfK4GDT7gIBJ5NJjke2dCDEZkK5jmMmf/zHKYOxq5t+QfmO81g2D09dwebgyZ/lbrndylVmUfjsgxWz/qD01kFMSjRpOgouPl0lhCaXwQc97XvK/smumPhPTz31cEX45GUD/0Qn55DJxF9gm1anFl38RR/bDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729598155; c=relaxed/simple;
	bh=V1Qkigxzf0JESlrkN8bHQx8eKU9qQbfsBgRCCZDrnkc=;
	h=To:Subject:From:Message-Id:Date; b=b0eHEk7+SAfia41BZgQ/CFpnrXyt7Oant9SdMVE+2VR9OXRgGSJhvvgmNJ6Ds7zkGBmu0Q06/w5SXrcSoKVvklW2Tp6ipSkc+GgrQrtiZ3zhhxXRp/viRa+19w/HaHbDFhyK3U7J7Y4otfNS2byh1ncMoo0wMgAftM+Fjuq8gA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP8b+o07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP8b+o07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60B7C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729598154;
	bh=V1Qkigxzf0JESlrkN8bHQx8eKU9qQbfsBgRCCZDrnkc=;
	h=To:Subject:From:Date:From;
	b=SP8b+o07mmSCB8KYw2cWSkMvlj8YG378WDyf478boX1IcH7RGilAxiAxxgOCFLSNu
	 a2b6kT8xTI7YUc+xWY86oGHvKljA/RP2fvu1fzMx25xrnjkFMh+C0iSYgqK0julKru
	 D42cyuficm2AomjS946NrOxn6Ssq10cv7Tn/Vjlah40czNcB6jL2cRCKq6IT9bhtgg
	 PYg5zgvdD+M8JYrVVcFRnq1pbuPlbPdUfgp+sah1Ued6gVpaj2isk4nKbsT/RzIdvz
	 NUrU4XtYLGGKRK+zuc6TYI3isfm8o+5kGpCathSnLwGBCzLA3ilbzrnn44zU+JlTPu
	 v/EvyabJMZ66Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A596FD3C935
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172959815365.23549.2652517081626471901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9da4cc9bd08f69f2d6903e27f4a460b7cdc4a6e702d238ad4f66a21d5e9ddae
Date: Tue, 22 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729598153
