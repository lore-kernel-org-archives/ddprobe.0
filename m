Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8F160
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713053363; cv=none; b=bt09PNvwWoJZF+O1Yt66uDluX3H1i2j9z4YubJ/zS0l+HUEb/EM9krAcHT6jqiFt+/dgTPAHtwcT5uWWsv+FjLy8nUsd8denPuy396zv6UiNJ9zt6Z+KRj0ao3IPnMCn6M/J2rhwtrZIK4Wa8GmZVPaLe8ndvGE0g+wYAKpdjy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713053363; c=relaxed/simple;
	bh=AIzTIS+BWh8ZUMp38wbwXK1dWyw8MAwMekXTfsESK9A=;
	h=To:Subject:From:Message-Id:Date; b=X7uSqva+A8eAsgzfnmkh8zNoUJ6+3Qm5+wRZzW+Qm2fik6dHo++WBN5s16CruU2aQHIOOucdUbwrOvKuLLt+xh4UFzIipnz4In9iOiM2qxa+EXf62wcPlkC776o51O9D8RFW9LaN1o4nOwtmF3Z8jRbF9n8NBPFmgqL+0ycbXd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMFlYvEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMFlYvEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A09C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713053362;
	bh=AIzTIS+BWh8ZUMp38wbwXK1dWyw8MAwMekXTfsESK9A=;
	h=To:Subject:From:Date:From;
	b=HMFlYvECexsn484TxI60ixqxgBDnlhT6YZjDs3r7IYZQbQfN7ThlvxsPUGKfFe0a8
	 uHG15+BFeaufVDi96sBc3JI2jtdl5jEGev3yg69eH1xw0O6HZZlp1aNI33JAEAk72x
	 M2kwDH3iEKbhsy+Ifp3dfzTlv1iYuGEH8I5Mt8JoEb+5zwN7VZwO8ha79/wjQ6XkHV
	 /mEeRZw8VJ05HGbWabsIMEKboPK7X5efN4MpV9uSTRGBHq6aMpA6wxMx5DD7mDIjuy
	 LpgUtOqFTjz+X9st9OplRn1+v0BdcG+VBGpxbowDAaPRXtJk2fVJ7gkYcpTyL5uql4
	 Jx8bL3+PmZ40w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB62C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305336276.21443.14763199307349895518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f157f08fc4fb030930687e633385fe3871ac25dc27dcad5193809e068323393d
Date: Sun, 14 Apr 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713053362
