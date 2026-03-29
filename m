Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C9881732
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774792494; cv=none; b=WIRHevXJkVqb7V6YUCecYXgxGMdfwP6U9Yeg7Si1I+EKflezaxbBGImBiLFUBC1MaF25MlxCF3hY4iSpGFTLSQg4YIdkZP/k93zyq3WysACEJePMdrU/zCIE0IUaXXOmLeEhuoRc38TBZ/oFBSvqXd6yOWhdqKXydoTnu5RRkRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774792494; c=relaxed/simple;
	bh=kn6idf1+Z8Gk+9qppZlxnRYkw3Lu0DslVbsMzZ4A3F0=;
	h=To:Subject:From:Message-Id:Date; b=bs+P/f8WVk1QFouZ6JVxiC0oMZasGGaT4fI1sVya2/JGS8DJSsc4UqGBPQsuM9jF5oAAoRkiiuLvu+41KC9NsW+oyjbesD5jkpnzOifoldm7TmSwPz0jzH3UGEySKStSGjqva/NfDH+HGefs5ww0nMhy0+BGrCsqTsG+FqIWQwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLL54eDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLL54eDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7070C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774792493;
	bh=kn6idf1+Z8Gk+9qppZlxnRYkw3Lu0DslVbsMzZ4A3F0=;
	h=To:Subject:From:Date:From;
	b=DLL54eDw3uwdmuoE5ktTUleUEM0AvRWPkK63WFw5CnPez/bnsLoL5SN7HM793htPW
	 TgNdqJiQuTafOKDwt5w03cxS5V/E4a/lfPoqlTAwsSj0WV2xBCjeyEcSBnpdsbW30A
	 KT+RkJ8rMErbKEjQOZOosTY0Zjf8XLXiYz3wEnJI25TcrkZl0txRDoa3ZgcGlJ3Pkj
	 LwCApHQ95lC0ehhD/JEJvY9se0a8bJljBR73ir6ertua9q1c//3gouirabDdt/jl7w
	 kJRC46zgc3jSUFmNGy3ZKwtIdEa3bZ2OKB0rg7P9hgW+ZwmIaSxFdN3jS9T/Qfw+UH
	 sZ/pmXbzGRmBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9764CF3D608
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479249358.28778.12653926544967248368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dc825923e93ed88cefe3b1e0bdbcb6d7a7d8cb843cea50dfeb238ef8b661dd
Date: Sun, 29 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774792493
