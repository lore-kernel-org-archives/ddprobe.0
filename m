Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C019330B19
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592294; cv=none; b=WS7G4yXkJZGbMtE44l8B8qPko2zZaBm+wX4BpkXOSjoe+Go9CDI6K5mJXIMUX9tGQ7IZAcCLGwATDKSh5MCHzbE0Vri+ge6hVhstcIWNypfXMGofZyPAl4vyUqsR38ptACOpi4wKnKkTjf4+xiqBvh1NCSTVb+WBn9mwPmO6eLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592294; c=relaxed/simple;
	bh=WM33Pi1rs+35Crw8yfZ3/9QPyW5bLQJI+ZJT1s8auLA=;
	h=To:Subject:From:Message-Id:Date; b=phRznwLGJkw40YhzTbb+CnmC2H5vatjeomy6HAXli7GyCKgHrEGwZZohOraVV9Tht6KGPlTUED7Fim4y2zsDjxN1QewO250+coQG5q1GuDgT/otC+jl2CbGhm+bmmM4pbZ2E1Nk3H9omRhDRxeNhv+PvTMjvQv3lelmQsRSrwcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQePOR1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQePOR1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE792C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772592294;
	bh=WM33Pi1rs+35Crw8yfZ3/9QPyW5bLQJI+ZJT1s8auLA=;
	h=To:Subject:From:Date:From;
	b=NQePOR1AVKgZzWthKT1Gn3rPtqhJJW4C+6MJ1hRHN/6kU9EmRpohIlgfRt65n2Ylx
	 Fo/0VM+knd7wC2PNi8jix5lzueA2Fv1MIdKJ3yK9QpCc9rsIPSQBQ8RIPqHux6rWO/
	 1foHl77qOe0Uttm/93Wz2IA2q/Avw7kuRun2YoZWQaDi92lTRlltoLqQyUhrZLDvaZ
	 yHDrkaRx7ZbnsJIYWUPje5ngCn+GGQJUaEuCxifqr0zOAlWkMUb6ECbLLQ0X/fa5U9
	 tufmAoVBzBivPNP7ynUjPKuA6haq5jnZbKjlZVa8Q+3cPNa98jR1vPqheZPcyjIV4+
	 i8Ss5hQVWSiUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA80DEDEBFF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259229374.19153.14827768922727487550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c91fd4432c5eaf77ac54b211f0cb4807f5cb09f86bc841565ebe38260c8d46
Date: Wed, 04 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772592293
