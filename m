Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BE572627
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772013894; cv=none; b=M9lYXYcQvRtqrKKh9TtQTeVgJjO4GglN1V4tlyozIxtG3k+wu1HstdyOJU4ua3M8EotZZLvLfQlNQF6jD2eNeTdJKLznt59V0qEbb+0r9POx60DCIscdPw35p6NS7t+JOCi2LJfa3hlt7UyMBskB1gPmRlMgsLCIX3Nbyon4up4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772013894; c=relaxed/simple;
	bh=AtSqLtEgydeIqKGnTxUC+8zt7RHq7cUbOTIQCWrWyQU=;
	h=To:Subject:From:Message-Id:Date; b=O37A10oVlZq+D40Ls33MfH4JGph2nyTvIiy+Sqt+AnW91JhgxjgotpsfIJaIyFWSZ93w/ImjoIM7A7XnsayHlbekGLpuq1n+qRmRx0aS6kqVccTLQKa/M+H0NhyuDgsNqUkbbOV6NTIDtNO2tUBT1bE5BQiNQ6flkuBK5FgJrRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/SB7uzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/SB7uzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A14C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772013893;
	bh=AtSqLtEgydeIqKGnTxUC+8zt7RHq7cUbOTIQCWrWyQU=;
	h=To:Subject:From:Date:From;
	b=R/SB7uzILiFvvgXRies9zTsUgjIIaqbuOkNiirg8VcoLRSmBhvLMftOuer91KaNmr
	 P3o7oEliLuTzud52jIlUcb8BNMDmcw7Wq3+UTsIfgTwSvRoX4/qKudlsxep5b+BBCl
	 LKTPI+jjyjt37Gz27yBYvvrJVyjyed15jv48VC+zDBd8lLimMpMHlcsVXq1APzIGBu
	 tgN1KHK9SMZwATKT/WBxq525R8LNl3D4Had2gwgFmAhIzeX3ajs4RvM3FuI8Feucre
	 Fsj8FStMS2PwA1WpQfW2uG+HScg3Y9JmMclH/SLL/hv8lQxJxuSDQLMdUUpjZIIBv1
	 fv8gIQUH0d3dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6C3EFD239
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201389362.8664.6502154080580564799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043a9d5088ee4b33104aebcbf55dbfa4bd95af40eda0f7a83830b27f5b70bc60
Date: Wed, 25 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772013893
