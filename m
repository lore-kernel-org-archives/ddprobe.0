Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C11A1F171
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721172923; cv=none; b=XedHQOqEGT21IuOeRd61wpFUEoFNIMYDHCv/1eShAOb4uxrij6C7pY6KR6nhklObL4DR2c05cLc9JqchYjJzjOi7in6eo+98vQAN6MZ5y8ug/v1nfAUXMirJFcJ0DVlq0AUq+gJMEo+vk1eCv/tZZEiH4KSjmtE7Hc4KhdwMGY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721172923; c=relaxed/simple;
	bh=HQoM1vhwySn9HTrn7NS6mAAvFZMrFkWI9pagDV1gglk=;
	h=To:Subject:From:Message-Id:Date; b=HacpbqO9ykvkoA7vwcVIJ3sud+UKc8GTuLv90jpyPR3NrGjayYekPVJU7/gQtrgbJ3o50OgG64Tl6PoF/V31NFnyP8ps1VrEsmIZ567nQlE3sVY+jmJhketk+s/0SxATaLeTdTRKj0JEGn8SuINrRnIl3dfwH+KuqLug00/XVMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIImMwhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIImMwhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8187C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721172922;
	bh=HQoM1vhwySn9HTrn7NS6mAAvFZMrFkWI9pagDV1gglk=;
	h=To:Subject:From:Date:From;
	b=IIImMwhF7DVCyn+GGjmIQSArT9f3J9SPTm692uvi8aH9CvkH5X4nIUuvVe7eZMxL4
	 14b7ZnW9DyTCNwzO4wsUwX2KndUnJRn7fkpXvY+qgtBtirJCdESX7Xbgn2jSJ+Km/M
	 mrNX3n17MeyPCKUcb7JocwqggPUr8NJVt839vowJhhC7hrz9MQsFZ6sbTTygW1jfLM
	 0lnRFijLsr7tcEA0n96IBlbJ5u66i6QIjaUd0eBoP+goN30+LninECAh186eA6jNTi
	 TVLrho+XROkT0IpuZafGJ5Uo1EvnJiIPBCdSJx9lz0197G1laEid5hte3EzcwN3kib
	 83X1ctIEYx1AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3756C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117292276.22325.10169390217477576323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789db097b155daf631282439a048fa21aad93dbec35185ade6f7ee1f5b5a4f37
Date: Tue, 16 Jul 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721172922
