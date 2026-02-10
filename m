Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C8339853
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770767034; cv=none; b=TUXOPUEDLLcz0I0+ERO1nkayzCM2u5QED9KO30x36EROi4xLfS5UWKbu3s5yPYi77BHXLCLtWlCSMvLRcT43VZlzjR9QN5ZR+keQdsBobALeq+eMxH2XSreHCp24UwF7cMzo5fnvvmdYcEjd/7Mi1FRuVmNDXKik+AqW1Krqyb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770767034; c=relaxed/simple;
	bh=HfE7RWUeT509xxSV//Iok2Aj3sF03VQ2fV6hy3unXdo=;
	h=To:Subject:From:Message-Id:Date; b=ZaqL8estoiU6im5HXYntkNeoue8+Kuqt+JJ0GcBybgsaDoVnMoazOH9r8TFJueNMryW454CKhReDS63W5jjlTtI72nddj1aFE2o3ojlKBx1C9kdnoDUabXXBjeN387s5Ux3hu3+heGdOQlLyed6T5/H2Ru9uIXOYmVJlcsNoVKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyDIp8ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyDIp8ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B159BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770767033;
	bh=HfE7RWUeT509xxSV//Iok2Aj3sF03VQ2fV6hy3unXdo=;
	h=To:Subject:From:Date:From;
	b=cyDIp8owIgaMudwFb/jlauJOa8psRVHnSSKorr8bkJnhJECrgLJccPqn0du3x+C19
	 vuhkKUllGwsjLVM20fiGZKv0em2t9uy60CivfYg0IHLkVoIm/XnTO585EIHKWNCYGY
	 rSXipAvBx19vbSkmkWGF2ZbiY6YdHTT7iiNvdlVv5ffuFhpxmOggHhA5fp4xUNn6fy
	 iQ0dCoYpRK0s0++dXoGDMBhTneCkTut85ZFZZSD7XsOpSKzFhbB7LehOm73lTIopyU
	 f+qWBdi036UB6++lql3jCnL+cI/ROicG1fDeyg26zIAcqULqrQK6QZ1HVQcR/NRj8P
	 H1oCQelui/HPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFD5EB5940
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076703364.19443.9991684343025148105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f82310b3a884e79308989ffdd7be87de7a29f0d29cf8bf3f5d2c57039f5d5fb
Date: Tue, 10 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770767033
