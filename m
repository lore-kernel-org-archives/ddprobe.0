Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC74746E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742845794; cv=none; b=Is0jRR/VOChSuZIZpuMaDSIJJCj//9aciiQizd2R4cAUo34njA5giYpBZoR0LaMryJM06dv2tu3EMzzVFDetFmtrgPs55znPDcb/S5+58vDrEOsR9Qkl3GQl84F2jZ+bNyRd5aNpap4NcDLZ563rt161dF2Sa04SXlGbmliaAMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742845794; c=relaxed/simple;
	bh=LLfZqaw6J+0eYYZR3B3bSbP28FCnBleeVUBfoJnFRBE=;
	h=To:Subject:From:Message-Id:Date; b=Y0FF6vBQ7mgycQs7mFLOhvuJjlwf3lZA1rzPsDETAknjDAlNkw219u/v2Qu1Tx+MVfGzPw9NIHajOGZVBp00DA7fbwJfSnrAUsG/x2FjaIqtQdrD/yAxP73GhLO1+LlHfyMm0ripNpbtZZLVk9nS9idpVmmD3tbQm/sn5BN6PfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADtUoARZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADtUoARZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE57C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742845793;
	bh=LLfZqaw6J+0eYYZR3B3bSbP28FCnBleeVUBfoJnFRBE=;
	h=To:Subject:From:Date:From;
	b=ADtUoARZRIfAGHmcUXblZzvR7Ol5IlcMmsHX0cMOMLEY569xU4E47ulKI/Hej5L+F
	 wrJb4RSeT31S9FEWISbS7EN8FAgNIyobJ4DzY/8K5kOrRBcXawj+ky8dA6QxpSjVOv
	 fgDavJCX4V5qw+soxJFmXHaLVt/1JWNHnxA+3ww3WMYbdh8bVphQSxqB4xxcsxo1kT
	 H4ue3vvN3srz44mnzuFgeYfR7y/kzYLcAiFRo/QD3YvtI35oE08xEujfdLHQIZHNvR
	 5YTpgi1WXqdoZ4Dh1cx2KIzCgsJ2i9GCBAZtKaTsrwsIROVuAOz5Zrm3X1d2BYPpDK
	 5pG1KKciCke9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D26C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284579361.19132.15719400553684520332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd19e01e2f7c748d5ab74cbb7c4feed3af7933b296881759bb230443b0cbd64d
Date: Mon, 24 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742845793
