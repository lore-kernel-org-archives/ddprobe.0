Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2063C331EA9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785745834; cv=none; b=ITTw3R2YV+xJqAIdiLppfUaDaXheJAkIJuHjlMw6pBcgyUbk2MvT+wTeWkIU6+2zmR2vStHbAOHzri2FhS+1ToSouBcAB3gVACVZfsBmit2rn97nZMy/mbp/QfLH091bLfHkVlQ18bsXF5NDzAvdS9P6RNVcBGjrOyXksqn0x5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785745834; c=relaxed/simple;
	bh=ZmFqA7TwOJXXRSQ+yIdrpLKJKGCTUXX1qR724P6jviE=;
	h=To:Subject:From:Message-Id:Date; b=SPrse/QegrcObKOZ+DEwKA8VmFvuPLff/QzKESHjNfKyGKjxz1Oc0chOkQ/nvY8f9I/wDBGeNJAxkPcblc/K+loi9gd1CRAjFVgIFCdQZ2kaFm77eRqtiXBoEXybpLkRmFOSqqzY/gKell1XVoG15Z+RiVy7GBFLijonNIGklRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJrag4qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJrag4qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C852CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785745833;
	bh=ZmFqA7TwOJXXRSQ+yIdrpLKJKGCTUXX1qR724P6jviE=;
	h=To:Subject:From:Date:From;
	b=SJrag4qoQMG4CDzOlZNjsFHxVzHZm4553/HI8hzwllJmdCRwyUJc9XPYcBaFGzhDZ
	 +tV13tmQjD+tSFzErghW0ozI7u8X5TTSrrR5rdGtqgnMCsSiV+aqqTu+daAREHDNwk
	 rtqTUql6VczTiRFET5jQjc9tTMHdbsphghirdEzf6oArF9ZvLSHW1PHcW4HoppkQS+
	 +nip2PT+awBJC60Pao3sUzhMalYtKo4/TIhJoO4odRj5XMGxZmFVWx9R5z/rTaQaWi
	 M6wIr38J0i0Nzf6aJeEvh36pU4O/uDPLjAPhqHfEVCGaBfvmJaAtNzPsrI94/Nd90O
	 4oQS74wEKLkhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB9CC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574583369.30765.10303741251047914314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef48f3229214f37e486d7f896aec07bef6331a3df4fb560611bc1c976744715
Date: Mon, 03 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785745833
