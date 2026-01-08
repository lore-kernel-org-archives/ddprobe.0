Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC21841A029
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767863635; cv=none; b=thV6ksowrOKljz0mKzusRpwPXLAVS+m4CpP6Li01eXuB+LTIHFoAUvFKNtOQ97GNNdLq32KeECH7BUaGPf9iFSFILsZGslF5dZWL8K/h9Z68B+0zDa9lzx3ai/fIjFUbiDs6YwlTrt2NyhEn/9gqT90LUdwfBoUZtLEfnHBaxY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767863635; c=relaxed/simple;
	bh=IPB253HtudcFw7e1tKTxIKe3ROD+3F/u3inx0ZD4zLE=;
	h=To:Subject:From:Message-Id:Date; b=b8aDU3GIq+wb/EGTX21Tw2CnABr2o3m3sVZ7zZcjOpxht+jqw5uOrxid5S/ABE3hfErpdhKPvONnZMtJ8ND4kOwyfmb0XyHu3EK9US5m5kW6bhmQ43G4jXHyVLMhvzHRjfGT6fAww34Vo6kolx22ql3+n89sdtpg+U1gJ5U1yzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha4sYyIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ha4sYyIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE53C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767863633;
	bh=IPB253HtudcFw7e1tKTxIKe3ROD+3F/u3inx0ZD4zLE=;
	h=To:Subject:From:Date:From;
	b=Ha4sYyIrk3cYPqWAGzYk5yaNBJW2e0zLPDAuNYbWSUhn+ekD/CoR03oH69+5yYAN6
	 ma1pIfDd6Hic8Ojp/9roG4CGCvdMZ3QZHFs+qabQuuDm+e1dT9O1wrgYoaEFh0DUUP
	 Wrz63m37u95RaTwcFA7z3l2Fxer5KslzjjCkfqf3mpvf9f3H0zG5SghP+LOfblqfS1
	 Scy/Ymkih3qR1fN/wQ/1lpK2r7VebT2uoGkxMbEtHdyP2yNWB2q7YR+nbTOR3xzhC0
	 VMezP1SgQj8pPig106gFGhjZBO9+QSp0RCtra892PcYXbBHMF3oAk4PYV8fDag/AHE
	 z8eHQEoNJCXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E817CF6A89
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786363357.30506.18162890484471191356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a7b66320ba00d973d7d95c46f10184bf44786699199a387eae56b6b571062e
Date: Thu, 08 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767863633
