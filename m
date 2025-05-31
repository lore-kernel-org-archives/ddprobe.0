Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A61D1E515
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748724594; cv=none; b=obYprdhndCN0OZ8JuRoSDU6Q71Qp/Ap7N2bVt8A9uJbyfiGs4IUwN/eiJRo/ZA11QYM6ANy+DkNA1svlpUIfBbsGLXo73sZG7y3VIQrvRIgQCJDbLyp3mlnih9CDmh+QxjjBrsSW5DIhJ/oas3Ecf4C4mBB1iRQZe77eoeZqHkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748724594; c=relaxed/simple;
	bh=E5XRsr9ZeQoaoG/Mb7/HuCh/R5iNgXc4103QG7grhxw=;
	h=To:Subject:From:Message-Id:Date; b=TwdAEdOzY7M3O+NWaAZW+fn6I597qqvYjNT5TJPiJg0q8FH+/4JzxM1J79dkHc+AvWxr0Kih6H42QnTp8Ixm0ZG9d/vjzNP+HavUe0Hfn0Sg7zAk7c3QL9cNNfrOhm8a1E6n0RAsTfsCszJluq5JK2POwpqt4DMZOdM4yzG9zOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aD39r7UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aD39r7UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748724593;
	bh=E5XRsr9ZeQoaoG/Mb7/HuCh/R5iNgXc4103QG7grhxw=;
	h=To:Subject:From:Date:From;
	b=aD39r7UMNjNtgMEnE7YPBUh7W+AZ2VA7GGm/E3the2Mv3+du3C/5OYu0+s8GVLEq8
	 yPHsuA1zcImkW6pi53kaXqAgKReBgs4+PDApkz3kXurZ9Ybl67qehYoIlwGnERZitT
	 s091L+jAVu1a+PEXnh5XlyY6ULIlfxsa06gTe3h9xFD1bqA2yNNcE1X4z4Qi9JlgOQ
	 EXbyRRSihg0ZBqCAdZIDji8XWiBNuvCtCP2lFyiXfGNjO7qZ8fJAJTLbw295mZYZxY
	 qcoqq6a0IQzA08tGPBtSzejJ+cwq7DhzR4iFeUi6ezV+mxQ2+mpQGdbL7dRUJZ+W6K
	 ouvBTm+Hy1OKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D8C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872459358.13694.10884723960282808364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fb0caa6b40d93b4976bb214128d7842622ee480c08cf0f41a96ce797a4eff1
Date: Sat, 31 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748724593
