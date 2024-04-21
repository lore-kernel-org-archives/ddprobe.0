Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C2F405C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713723023; cv=none; b=iIyz4+dq/wpGfyxbFPtyHzoR8m/LnUwOknT8hUn1ld7cp8Qy/ZxrhwOFlJDd+ERmd8lIz1Sfx6vHA5ksROtLk315HiRNnDerLbayYrhfOESvaVl6xwsRZ0r7qbjzs7iOUwaC2owJ3vfB1Yf3pWMJfvNXeSxI1A07SX1dSY2ZPiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713723023; c=relaxed/simple;
	bh=YrULv6ukK9EbbLzd34zuwS+vEPZO9ychCMR7W9lA3Js=;
	h=To:Subject:From:Message-Id:Date; b=lWNNLArhnX7JilJrl3hdbpwKIQBS2S0PAMtz37282Bpi3PPWsAFvtJSkuj+WVB7uWBQPyIGf2W+XaweG1piGmuPgUvbTDv6vjcSGiLZiUhWCNcQLLdDAGemrkEXhU81BKAtDpr+hjanoyYdcBv4ij7Xgt/jvZAzI74soOHmzpbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riSWSvNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riSWSvNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFA3C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713723022;
	bh=YrULv6ukK9EbbLzd34zuwS+vEPZO9ychCMR7W9lA3Js=;
	h=To:Subject:From:Date:From;
	b=riSWSvNHM6KsvPrNDqmaaK4QgOKgHRCEuNDywuu3lwV/kkH28NrT1+yc8rcecyR6U
	 OCveku/slfsQolgvMazLrK/ZH8PjqhZ79WTR2V+inVyzbv9jzACvwuth4nnAkiP+j+
	 rW7XrF8/7T6jiF0jLqj7U8abp0hBbIoFG6xM/pTghmEQUBcFbOCTQT7UArxdZgBigR
	 nMG6D4bDE+ftVgAX9+4gn6qq/a+jhDVLNNqIjvFfdQMYs6yNyVakenm1GQOVoXQA3A
	 iLozrEqCPds6//AUZ7hSmCJCvfTzGZ1LOLiQsPT81wgA2VpVBMg/e2rtkRN7h+80Bn
	 KY8PBPk74vy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49FAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 18:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372302278.32427.5743283921298864511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02712e8e7c7dbafe04043d900df4c70bc1892ba66668e23b0dc7ba6020a8fd75
Date: Sun, 21 Apr 2024 18:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713723022
