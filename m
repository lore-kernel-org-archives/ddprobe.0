Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481762AE68
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748160594; cv=none; b=F6jUvbR3KJuqiB6NhqGmt1NrWiVcV2pBogYUnR6qnUCUrCezOECKAxa1Cc+fOqJNGZwVU5tgg55Dvg5TxhjGYySHmSw1E8nix6et6PM0d73Ou6+qxYb3tdWOZvpStI2vl3svFib3o67TPsHxTTlVb5mlDNGUF3yoghQFjtSNaHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748160594; c=relaxed/simple;
	bh=PZarM8dEFHXi+K4je3l17PH3d9VGZhttoUixlqLU36w=;
	h=To:Subject:From:Message-Id:Date; b=f9abC94BEQuGVAQorq+V5brdKZsmbPaSwJvcKmjvm5iFEWm9y9M6R6aRsYGard7l9fI+1RpUoteDE3hWNGePPaPuT207Zv0aEdEq2bmTStVCrZADH6KPmsY2DPs8klsW8Nw5PfhBVYqjrGu150N2AZ6AH0atB/t03DvkFpPnd9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQeI1jsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQeI1jsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8168C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748160593;
	bh=PZarM8dEFHXi+K4je3l17PH3d9VGZhttoUixlqLU36w=;
	h=To:Subject:From:Date:From;
	b=sQeI1jscmuz1YtdjjeDYuxzz/lv1W7MRf3Kr/M5m/VRjZzn/6yequTnI+CLFQKQ/H
	 5WMnG73wFwNiD6HI9y7F55aynfXw6ixGIbGx+jNA2W/3KyIzSz2MuzrxB599xhXBwN
	 G2Qd4s1IeU1LXcW+SuMufRkQFRrbGe8Nwra9wgd3QFkexNNBGeqLbVHd5FPmh40wYO
	 8imCqtXxswF3CS5z+JMATYrPyiOSYxxdiOd3sGpXgSHG9NNYF/EPLGdN2t37/uusXo
	 UuPUJfe2vAEuYiu1BRvbyRDsroqknWJvJrWx0XO/MY1ptngqGIKixHeh9BsqtBpfGT
	 QWXubZDkL2Uhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318BC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816059358.8764.9055110925785885544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9f8ab7354e9828c2630497831927b6dd3c84cf69686a632937b613c16bf70a
Date: Sun, 25 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748160593
