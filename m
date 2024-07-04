Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4612BB06
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720129523; cv=none; b=KFKwn7tXGf6YokRIv2X5V92xylR0BifUPETsWQA7ciOBkLjeaNFUeniB6ZodSAXyM/UYZgROPMZzTJjSbimWH7BBzSZHnG+yNYxGL4aK7hQ44S021LeiPSMfhmAIotl6eVk53LahW4I6pUh4rTrdIBT+nOWIzZKOArV/CLGyiow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720129523; c=relaxed/simple;
	bh=eox1JZMcN0y+kmgRmB0BEY+WttaI/hLu+lSbRlXkEUA=;
	h=To:Subject:From:Message-Id:Date; b=jO6SxCD+G0ZwfqnCxasofo9qCnffik2cHMIhrvgwXH/zJi+pOUTFW6MRZ5W7wwiwMXnBE5e5n0yxPzZR/cjUlnMm900sZRnoQFaHzE3YnMlIxwJbo4LDRBCVx8ZcaTNPe/0SVv07ld50QT9RUAY8a8ekerrkLPxUl9SVtSWWKyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X52gAIfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X52gAIfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50B4C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720129522;
	bh=eox1JZMcN0y+kmgRmB0BEY+WttaI/hLu+lSbRlXkEUA=;
	h=To:Subject:From:Date:From;
	b=X52gAIfoPT+09rCqT8Qg7X2fcwJDW1rrO88qTqmBo+zo6dq5xZKw6g9mgKvfpxFDc
	 obuX0kONJWda7l2efZtZEak+/idl4LStcgAhz43PRCgb8LzWnJtjz04rEP5KxjIY0F
	 k9/KBhCIEjcr3G5o9zeCB/6/S10VyWgn1FdpxDdoNF61Zd9olT98u7b+5i2bhxSmRy
	 efwCvgnFiKAEF45H9D1wL5FvX+5JHxzF1YvsIx2QF7UlYll9DdkbGwQdtLWcKFMj3F
	 lLob1jrtrL0/k1medQtUjCFnoTeSKsxe60LPZgIGOdACN0B/BOCMuRCjiIllz1np1u
	 OXgHNfqsP9YFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD8FC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012952276.27759.3336879819630743362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946d535b6f04fb162ef969a89e04142abebc57b85deddc145aa616539599db46
Date: Thu, 04 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720129522
