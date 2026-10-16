Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE00C43CE7E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792136434; cv=none; b=XHOy5V+rQYFe1NmXj5i3YWQrd+YbONDbhykYI9lumSeu4kF2oH/bdnT3LK7lhap/oPhRfweF9Yoi94GT8npnSw5z1XmlP00twVkP3V6y97GYD9R/zaEmsSbPhYjbPpDdetVG8vTO+BLJOKr6UH7e6ii0uIRstOfB3sxs8MMUN4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792136434; c=relaxed/simple;
	bh=oI0k33q6Cy/x9X44SXtB0OX13Pr2t1OqDYZie2EskUE=;
	h=To:Subject:From:Message-Id:Date; b=KWOsRT2Jsx33fqPDyzbCMNSdsvQsUGiU6xrVL/gz93EE7Ga+OGzgqwuIXHK0ROG1bTBCJIME3cx5ewmxmZJKtfzSkm621R8GdmGG9Dji8knqpyNdJlzr69jbX26R1YAlC+q+yAPqhizX7V7S+vBtDEWYb3ufxaTFGe91NPIgZhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOB4pSAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOB4pSAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F15C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792136433;
	bh=oI0k33q6Cy/x9X44SXtB0OX13Pr2t1OqDYZie2EskUE=;
	h=To:Subject:From:Date:From;
	b=jOB4pSAV2Qh9GdyrM4TaVTTDQ4h8IFGDWJI8LiI9X4ACKbNvJbUdDIcbzrW8KvB1G
	 GH5R0UvsZNy0IbG1vYGe/IW4AVPvEIMBrd0weFWuis9QGSraXwPrgL8uhPbljABl82
	 JYsxF2l6TJvf5sSTHuzo1+eJ3wd6RRk7q51gKGKzM0bLE1KPUqpi6xpL3RpLNzlHAy
	 lvGUpTCPGGvoBRSQUWoUm/MD0QjSuqY955Qt5Dy+A46XeFnYyNNsBYou2Gkr6BldSx
	 VPnLnDn9X9u0p6GKX8O9m7RmUiAyS6p1Hn9BgyyTmVw5I7dlMgO4TePYBjlujisVOZ
	 wJHymzdLUIf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EC7CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179213643374.2341.12913483441367277503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dd318c68f330a8acc29bdd649c5036cadcef0fbfbc2f22bdfc2dab02241a03
Date: Fri, 16 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792136433
