Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE0619DF7D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751119794; cv=none; b=ry5NLSM0BAfEjqI02Hb7mvF5+FOJGG25eUncJ1dtIv9p3aAtYozPMR7RE1kosQbhC5fwECi5Zctp6tc1hFn79BhSJux7t+61X3KXOMZx31GE4VVXcwAawuaMUQpWhG41YRXZz0ez56jwFRuMpuRLtj8DNKXQ3KHgL/upT9SPOTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751119794; c=relaxed/simple;
	bh=x7jLDbbuOU4g5ulBTIuIKi82NIJc7+5RdrD8dBWTvZY=;
	h=To:Subject:From:Message-Id:Date; b=ksOUp2TGssHtg/99Ez8HWKcPNkIaBFejTnKlaGKqAtwGm34CULW+DhQ6RAEHh7NSdYH3y8XJkPvRfyTddiXkig77QxerK2oy+GisSkwWYIHhaPPjEv0BaX46PU+FibsPIocU7MSvV76rUbEV53gdBPBs/jekxYAHvOzK9EuM50U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYrX1E3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYrX1E3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18C7C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751119793;
	bh=x7jLDbbuOU4g5ulBTIuIKi82NIJc7+5RdrD8dBWTvZY=;
	h=To:Subject:From:Date:From;
	b=rYrX1E3S1uFPrqD2LvJH8H8R2KkTZtXSUWUHd/AkdK+8bngAkmcowzYi+TYkgAK3m
	 QBKht2+NjmsH9xDVELavJzSkRoTXcDecdGl0lOgoN9LPY62nXaZdwvq71I3Fi4wzT/
	 kjAQKmS0vGBv5rextY/jAU6I0OTxtBUefbugNONSFYbbDoSo/jEGmYBAl7z1R7IUls
	 Ylg6/gECrRvK8qnnkyY9wdLdCyKkKdtVotQwsz42pYm2P1iH7MlnQ0yUGTNkry3PNh
	 MixWM1LAaqcKChfy900V+jJUxViScEYUM+vYlrBrClnqqGEXwBUvO7wrRJl2HkHq1O
	 edUeHunwrtWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D2C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111979358.16492.1907832005870238653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70de71647d11232579249be3e1f132b25ad44f013c25e3bf61d13df87f2fc6d7
Date: Sat, 28 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751119793
