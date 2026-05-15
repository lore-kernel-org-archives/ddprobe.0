Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95FBB3E2AB6
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778871034; cv=none; b=PMGg1bLuYC84mrYwmDRqmOtKAL9Fwl0Lwq20q8TeCH87InA/ReIoTX6XTKQcEmbc2vePKK6go7Rhdb29TAxRpIzNfa9S+L8NC2KOYf1M+d1ArYYxSEl4kBjCO0fQsNeQPb6GRQEMUr5+lvAEBtzGkH+TInIHVdliZqqfhHxLrog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778871034; c=relaxed/simple;
	bh=WX+CQ5I8EAORcjoI7xekdd964Uq4ldB1EB9e7h9Px54=;
	h=To:Subject:From:Message-Id:Date; b=hcFM1fc3r34DJmjOm+o5YQGqVIgFkUeeH8H774sFFqfyYrV6oIV2TDTFZl5fj7+cJbt4zxvkUqvPnEqH0RoAz4hfwuClfDQrRcl1M2PJnw1B1S7oNHity4Di4fHEOX2tRR5xOMqK0dM55uCj0NiPwTdltJZivYe9sZl/AkMBpKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7xn775V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7xn775V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F69C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778871033;
	bh=WX+CQ5I8EAORcjoI7xekdd964Uq4ldB1EB9e7h9Px54=;
	h=To:Subject:From:Date:From;
	b=m7xn775VSUgZ00wayfalnexApQ/q2ddvwd6YwpebwCIVIpWAF01ChQEC/0vzHnEqa
	 JxMwc07Q5/Syt62X9CZ7gnSf6C4xBOyuM3W+h3VsURD7GjT8io5XihExo29GzCFW3w
	 lULzHRcPMBxL+ZjbkjEeEQFH6p8S5oXHhgDpqiwA+an5vl5zOz5y4Q9HDZmXfS0+rO
	 KNjMnpdWhiWn7YRpm8irbOrSuuBTAU0yuojykg0wdWsw6b3myGB+xool6UUARzwcFd
	 zGqat6uy+uxoqDf9G2U3lh2ZX0qLekBC2lao1echIiwAc9s3xCEpynDIYKlMi7QUk9
	 tuWrinVHce8vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F01CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887103370.5296.10549751567375226166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa776fd8a3bffb17cfb38762eed115517f49f007c189845d8c7865035c66db2
Date: Fri, 15 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778871033
