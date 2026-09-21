Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AFE3B8950
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789987834; cv=none; b=rEPATRQjJIxfS1hAVIFsUs4UxWe/1BIpzV9ymi3CN4yelRdci3byIbjbQoRIEFtKvalvx5Un0rwrwoNFrlqehZ7/M2dhKswRhl63I+4r8JhhKIbKdy22oulq7luOPB/emqK7Rl47adsUYql33DaylfaqO0czgkFZ0NNsgmQNOeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789987834; c=relaxed/simple;
	bh=TlkRhU/swfff2wst6ywh9ipQMzzbIwVNKZ1kguseJ04=;
	h=To:Subject:From:Message-Id:Date; b=aYDIetY97aaTngDUFYdqm0cObj2iVv+dXBJ2QOz9Sat1bxp/mZmkYqopVCb764MZ52x+wYbGq4HJZuykUSO1OxLqoeJ+bhFiZCA9w0Srl9ZGXbdU/z7vQCdlZQLcKQ3VlvXguZx6c/w2jegjcOwkwP66JBNkJbDJnmZ7HwDggkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHgb4dii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHgb4dii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D108AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789987833;
	bh=TlkRhU/swfff2wst6ywh9ipQMzzbIwVNKZ1kguseJ04=;
	h=To:Subject:From:Date:From;
	b=vHgb4diiLqDxjCmeGbaWhcCkojN1Hpazvbn+Bs/G6fVD2HzOvCrO7TJY8qmcwuJET
	 1u/qll4KyYm9zJDC84dZILNAQx5UZXjaCA1Fdgwl8ATQiQXRoGPzvGJFt+oCTY03ua
	 AZFBRhHRx53Mv9oEgn7EZ/1h02KCis2p0qFnOsA7HxdLGZO5XkFVxKmegiuUgvEzlv
	 k/SXrKgvTUBDW57Jg7bTznkkTrLR9mbqeBpXUJSZ/S/WUDP7sGKK+pfEWa61JOh1Eo
	 Yn9H2CTbh9k02x++pcrti4msUqFrIs9tD5l6qTNFjXgvCf13hafYVZn5+6BztCdpXn
	 5fj9WpLR2Me9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C0C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998783370.12183.13260204366922506561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b3c717c5b83ed6c07b62d6f1d38c1ea5ea01146bba1964a827e998af3d7fc5
Date: Mon, 21 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789987833
