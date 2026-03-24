Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B603ACEF2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774335294; cv=none; b=bmjgLoB3S8tbSRJn9UeIfpRrR3lWdlF+NoqbaB4HU/xzw36x/i1+iBZxqPwZaqK6d3UM9WI5t+KzYWZmLdhYfJbZHoYINyFX75m+qpihnVy9ASOYXLevft+bsTAKZvbDGh0OSq+KNzAnlJ+QJqIYWF18wFxbF7IGnqYSJUwcbtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774335294; c=relaxed/simple;
	bh=lU2DzU5DN1Buaw7oodz5ADMD51WcRlZprGhqqCVmWrY=;
	h=To:Subject:From:Message-Id:Date; b=dgHcWrh2IOVDyucKyB6aHlyNGfiMYKhUwjfHOxBDovIW8sN/1TWlShrT94T5SdQiToYrBi3fM/3Ho8wpeOpeDgYlElXWEYHs1XKrGNP+CAE5coJZPwR7wcTctRn1pITUGphtgBKGNeC/R+IqgANgwlTvae4nPznuwxoAfjtlbT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMO1A67b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMO1A67b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7ADC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774335293;
	bh=lU2DzU5DN1Buaw7oodz5ADMD51WcRlZprGhqqCVmWrY=;
	h=To:Subject:From:Date:From;
	b=AMO1A67bU9atE4ALtllieuApr2aXDtbFAgse+EKOCUXA8iL0QBsfwet0ZPMF29xuz
	 +AJYZtKlcfBFSYsZmJ3dLtRKQLP4E8WAfp8wjzE6UvAWk0Nhzjp/tFbkKsbX24/aar
	 l+Tv3S1crynhx3sSgwNBY6tip5sZCYIerCOVSUWa1xjFwQLlL+7iJkYDAMgjaS9PcI
	 2nGGKdJJgl4CJh0U7Lb1aZbBI9orssyuWIT5Ea+q0YJ2ESai9XFEXLY5C84qfQGgje
	 AAvgBDC10fU2tMRZYjtLQMI+wcQ5YZouBq+lIaZDJDR0ljI4iRPzMmErpm1tCtqCQa
	 8u0T/xyEBAeWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90584F532E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433529358.24360.17407454426604948200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5e195605c1d6cd71deb5869822af6e329413f8a1d348993a0a2fce97c93161
Date: Tue, 24 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774335293
