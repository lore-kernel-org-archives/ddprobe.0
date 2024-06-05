Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F05913AA2F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717627643; cv=none; b=sYZVZsCcoh13kniWSIUtl/Ua8M9tgmf5VdKbxNmYeiDPwBUZHpxd0mXTNmqEGeMhuDT3YMYweSZm17ZMTciQ+rm9dUGryLB8mIpgM+IzuG9wYZp+H2yTgBFa1Z5S1VAe2VDa3aqVvK2CHtqpN3UQEPyl0wGril+397gQDlC+5b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717627643; c=relaxed/simple;
	bh=XTLOV9VROFbS7YHw5Wu5+Dfw/+t/920NBFk83EbHXqM=;
	h=To:Subject:From:Message-Id:Date; b=UBeSisPCV+lq5SQpmPLqwBbjrIctcZ7NUjI9QGUIFMv8FxWhmaYRVErb2KIpv4GSxGxh9GMOIX8eoXbTx8AE+S1d4XQSlrrrjDtNnQX6TCKsQiVKlbyB9PHr4rTNNsD1vpuAwOr5W8ch7jqGt6hitNnWnueYBMXUq64RJATqKh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgNDAFHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgNDAFHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03C7C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717627642;
	bh=XTLOV9VROFbS7YHw5Wu5+Dfw/+t/920NBFk83EbHXqM=;
	h=To:Subject:From:Date:From;
	b=DgNDAFHW72hwewJya1I6umlg+rHZ6aNhm7r+viKwB4BNBWHs8nsI1LNfzwtsaT4z4
	 FuAgrTDnBv+WTJuqPsAVczgYbmLuJOTwWmef70VQR2o9ajtUW8erAf1GPZDLbhpMGT
	 en1adl9CwgBYLoowEPYSPCex/D4+x3Kf7JNnMpX//DHDcRc4X0kekXg8Mmy1N2bac0
	 yYIBlB04wbOrvHn25Z5dr3Q/w5RDUxek6qH89kvfFkcxT+IqVeia3v7joAt3DEqgXq
	 5jgVg1u+zqcYUEKQs81NX6El0zYTY9v17k0g1wHfbclK18z323vwYf4MKS/nWFBIHq
	 5UC/iR1oEooSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFEAC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762764278.28150.16751787093206667028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591e80b570df9046966504eb7d293d5c1da131d22f89e1aac3283f0aa88eaf81
Date: Wed, 05 Jun 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717627642
