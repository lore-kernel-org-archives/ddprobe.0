Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4005A2E3374
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741914535; cv=none; b=CUzpT+ps1ebpK3KZtym+Gv1sqHw3Plqi0yMl5qX5PwVMxp3TMymvGDPMNYJ5eWL0v1I4fYIkP9iytY8bm/1FWWF3IMm03bg1+xj9iD04E74yS/XWqN1U5O3kEMsAIEQ3PHAwO3qJJdCwcdkTJQL6BWZQWTDsrpN3H67VGIaULcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741914535; c=relaxed/simple;
	bh=KK0Im6WL4Z4v+TqCq6RXERhXvblAI/zzZiUh/DZ1WJQ=;
	h=To:Subject:From:Message-Id:Date; b=TwMxbJOlFN6VkT0ufQcxtSc7m1UciHQjzl7f3w5300eZHPn5fR4MKqCPOEuVy1GwG27kxYZP8Jdoutqq26x79JXuozDTF+qZdjN+PgT8UJy4r8wwlrbJrkY0oxLyN10AKzddAQT8cvqEFa4YS2EXsjTcAzSTKUIepKlQli/1HYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNrGkvDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNrGkvDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B296FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741914533;
	bh=KK0Im6WL4Z4v+TqCq6RXERhXvblAI/zzZiUh/DZ1WJQ=;
	h=To:Subject:From:Date:From;
	b=kNrGkvDNsCd+7XwxL0wcvuKNY5x4HQIdryYeRfkmhJJsbb/fttq2FEaEI5c3MdoLf
	 +IevqA0E29Oh+pDhH3IWlE/SdzTdIfQJf3w4AwoJ0GQP4iTZ5h7zD9PGtK2rmX73rS
	 Nt/R0qo2+NTbUm7oIhEJDtL0THJUnWZBbuIYD8WWlsjWjjvjjuNCERLuX2xpxmxBVs
	 yOAPi8XHAnjWVlkUGJzSy5iWSqGc6iMtRfbK1NF/BkAmBto+vsV2UWYxNlBeMIoStF
	 ctNmDTj/J8ZmswkoBntU+MNGPwoOkVH9QgBhuX1Zt1PyHqmk7/9RjLu8kQaR9dTdDC
	 0L7zhgSDBoexA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99471C282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191453360.1797.14004179912829258194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0d5d47965ce3316f8cdd880065c927731a699822f8b7b3fac7f4dc2d8f3521
Date: Fri, 14 Mar 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741914533
