Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6303D3C9ED9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785747634; cv=none; b=E4ANC594XOwG+UobHcdv3f2TnuVYd9aA7RWHZ0Ky+0dkitPJeB5waoQYjiM6p4ZDMvSfi3W+uhGLGY02pc61z6+sASf97KDxxjRSA28r3JqwAVok9GpMJx+wYjf/dzjiwTkfuTgpAb4p3ase7DqUf/WDnmaDoLNf8ofPN+rU+r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785747634; c=relaxed/simple;
	bh=ETORLHss2OP9THD6wIDQMmT8vWkOqFcwYyzBnuLB7qM=;
	h=To:Subject:From:Message-Id:Date; b=YlI5Jv8Thsv3pt+/iiNFtltKRHStOQ3w9zFxTbt6LBBYf+kjysRL5jb13/5qwklFuxCm5Clxaos98UAcEpTGlNNwvAw1dznoMUgYtsQU6pVt63Ch/MQrBz5KOIGmTtRarwPuy6oiIVwvxJxRaEwJ0goPzH0RTijxvhqmlVsgtog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCjYnAC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCjYnAC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA792C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785747633;
	bh=ETORLHss2OP9THD6wIDQMmT8vWkOqFcwYyzBnuLB7qM=;
	h=To:Subject:From:Date:From;
	b=fCjYnAC1GCahxYJfsqHnyor3dw7Dx2tfdLv/lnEUIqJovYLfrH8rwltQnUpBg/BRn
	 ZOkGxfEtUpO0FjuQwnQhGBZM/O+MMY57WjZ4AGciO54fbXsxz7ivWGufyw1EDGQhir
	 4s06uu27gSCnK8kHI1yl9k9TRyULF/NFSpjiywRQ4rR7ZT/yRwO+hVLp6AVjH/herF
	 bH/BvcadmNEsk9oJ5GITvHh/OSenMdlgl4jruu2eO8zUwa91ZFjNQI4Ns6uAfGHOFS
	 Hjp4enJkILqByS6UkeVp6I1kiV+2oxUZxizzH42FmG8VfJTuGXjL91V/lu7HKc4LTr
	 pA7LQdem10LNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7FDC55175
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574763369.21692.4753559012112741464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac67dc730ff8988900a29836c8a385c4e0f1094af0926144faaad18506d6820c
Date: Mon, 03 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785747633
