Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155653A9630
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773828294; cv=none; b=sWRV66HZ6OCRenQ3vetIyjp0P05pXKQSpS83Kp2Wm30YV/V508BQ73t35vM5ZSjhY4XeEv3zrpgOPxigT9K2DmrrZMturC15pJNlrmDP/mGdBvX+5J2oWACQOo/Wu8QsDT3ML9UMmNOtyE9wUS8XCBvpnC3AS8JgoiPILVEO+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773828294; c=relaxed/simple;
	bh=egd7WcxAQnit++TaYAs1zwYbPX2zAKLe2PkGdEbxc14=;
	h=To:Subject:From:Message-Id:Date; b=krMoeiAUFDV/FMj/KnXz0Vn3P9vdGRRXfR2nGtQpHVKarV4qZfqeILpq5QkKSJN5OSU5J34zzMoQtXkj7N8GWH2SA/BAWECwJ1VmMWODyvYK0twteCuAgmixLw50WtrGO0K46fKj22mWg7ToaOUTGyAN2NQ7vpT8tujJH0hSAV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3WQdTPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3WQdTPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B95C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773828293;
	bh=egd7WcxAQnit++TaYAs1zwYbPX2zAKLe2PkGdEbxc14=;
	h=To:Subject:From:Date:From;
	b=W3WQdTPJ9XYh9gbOKd0KZL4xZkDh8Q2hE1Yr8r+anvVJUnxmgXFnO6JJPUy8ybNVV
	 ijW+6n/WhyOWflX15Zq17B5BSzKCBGmPgkKY0JrQs7wIdUz6WY8SGl07AoafA4TjV2
	 Rwib5jemCvulerJ7j/quAmWWKvLXIUB930gvh3gUJCJsH7dC07ASCGVMoM3XW7Djxa
	 O3pJbCVi9ByDiKi/lgnVW9gjMZJ3wer3hNsKVPQMKNusEN14zhXTvFpQmQ1bIG1oYR
	 NesiamxQLVeVt1LcT0eXSYZizMxQLGWf8Gq/WIOPDOSSaGvs+LLtyMHleBm+u8h4Ts
	 /6HudXueGYw8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED59103D958
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382829357.12587.10086823834031359598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6764c105b100b7cb8ae082e701faa6f5dd753b46b1209a1636e19c37b48cffcc
Date: Wed, 18 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773828293
