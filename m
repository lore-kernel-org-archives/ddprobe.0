Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D902D59E8
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788322234; cv=none; b=mA5TSxjzdIR1hdIhmGMUaS8lrwzbyI00iKZe0RLIeSelKRdPUl3Iggi4MCwt307hkSnF6P38CaPLNDWCIOeoy21IZmg2QHOKFZGrTDTubKTZSJYqVEWW2EEYtV9qLFrC2+XF0ku5JHXL/LfahGFp2mU0nPdKsAcbDb54SlUUPDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788322234; c=relaxed/simple;
	bh=9Nginq3/xNkoOS2r+jy276oQhIDMDY546w3xsDd1YYQ=;
	h=To:Subject:From:Message-Id:Date; b=fExGqQxmsH7Mjl2xSb592eu2PwyK+23hi7JRbtKSj7e/qaZ17Ax9zCWs5niXdsRUWQFF4XxtDqTFAk6j/kvcXD3mBuyox/1PwnKG1wZk3Spg7DySsqjfaKGvrROOZsPmS9KsFUWtY/kUqg/YZ5WqltMU7ldEBvgdG6OaowfMBwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFeZmL6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFeZmL6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3071C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788322233;
	bh=9Nginq3/xNkoOS2r+jy276oQhIDMDY546w3xsDd1YYQ=;
	h=To:Subject:From:Date:From;
	b=kFeZmL6Qofd5AAJ4NA8k7zrsff0vZPu45DOJ7O0R7zUNkWHn7GYe1Q5cKrDPD3rs5
	 +iN3Pb0+bfPS7h7RX402U6v2KmR6Ef5XthUsDSP5X8Xc4Inhk+QWhbFT4nmChzKkl1
	 +5DRkiyggmjqq1WNzp5cqjvDVjHMIEICTBi4S47/tabvuKy5GaY3xCs/9pnViTeD3x
	 Y9lCy36ikgK/Wpsupd7exnngypZ1BORoZDXSsGsJhoM5ixZaRo9R6lGr4zpQPu5suL
	 7gxDo1ng2KkUERsPh1qz8A0foJxXXCEKs6qk/Kvdkjlr5L0Bjk+dc+Snh1JGcWKwWI
	 MfpBWOQfOotmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCBAC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832223368.32615.1249242859589537185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daaa6a0e50170b47afca46959f10a5268d7c74f4f865b5fdc499cd24f4ab67b2
Date: Wed, 02 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788322233
