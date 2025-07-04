Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A63486329
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751663394; cv=none; b=ZwBrlNDMDZASaCNykT0vCwhOdeqLZ8qegH0yj6uOyhZuYaQlovGjlAq9wure6ZWDKrR/97ZVksqUB0+qRoA+N3uJ2K/Z1VfUuBdJA04fOEu8czelBruEz39G6V2LUqL9sEiiZfSdfyriKSkZgjBMfR6PMeqfT1x7LAZq99tyOe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751663394; c=relaxed/simple;
	bh=92bz+nFKA/l7h5j8aCkkwbAVcJXn+7Il2ylUC5VwSkw=;
	h=To:Subject:From:Message-Id:Date; b=dHbBn9XjkPRbf0UKkJO1xC2UGxqvb7DEoqhXKHMHDg6Ajvdd+d/JpXS1cFWYsDe5Pp3ltAUbgKq/lGjE82GVuEkI1FVbsKLpYI0VgbBAiGopz+FXG2EGsXB6nA1Ftk+cxIc9hcbcRMiM7264KFC0Gtia3yV2PUqK5vdhSSAZ5xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnUbu4/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnUbu4/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5BAC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751663393;
	bh=92bz+nFKA/l7h5j8aCkkwbAVcJXn+7Il2ylUC5VwSkw=;
	h=To:Subject:From:Date:From;
	b=WnUbu4/yEahkfS52542Gy30Crkou54+FPcX5PQuzsbXJo1KxD8qtaDRgcpn3RyoVb
	 8rd+G9iZdYaT98AaOdPC4DYREStvr/7uPl73/25/ru2WV+UTUP6FJPuMoGC7YSJoci
	 yzrIMwfeJB7PiTZEUAkzTjBHzBtNFlmRXddcDViT/4FbAHLicqq3Mett0EWj3lZrNm
	 IyPOlQvKIuXU3cggMoepADP5D91y0nKVTA/T/x9RDgkvcBz/pkLuPSX6kGqAT9R9O7
	 dNe1rlxFVjDPXjXpLD0wVJkiWFyo0ov/ZmQ4mZukgSuHmj10fLHciMK9PSbs3MPfXq
	 rdNZQN3GFzHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E19AC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166339357.6883.9398822811166811278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a0e8e308e0765ed6b99b62e1faebdbf4d5de905455a758a875f7107b0d2d8d
Date: Fri, 04 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751663393
