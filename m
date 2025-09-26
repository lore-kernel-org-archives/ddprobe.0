Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC6F230270
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758918594; cv=none; b=V3HVUQHWWpxAZgeOqKQ+rMFG1ppMeFm9U4FT0J5Tov5zmN0D2g1zjakOfkQf/qnKZdkBjnaRvfpRViKg4euJd4TV+6WyZvFyF7lxbCbzD6bR4FOEwX9TuotlHfNDm/kbpyA3WRf1KKedeMZ6FNIWTndoQ26JHnLN24yO2kUzHIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758918594; c=relaxed/simple;
	bh=BupZuwSJGiPIBo5Ha38wnFgAqxxaEn8+Qngr8WD+4rk=;
	h=To:Subject:From:Message-Id:Date; b=WEQtQOOn97iu7bVIXZ1BpDEXGLuQRKS8EUcKG8L+0dkb2502cM36dxzBpYI+oCjwWiJ04SdmiytbYz4VJsJNnRq4iYScoU+XxwevH41xmlxQku/PzO9HWRsGKYy+vXM1lrh1qi/tSWqG4JfYtnXYQB/BFYBozYSDadFs7CB//FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfT1YEzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfT1YEzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F9EC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758918593;
	bh=BupZuwSJGiPIBo5Ha38wnFgAqxxaEn8+Qngr8WD+4rk=;
	h=To:Subject:From:Date:From;
	b=JfT1YEzMNyXmdNiillMp4oaKT/dbTaIQcQImnITP5x1J1Lv26jWXTKQUfA0f1/q1v
	 gITroyausVu179SKw9NETZ1Kf+NY53iIaZ5aP1MLWeU1a2L5nobic44fhh+pb5dcRb
	 vNtnDZGvjcsansXB4XKgYAEqcFOUMbdwdXQ7d0K+lpyQToxDkVvRj/Pk42T4xg/UWG
	 cHXN0Q/WKUL/IjNpCUZMasYK9PKNXNLKyMdtmTHSvx+u//PVQ+m8sVjZs6FQd0Ir6R
	 mDaZGZDTkkHXd8QKNjg+pYmkNmdYPfKkcBsSjZcBADCTgdBGIg2k3KEF65qk+ehNUh
	 axy94K0b7gG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F2CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891859358.7913.90929452147655097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcb59aeae9724fdc099166fddd83af6a8b2b90ea4a6d0d1565987a45afc35fa
Date: Fri, 26 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758918593
