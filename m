Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D451175A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783124914; cv=none; b=NT568+2YI3wlNk5nIkyR3Y73iINV8/I6t0I2u2PK61mLKA5ApyQ5XiNMDLWfRciDwOdtP7/PwmXMRMdDBNU+mXL6matIkgzkBJczzDg8AFlV1UVksLHxCEO1VsPQT0qRN+44IQFTjtdB1n8roBQSniyB5qyMKY1HSp630tUCfhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783124914; c=relaxed/simple;
	bh=Kv5lxwSf9C+Vai/5Hq9Zpz2/RL/vG9HRz7VeL7F/mfI=;
	h=To:Subject:From:Message-Id:Date; b=TFmJk2AhCN8VSLXBQ0BShGN80fuXbl7Aj4DRazABlhhT1xRx0kYxIe59CH7DbGVu4woONw7nw2pzQFRTzhCN438TYJKaokFmtFLlJCT0ZbVhJ+8Rf8h49DKc9xtrB/mftkF8WS5jw6756uxB60sFHK11jFlvv4whHhlrmRG6mtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSdW0dsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSdW0dsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56D8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783124913;
	bh=Kv5lxwSf9C+Vai/5Hq9Zpz2/RL/vG9HRz7VeL7F/mfI=;
	h=To:Subject:From:Date:From;
	b=uSdW0dsxSRNmc6rcdOO5KTzMuUkBJXtn/wc2zGT3O5Cu682lQe55Y64fnKCNtedCN
	 V+4Vga5ydl+ues1Pg6POYJLgPLYWH1RxbNao391mwkVsW2AwI/qK3zkrGAs/asalsK
	 1ktX06LxP1vXeeDr0Y2ahdcgth46sWyxCLZphCebhD6gK/9oTO/mWkJ6uDcV8M3xwC
	 sSRMLB3D2Ab4h7gZU66HrJq4eMGoYe0D0sJeKG/mt7Tbe5FnKXkPZ54G5JfmP3T3Ae
	 oMnnT1FaBZ7DC0e04Byf3tASwv+ksHeQ2i8OkK0yKufermJ6d6RyJLT013uc6LZsLb
	 0NNiDov/igt+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6C7C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312491368.11063.7381525631506033626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9691b1dff537ee8a666c2562fb21522d0a6bf226ad012fb9adbb3b68712dbd
Date: Sat, 04 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783124913
