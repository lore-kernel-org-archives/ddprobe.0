Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD8622339
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747646395; cv=none; b=ALmBfALr42RBBt/llhwQnheD0vjQNyAQ2a8q0D/o1SQL5U39DZWYOPtsI2NxF76r9tbEzhwgiSTgNfamzwLwFhJZ55TrtT5AgEq1NAPEONqiGZxnslvqNPHaqFf/rusR+7DJc+1IAV60m9ZiGbi317AZatN4KXBdze4IUujKvrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747646395; c=relaxed/simple;
	bh=7mLQ/Qa/8lidCfE2vtMD7VqqOLtc06nZ5KhzZJS2Aok=;
	h=To:Subject:From:Message-Id:Date; b=Tl7GeaWy4qN+zpJ0WWl+F3qotFcYm/iYUpsHji+A9BivrISIo88ApUWzlXcXXh2YMAlG72eymeqZhr6JXoDsmpaQh/ogTvpTvNXlLgNBv1URdOjfRdMNO53ykwjND6Ds/MEQYskO1bw15zV85q48GNOylcCO8/kh67eENfHQ1IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHEf6fsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHEf6fsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDA4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747646393;
	bh=7mLQ/Qa/8lidCfE2vtMD7VqqOLtc06nZ5KhzZJS2Aok=;
	h=To:Subject:From:Date:From;
	b=YHEf6fsYzXuVnno7xZuSS+qR0RYLY/Uz5fkP384+NngHQ63BdvIWKnRgtqPk/4+Fz
	 5Xn/pZh57IpFf+T3RHdd8UYAQRTq4QX7jArHAx1CEGjgn9AwDuzQcgks5aVPLAwiYg
	 hzoVikgkl6FyKo3AqEl39tKUbzS+Rzg1TcWG9eDz9E7l6ZwqFuToihq1Yc2lVVHWF1
	 ngBTQL1osHLm/uFHqjtrX0Jbib0QA8l701ZTYFZoL+nTiUClAuwNlYMWC61A5K8KEu
	 b1Bh4dnLqfz/9yF/yV7fNEUx1w7312X9kxHFSf5+nC6NQaEwlygGwEo+qW/GdulhnU
	 ZhuqRbljhvtAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F2C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764639358.6643.6234846852141293526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d9c39adc8f8ebb14b44455cf362af595df480697d949e30892bfd4985ca29f
Date: Mon, 19 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747646393
