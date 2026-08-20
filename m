Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF0843B4AE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787226634; cv=none; b=qCrYlQDiOuWsExsY18Fb5rALso9+fifVL1MdaIkQzW818h1h32/UAKX+tUkGe/6zGf+3omxW1pjo6faoThHsSO2WiP3Prsx1AUJDppWCP5HCTd3RE6hzT/RTYt5NziCZRy1SDxFcRkt17Cubxad9vbpWdkBmcbOxwt8kgSQj0AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787226634; c=relaxed/simple;
	bh=ImlDmMkZ8+pmGP3wf7qnXB/WTTM+AuuEDLv5z+TeJjY=;
	h=To:Subject:From:Message-Id:Date; b=gobmemFm4+GI5+d1R/XoIBDa0DALJCZOlg59qTrsMtShTH8l7G8lpSdDpvH/y/0cC1kYJr02br5yNuyNxwbRiBnF9utFiNKmtWyhGiAHKsT6fZzNYnpjR9jaH+xw/B+P9uTkRfsp/TBbY5Mwwbb7zr7AMZZGfjpLA+HmB6PSf+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hdk6Il72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hdk6Il72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D872AC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787226633;
	bh=ImlDmMkZ8+pmGP3wf7qnXB/WTTM+AuuEDLv5z+TeJjY=;
	h=To:Subject:From:Date:From;
	b=Hdk6Il72noPc2318WPjNyR0WV3Y7ljE++DucdP/QFiilavfFZQSw17cPOJQDPSB94
	 CpzY7zDTCnsRYPGofIvDfbezlOzA13ybjdZzEUyzr9+JyfflZclxorbIj/t7hPBM8E
	 m45DuJgqo5oMOn7LV8+rMp9J1/ZVzNlHQkUcTqRjq4hxXu4SnsohLe4Va20ckae/cV
	 MSzOzmQZQSNNQ4d3g2WDjnmiV5jsLc71+cnSQUtuppNckruWJYjYQWFQpzjfk6esCc
	 GZntidlj+LVexv9Q6sVGUQaCTiqen1RycDLuz0p8KyJihvl30Lfz6Y8nKx2IpRBSVG
	 WNyjWJ/gCCsdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B547AC5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722663372.23098.13278005631117203844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbb619a094f8e6f9b3ed32001181a7caaca07238b83d85fa429994b781f6804
Date: Thu, 20 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787226633
