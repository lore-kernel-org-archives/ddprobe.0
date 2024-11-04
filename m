Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F5D54723
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730687754; cv=none; b=YjHVkJ6dJSW4hfU28b8d8njEJ7gKBfN+J4fPtI3kt/DrUayZ294BOTgt3GGhP/9jK11ujZlecux7X/HO06XAz0NCR9FYf25PmfDrRAMhnD6wKUzotxp1L2Jed4mBifurqabHfGMRhRZVShDUWagUVROlcb5BqOZFbHytTOpkOQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730687754; c=relaxed/simple;
	bh=K4HxQSpLxRgmK04sojQmVwZDCFccfYiiYNdgI+0kba8=;
	h=To:Subject:From:Message-Id:Date; b=jJktAhcHO21DCkMgWvKAucOyouc46iDJ80T4yIv8tVMzcRzuj82aLcVw/xZ5Z6H8No6/6jUHxSBA7GQT+Q6pY+rGGx1Oxs5nC7aCjDs6WxYF7hQO9mSqvSHNNj2U58/jLL6xACxBwXTxQFx2iOlbPaXKcR8ACrOXwu3wx3dAxsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4rmldew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4rmldew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4171C4CECD
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730687753;
	bh=K4HxQSpLxRgmK04sojQmVwZDCFccfYiiYNdgI+0kba8=;
	h=To:Subject:From:Date:From;
	b=G4rmldewXxpRLyepHh3bv0tp0iVu56jKeITFkWySFHVjJO73+zZjcjq+Q/WE3V/wj
	 CPP8iSjBXPa+IKceyLxS3cYiNELM5kRc1+OE3m3FUUosW6QVydJ/DlwqGTW7cQqR7i
	 LTRwKHeToKuu2oGy51a+ax5YA03+mnAa/phVPcGFZv/ORra/jRC0l1lZ865VefdLG5
	 R+Wl5wyEHV/6ZYnyCX3Gh2rr0Z9Njm2DiwpxYNWoKNVnwXl20IaNUPWKSXirti9gpK
	 8tcBX/g8F1b0SDVUaUaPo4ui8VFq7WkOQCu07xPTKVRWimp+Z0wBGK/BIMikdWAzpe
	 773pIAB3E+F8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C05D1119B
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173068775358.3208.11841185133074642910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e9793caef43af8aa883f9c0dacf3557f5d72bca22ff1df45f38830fdf26f8d
Date: Mon, 04 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730687753
