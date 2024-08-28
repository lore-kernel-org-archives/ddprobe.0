Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283515B143
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724843154; cv=none; b=H8q9rSYooezlgabQJwdR8xdhDC8MWzhHMrjF4d1+XQsbTp0G1Kweh0BjWpKOGCJta5DqxoaQgkzvAF+2VbBpyDrxrfJ0xuhfXz9RONvRtzvM1Mz9+2wdswMEbXY79RCPhtloOhws0LwmY6ruMjh3nl6ISh7os58gB8XHN6liS/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724843154; c=relaxed/simple;
	bh=jgH3oGIxko/POmdlqZfDLEXoZ71NxJBlzd9XhZKVZIQ=;
	h=To:Subject:From:Message-Id:Date; b=BDXBNVB1QMjGuzxDitXVVOjc/VQ9YCwKYtcm8uVlg5jz38TypWSNfCduOYVrTHJC84MK2WQlZmEvj/MhFCYOZHtQI9Ix5Do7xHn26ihZM1kQkPEGv5oP30fvpZWz2eBTcINmXW7qcn/eeDnUDlJnu2nsZztXECegPtsuS/51DyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPoFReMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPoFReMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF880C515B2
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724843153;
	bh=jgH3oGIxko/POmdlqZfDLEXoZ71NxJBlzd9XhZKVZIQ=;
	h=To:Subject:From:Date:From;
	b=NPoFReMgMWeVq5DyNCpK9OgxYqbD3NEbNW5oYcAiabsREwFLzQXR4pNqDJ3NTJLqb
	 Sc7MidcorpYKgGUytYxknk5cbYFqp49CqN4gBWUnIkc3kmLCNFsJ54G4I42XEv8KAH
	 mzlM5SfRE+s8n9y3MaLuF5Qcd7SF/QPeMp+eDWunMbYzISZq3UGdgCi1Hdv8CDHQyM
	 W09oBy12PDiUYE1pAyuX3QV4sRxsD9/th2i56nuK0s0h87y8vTqrYwsWEoSeeXCuQz
	 qERzoUlHsiogO2yVBoHgbrUrGF3dMAPuueSn3O5d3vLclgdRT5atvnHUdDe0yKfHCp
	 MQgl2qlYIj5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B63AC54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484315362.22185.6851223273285333249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496a0069b0a1b87cb8698af7a89d757b32f4ac182a250873a8bb0bce739cf2e8
Date: Wed, 28 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724843153
