Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD9131A81C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779202234; cv=none; b=dtQKDg2BCB/RVNojiWG5Revniqom4WPVQ3KcikXVJB4O1oA5Jf/1aml5XrJkoI1o3Ue6UC5i60St6BfsfvFv6OIHuHntKJfk6Pt4bJVDLN9yhwYA93e4776qfKuBSrOcn3EAxbGKVO6Lj21MzfQQEuyDcFf28IsbUSYA3D4U4h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779202234; c=relaxed/simple;
	bh=8zTyTJoiCbe5kEkOVOaOOcVZH991YqWhd0fnhNnyuAM=;
	h=To:Subject:From:Message-Id:Date; b=ZEM79IyA4cw2/10+3+yorQm9sqD13KA3qNTwCZKUkYoLc6FVQWVFn1B202fHGcoB9yw1XysGOinMdqrFP2tsON6FNxM1p2ynyGbOOG1/h0JQNg2dAG/ZGNYvX4kYOuUtgfQ30ECl0k3P65DQerRDgxFkLT8Vty/tC1Nfye/BYMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvXT4E4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvXT4E4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C971EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779202233;
	bh=8zTyTJoiCbe5kEkOVOaOOcVZH991YqWhd0fnhNnyuAM=;
	h=To:Subject:From:Date:From;
	b=IvXT4E4mkicERHKaxkmpw8+CCd+VJvIj+uLp5uMtPvxiNkscalqSXzuumS+gWOPN4
	 dkyNrqwAA92Tsu+8G8hRs9h79IyzQPZzils44GF/bNYIO1BMc1aDep4YFxgHOZRifr
	 edqRJL6AP8kXT5tFHhS0WesSueXEMPKQd92csUyQ78sO7s6ktvhcZA1dhDOfARLmmx
	 +QtWZ1kLzZU+plfXiEIlD6HyryYOMXY05T0+NetjWXcMUNkIDgHW1rwsFAqpw2w6A8
	 oQ1yDtMOnpzBtoPvzGKp5hiDlzI/twegn7MaoRvX7hNdA1HcQlq6lkML6gwRbY0N8k
	 HrOd5pU/09LjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52E5CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920223373.19749.17177269635802718352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7aa8bf1c7f5ddb66139e6ab0bea2e6b6639af49e90876d86b9ede71bfb8f3d4
Date: Tue, 19 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779202233
