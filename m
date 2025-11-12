Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEA625783C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762984194; cv=none; b=frzVy9hd1OsBDLeO/MyIBWD6fghUbDlmNNJpTe+rpjFs5dgwCttHcNn6PJdYG75msLJ5ci5uQ+7PBNv2f2r97eSWMIfHeqX78p3FQQp551XJ/WUpu/O5iLMUWPY81paKsfDDrq2DfgbCVbQCgfRac1qUUj4LllbFoCSTRBxS1y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762984194; c=relaxed/simple;
	bh=S6yweRJVX5GdKEP51LiUTpo/EHoLXM7/DMPNChcJQWI=;
	h=To:Subject:From:Message-Id:Date; b=nctYYUfT9MjwEa7AsbkowIJY4suSOLBdSNJVbTdfqfKMm/s0nO0ONcffzRj+3kkdRB5bB6Pa8on8cSamVhXbNlCU6LwlysrYnvXBzFmehMeV0/kAaKbhmU0VPuDFCmMGQWarVLzTXt6SMg/uaUJAPVa4zeyr360ruq46Q1EXjHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iq/rhaA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iq/rhaA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1644C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762984193;
	bh=S6yweRJVX5GdKEP51LiUTpo/EHoLXM7/DMPNChcJQWI=;
	h=To:Subject:From:Date:From;
	b=iq/rhaA4hKBiyQp56hL17QeSGD/fyqXLoNVHduiz6bVvFBZ0sUAg+1lkFrMmhKM42
	 +8q6G8VjAAsxrJRb+pzs/Y9ryMK6sthBSjlMfrPOKWVXxsDr8HJLxxNPvevGo2aqDO
	 VwmIV+cMoxmZQjuDx3R04WKrMgDgMHGNK9v+DxjJYqoQyoGAtroS6OCWpXs+BeGGl3
	 IP21ITfSLrVij3Ev9ZDhDrBrBOZ9u6/th/XVKPlHGV9cPVog/GqjL4zszx/lMn15sx
	 6QtlDQxfjN1DlcnPkgC1dTCj4ANrTyrjzF8wQ/gqg8aFyfnD8mWEyZ1SNlDGEt03sk
	 XQMpznTqyg53w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FE8CD484C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176298419359.4225.17658807843540231340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5502ca98b3054e68ae193666313128ed365585cf85b5242abb238218098b59f
Date: Wed, 12 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762984193
