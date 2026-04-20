Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C50F3876DB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776683254; cv=none; b=P2L+18WW6xZr9lcxtJfAa07y07+IqboN+E5Xg9tArGshqhSBJYets+69fsnQVs3SzcuVv6XktbEQ16CmDPaa4eWDsRnP0fMuxNferw0BY5XL8GTBQu05kQuTNR+mymsvS2w7aO9C0AKXLC5h7G6De5hLKN5eIlG91za/3yCXKIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776683254; c=relaxed/simple;
	bh=hIJxc/ANtadDELQ+6/olrJQ646CtWQaZR2T1VPFH3Jw=;
	h=To:Subject:From:Message-Id:Date; b=fC2Yd8rlVgV5wHZH9vhyMBUeix7q8RsRqZheoDjYXT5Cb2/5lf6OQRQps+HRmnggLMGsFqlq/027jlIWQdkmeoO3Vh2zz4YsX+2H/BslUBtzpC6kIqYN7tGiER35TnEpOIMwDyDHqQnvz9m8XI7iP2Jk6fDDu1oVuCiiMA9O8rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5BqqMNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5BqqMNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8042C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776683253;
	bh=hIJxc/ANtadDELQ+6/olrJQ646CtWQaZR2T1VPFH3Jw=;
	h=To:Subject:From:Date:From;
	b=n5BqqMNWwqH2WhwB+taSeWqXFV/rHw6xiEzHtR6ASx7VxFy6FIdKObA+t/Iyc5Gl3
	 qYNhGTecL76/FXY0UGdYXJvZ7/WzgSZfRP3RI85aK+tg60vcQwtOMJ8sdvzxIk8hZM
	 v/iwL99m64QZYrEmYq8N5s1rkFDKdyedvs+CmZgwNq/jgmujfgLlHoF9W9oYw5XEHm
	 CpI9VlxwtY5Fh2N8JlAmRN+FUXAUjIye7Hj1WXCBHVeboszfAbeQVJLoMoxbmDYQ6O
	 Duyq/31I/hKW7oqRE6nJe5bD8cxgRorJQO/KRY4rRdlLLtiWHweTa6+QmeTRk2uFQP
	 91tZ9JTogWD+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF0F55810
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668325368.7649.9526806667131908640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d292e3f5dcd97391df8850e487d734cb81f2aac3ea369b7933a18ab54110f1e
Date: Mon, 20 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776683253
