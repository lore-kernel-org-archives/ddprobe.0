Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FCB2AD2F
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756785594; cv=none; b=G76H3A5NEckADDw5Hnsx9rQY8Tox4BkESXdyzwV2DONTnkK9uJTlDqDL2eswydthaRUly2JdrpkHcJ40oLSTIa2j9oRskGA/u+Bjb7ikml/aBBrjaCb5xfUiLbSXlpA6+sw3pXm39QQrvxJjZXyHBps6ZmhZHj3wyMGixQOR7Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756785594; c=relaxed/simple;
	bh=T9XFNd9bjo1nfbdrNqgPio9ScB2qYfyYK6OQp6IfYq8=;
	h=To:Subject:From:Message-Id:Date; b=Q0azE4hFDBjKfary+unyIOpdZf0s28um3mL0AeA8qmZoESCl6dex707kZJW+4UBGwmpSCn1YAHqWRWW376dpJIFZZoV19pL5r/qqf1kyoxc+04DINbsdkoCpN+hYw+o3BsfvbhTqudUPNLIOljwSAdA8lbimKgHhs/RZCH5/ygc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EA3d2MBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EA3d2MBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D0DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756785593;
	bh=T9XFNd9bjo1nfbdrNqgPio9ScB2qYfyYK6OQp6IfYq8=;
	h=To:Subject:From:Date:From;
	b=EA3d2MBv8+J3cKEyeUaxP5CNiOvq2c7S/j7YOZVky7YhhxapRcJ+fqyVWbsDwLkkk
	 gy2LvRfBrfBRT6S5N2McuzZO5cXsodOB/oHNtPLCywSLZT/fOJ4KNYeRF1Nluu8VZE
	 RvDAFouTBwcvBVgnOGs/03tym3mgFfOm8xRNfTDQqFUN47BtGFSLIjGYRPNo+qsGPM
	 iW+RbHbkDka6B2icvqQi9moI2C3tpRq1CQHVjDAQYg4dUnJ5/i5wAfGgaMx/NLGxIv
	 KxmLnEVApuSzG/FxdiAg8Ho8qzIsDAuyCLWQ4HgGldko/G2iz4pkQ8uHNdBmxfPlo4
	 WS0p9Jv3Z2kDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C7CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678559357.30577.16745644280213308886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fa4ffa9c1f8265b2ae78a43ae0b5f1e165a084c4038d0401d72f84cc0f357c
Date: Tue, 02 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756785593
