Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E43002DD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767629034; cv=none; b=tzuJROIw25rZQfpTwwYPf2ZRWc4kG1C72B1ukN6+LAZYqLgALdY8rkX9W7yRrpcy4Kqz22g+vlDuOOcpdPzJ0gRxaQVx9bX4jSSfqpLAi4eZJW5Y1cPHGKl9C3VfgF+zXn2pyflYivwsygC/M0PI9ArkpaZWve6FSEOpOB8QBVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767629034; c=relaxed/simple;
	bh=Y+C4MpkrrQn+dNccip183hP4cZK7Lv7Sk0OQCad9sJc=;
	h=To:Subject:From:Message-Id:Date; b=PCdSS+cfqiaFg1DT9zvxoPIJa3NLHWrr3hFSb245KBIae/jnPjpTCcscQkxdyInHmi5dsFceF21sU7f5PlJ9ZFOKz4HlzUAtams/+EoLUQEiz38kTCWlRFJcxtFj0oy+7RPhHpE/QIVUE0rJO+gPM861yCH7mxEV11Ar9iiZa3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTl50vJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTl50vJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7497C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767629033;
	bh=Y+C4MpkrrQn+dNccip183hP4cZK7Lv7Sk0OQCad9sJc=;
	h=To:Subject:From:Date:From;
	b=lTl50vJqkQ+aSeZZ5p+arHWnavvfvZzeJLFqTPp6nKYvrKRcv8pweXdJauPbSLQME
	 EZrXbfyAghXi44q+Rs5DZ+i+TVfSYClBYMgOY2SUgccsS7dSiAyoX3gQEUd3slK0tX
	 1OV9LXXWkwR5AN+iNdS7tIPaqvk39KraPNoQGcwl7fKh6xAfb0RZaijvlPylcG7K0k
	 Q9aMQU3inLNFUXLiMp/ALSLdNZzGmnpF4J+sOKbd+HS7bYqI5pKT9RfnIHwn4B5hDr
	 Ph99AlxdCfNhBP4euXjsQ1Owt2E9yOWIN1HkaG5461h8zfQqE63kHDVXC8Bya5EiC0
	 4TQdVd+1jaVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35C0C79FA7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762903363.14447.15995984613024886191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59260df9f45dc7e93414aaafdd95e5969d841eaa67f5f677fdba5c90de0c1e5
Date: Mon, 05 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767629033
