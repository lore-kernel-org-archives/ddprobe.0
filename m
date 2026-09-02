Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6F839150B
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788379234; cv=none; b=YQzc4Vnud4ehJGK1qtOdx/XyxM58e6RlI3nU8MxmwqJAfTls500D64+HyGOTR98yTRYd14uz5nrUMnZH9LDI7S0v3xQpd1oXvGzvfzs1tMdDM2jE1+6QrTNwPfjKY9Yoybv2XiaNoRunKqaJDKGBgR3P0NYYSH5TQ5kX10yqSqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788379234; c=relaxed/simple;
	bh=VE8falzXYbKThuP9W8dBiPKdr4LAzQQ9Vv5ocW6nR70=;
	h=To:Subject:From:Message-Id:Date; b=E+PF7VRNdVrJPsuNSEFzKsiZAzsgLABjdv/0MjJnblOQFhp7pAYbucofp1oojHrCZfi4AagurZJ3aTjmpJCbbG2yCiwDguI5hrtlbq54JbBk4JcWYLYXZlj37I/zt7of5Ap2qsRoIz8tKCqYKwtqbe5GxOD9l4isl7drYXTvQ5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuHnzxNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuHnzxNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E8FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788379233;
	bh=VE8falzXYbKThuP9W8dBiPKdr4LAzQQ9Vv5ocW6nR70=;
	h=To:Subject:From:Date:From;
	b=VuHnzxNYpJduM8HOHa3l7mCW4lHWNc0EjVrWdUeWFjkTUTcyd00eaQlqYBCI8NNyU
	 KQI+0KYT/V93TgiTpmJRPTZEvJn6Bx/+xElvLyay+uLxg9Y5kvf+zOlIZSo/TJStXK
	 ou/pqDV5aOjlZcMFqkRm/3SqaKB7NzGxeq+bsGaRrG7HdMUMaDpNMnrPMsXmoJlZnA
	 flPfFJIX9SSmo8snw2qXF3tYuDKyK7z923TLIebX0OoHvk0Qun7mcSOCy7ZmQhwY7Q
	 jSUKIg7wKJvj8d2SBkTNCCLk+3h8wIPE719SSo8aM68mclhyJQYTVKFVKc2F4WZjvO
	 iMZxnnglfl5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB0BC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837923368.3165.1898890428736983756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bc76f94e535f93b83f686d156c23b6c17e84ed065740a8596afc15161db19e
Date: Wed, 02 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788379233
