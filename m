Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAF9253B5C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741696135; cv=none; b=TXYeu/x7xw4+ChJW7RyGEaXNZ8MQ/XFaMMbmduN4r6+RxxOgfYDp23ik26q3C1hAthoFHNSIaS72xf8sE7NqtOTcIPJlWoJdZTsfCqQoc4oBh62vS/hJF4KOosjTdLx1nM3134r5rwFshMlMqMho53GsFFSPZtIrKHzlni82HfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741696135; c=relaxed/simple;
	bh=KIlrKOWJFZmcedYvn7jXrsjWYF47Th6l9RTaDDjvXVM=;
	h=To:Subject:From:Message-Id:Date; b=j6FXVBG76g3K31xsTYrSUf7ss+HF/hcvaGQ1Xi9XaTJrDZJ5JmbbHpVMoAVlaY5WGJ3M9eAIhxLYOufrSo6eIU/VX+9RUOE+Bp+05O/qy3r+cezzQRdyKHNreIKQAUdqAgRlHAAvojcHIFJgzYpuQeqFu8D65Udqi3G1PlZhjYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0F8Djrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0F8Djrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0712C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741696134;
	bh=KIlrKOWJFZmcedYvn7jXrsjWYF47Th6l9RTaDDjvXVM=;
	h=To:Subject:From:Date:From;
	b=Z0F8DjrtHCxYUeOJi/4Peb0RxURt6X3jscA39PtKGty7+POjemuugM4SfGdonoVjA
	 3U0uVh6wHPFAGdPIAYPr7YRfR6F/kPLP2fUcCa+3HHKD0OGzdC3T0bnZYOo2YasxAt
	 +4MrcOKrjek7Nk9FMrs8jAoZPanOJLzluDPoUvV5blc4YepxtVMwLp6Zmlt5uUXhRl
	 FX74PQMse7YYHx6zvcnb+Tcv4qATEMy/60LxrlTM6px1AaXyu5zJZhh84lFtR+VWC6
	 HpfM+w0k0A7TGlykmVPauH7JLAscXwkpvD4PcmpjT31C+8VOGCRzWQrjB1Do6rM00v
	 a1OgtJfnp1QLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90420C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169613358.16833.8982261570913987045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7107a2bb316b28dc6c45e6296009db421b15f0ab17b5d2b9527c88cdda6fe078
Date: Tue, 11 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741696133
