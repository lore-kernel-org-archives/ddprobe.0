Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A730179957
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724276154; cv=none; b=mOFO3lV+scfc0YoGx97SKgzJPnQ7YJFuFf9h2aIVo1EbvkHQl6sIcO+uKpFuy82o12p0JPRdk6MhsWcZI4F8o9barhPbk66dZJPMig1QNaJKpIuK/UjvUqRFjuZhEOuC5fQJ6z4DePMBm2hA2EeVPnb1RieBUUFVzKtU3/Vn07A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724276154; c=relaxed/simple;
	bh=4cAfvZO0FZnZjahXrBLUy3F4xhtuohqBvSTUdMYI8jo=;
	h=To:Subject:From:Message-Id:Date; b=iqnM/GM4h7h/ggK9jPyZ8v+H1+sDBWpZPUGrgmnjo7p2vfxCazpP8HdoOmd1iIj60altDo80tAUOe4DO/BQJbYERpmfQKsdraf+LAmbClxmk7n/3cap4H67NdBGWm8ZmLe8/8eOgKZGnPkDS4TkT8QPZJHsqdRqrvA6NoLPF0tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmKZR6a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmKZR6a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9974C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724276153;
	bh=4cAfvZO0FZnZjahXrBLUy3F4xhtuohqBvSTUdMYI8jo=;
	h=To:Subject:From:Date:From;
	b=JmKZR6a1ha9R8zx+gWM3sV5BjdOlgTk2MPGAJuL5bQWEhk8nbuQSVARK1Pw3fcSSG
	 CIJcbg8RGf0PN3fLiaSx53y2PJi0wCfCd7IB7011mphTZGL2xvaH/s1xUNRYb2l67O
	 PSWeu2kGdg9QcMXLJieVBucbzVMXxqqtc0Tte79fiSkkCFkLqtx+V7up+mt4QFChII
	 7k1vvMHJQ/ObWNyBFeWaAwavfgMpw/uTLs89XQ/vxV8m7hIRjPAHU54/GBILHGwEqW
	 v2wh8ANyag7NBv1dUt042wgo3GgwFoFTLPC5QX2xUYRoyjuiRFupUToG/4F/tOeGjP
	 m3jeX8kEmoOpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF3C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427615358.27149.17993866689183318136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b3e4a8c93bbf8d3d0f0fa4438188c5ac5ba430d24f117c6fb94f1fa7acec3a
Date: Wed, 21 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724276153
