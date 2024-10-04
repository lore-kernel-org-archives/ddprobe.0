Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5D224D1
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728040554; cv=none; b=LkHrinodFMMHvwRMM1T46hB6pb5eytez7FeytO0SwZxaNbll/UgY1SGzQbjkHWSm1C5Q70LWbS+HkDU0R21+wHEKLwpac2eVD8+baA8WsMYcoNuoNQ01h42ziEOALEwrDcTaw9QOyUMzi19Pm6QvymFFInswzC6OwDvkkIldh9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728040554; c=relaxed/simple;
	bh=j6kVL5vPesjgWL962mZUr3/I8L4Eh0j6AnlZFEXqK14=;
	h=To:Subject:From:Message-Id:Date; b=N6hAQe0yY1Luc9yMBIVqzJz+NVgbazr/BdQoGMCWusMsJ6sU/2KfUMxQVwc58fuGOD3yymo5M2SLNzOLpWtTpM4ke/0+JaW8t1fmQY2jXsYSML+ayA/K/w7Q4nPl84NXlrYAUbSXIuN4tWmnOWg3OXYAYxDyC0oKkBx2AdxnFyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBr1WNvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBr1WNvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23E8C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728040553;
	bh=j6kVL5vPesjgWL962mZUr3/I8L4Eh0j6AnlZFEXqK14=;
	h=To:Subject:From:Date:From;
	b=CBr1WNvWySn8N361wIaMyj8tCgSb9ySDLvzKKqBcwmtPUljbSvtPXGYRXM9L3GVQz
	 q0yWZmFOqMgWE12v4X+3y13TBQ6vo+wF6qknwlMaQrpphGBkH665fhqEXoenPn2DpQ
	 3K/iHE95ojHNP2X49x1IoQKkcrxv/srnK97Q3femzdPl4VuyqPTwb/clyatalESqjz
	 /vh5o/7WoEH2k+39NOzd+1vbz92EmWPM5BmD7cOKJPRV+xoQFpAO5+bXCbfTDpE1Wj
	 VQh6KLPyHQT8CPi91kP5wcbN1LuWoV316dSztxkMaUcMlL9APEV4IqcfOviRJUxwmp
	 +FD5o+yj5ub4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28A8CFA76A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804055365.25468.6717896149183420024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252d6b93cb08f9acbfb44640ccfd5d69323111fe78d19e5dcfaed93789c7fc0b
Date: Fri, 04 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728040553
