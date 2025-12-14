Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DAC2A1BF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765719174; cv=none; b=YQ7DXsb2PfjVvCt538GcA3Im/RTykaBzTUvmLVGI8+1f9gk7J58Huk+WRuM3mhwpAaQ2aHWEN8F1L+2xXQ07Tqg1m5U39eSIigg2+NHBsAGmT+HT4/ze7K8RHnaTyS2nTFJ4Uy0CvDcOxlXxbloDxdOqr9pqse+PkBvqYOL1GWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765719174; c=relaxed/simple;
	bh=dcjOsncARQIgC8uu1Tas3tg/Ls129v66QQXsUZ9Hhjw=;
	h=To:Subject:From:Message-Id:Date; b=s6uAhiYzoYe0M0t58NrB0+sCLbMYRE7z/cKbvyN6IRTXZgLhGeTjDVpbQuTG4GLBWmOZHqPqWNKxs82qLyBD5yj+4HGCeWmD5ivg3p9ls2rpW3n0ArzlA6VWdkmWGCAgvMfU6QV0r24uZTGuVVPlzqeUYcm70H8vH2lQ2KmIxGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzKtkLeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzKtkLeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C5C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765719173;
	bh=dcjOsncARQIgC8uu1Tas3tg/Ls129v66QQXsUZ9Hhjw=;
	h=To:Subject:From:Date:From;
	b=UzKtkLeUbvMMVxzZ375O1MGJi+cDg1vVxs3aP9Rm7WD0XzcnyjKMjDg9f/3GWT9+P
	 Iwj+KWxXSAC5vjPHBsZk0B90PnO3EJX1R7hxMYJgdpwolnbbgPIjHX0WjXHX5UscEg
	 +GpZYy9PhZlIyLmjnshKP+S0wZgbCenjG/22b+SXl6jXFc7sHznNj5FeTHvDMx/lqX
	 oaOd6jWtqhm9WRWf9FxBkDmBu1ZSl6tyPFwosZFK3N4Q3nzhjXYjgILicPVuBpmv9b
	 o9HMaFn/Rt0gc8l2KTznFRPw78t4CabcklyYvwIK9uF7EtCJCYfoxdUpoH89to+ZOb
	 oLLpgZpK4EOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97827D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571917358.27846.9285203304936544526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb455a839c908191fabf0882f540043df8e09bbcc9af46ba8429e7e525f7e9d
Date: Sun, 14 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765719173
