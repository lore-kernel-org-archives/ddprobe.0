Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0C121CC71
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755601194; cv=none; b=tZ844/rAZlFkbRp/gjKJvrC0UHajUAAXlDtcHctnDI6i9oPS7o/I6+PL9Ksk8jm2qy/7E7MzmLz0CLk+7RaQOoeZqPSihOFv2DyzPEteZN5GpKpgbDuIkB8VsoLU7qlyjoJgHmr2toFpYP/sH8BxkH6tDe8URQvvcASrYtjn2ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755601194; c=relaxed/simple;
	bh=2V9YhXsuYqljvQLc379tUxvVugMF10lFa57M1a+tRe0=;
	h=To:Subject:From:Message-Id:Date; b=rjbS2n+S+rCYBijuWUwe4t2xY9CvwlZDAMK1WIeNpnm3sWg3ZxoQqVCwSLN1WxX6SaXsOcu/ML5PqMeOZVGQ6eZzhLf6wSXfu+qq+10610cFTTItdUqyFEdkSnfLt6DQPjqbrMXalKjE1LSdR7lnsxGNyGZ2/UuzLNMucfHWnMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEtMftWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEtMftWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97974C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755601193;
	bh=2V9YhXsuYqljvQLc379tUxvVugMF10lFa57M1a+tRe0=;
	h=To:Subject:From:Date:From;
	b=YEtMftWY+8opYsJ99Ge6KGzPxFWnXT1uJhTVRzngYonW+rIGmzPKyiLoP59Z4Kp1R
	 3b3O90i1ITuLVyIZiGA+Y56sNxmIFinRwpGIT4TdcX1Yi9k4Zgu52noLAIeQvV34Ey
	 48Zaxjhz2Bd8ibA5WjlgPpzfoTyFErxP054KExwiuasytK1zK3Ktz0iSLaIjMLODd5
	 93/D0IZCc/Jk0AgygTfA1Klfixfxfi3978JO3wx64WdLIxMUOoA4S0sFF+d9o8CMV7
	 mxxrOyIbiP+1v8sSk5VQ5SpvqHMogRs5fpRgkDIuY8aQLbcmLE8OcqTq9QU0EmM4hN
	 6phpk8UUVk0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F7CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560119358.5220.18194808431308499207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085f606a885041e711de3cc1a3a642152fb391f9cdb0cba6e58f61d6ed6fa067
Date: Tue, 19 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755601193
