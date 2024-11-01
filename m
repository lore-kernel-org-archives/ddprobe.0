Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4091A14E2CF
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730430954; cv=none; b=fHDd1isqvpWDO/8PvXJRXL2Yyeha1Q0I4QvffjYdakjo1UJtdVKn8I0qCufKJfopjZsixkN7jc331R1ZEq4Uc9bXCQq/bms7/k/HcQ0kxUaEFd71Eosag3ilb+FDWIb7j74IUytg5oqmgYsqLA85YLsq6R0AMr30Lq8PIpGGEMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730430954; c=relaxed/simple;
	bh=QnvLOpXVGvrxdQQUJ5gwpC4GO97IplXuxCXKhfgJYs4=;
	h=To:Subject:From:Message-Id:Date; b=tHNfA55364eWJnoYlPoh/hnYrXuXG6eHgmn/DbfD1jz53yAq1XlMPsDmvYKkYcqZAw4tk81aD8qKjJdXQerITWgyGuQ2GVZW0ktzAm39TioCq9KJ0vXQU4fbV34dYmfPu8r8tueQG3KITl8t1552aqeG3joFIWH29Z0ByEiR828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbqD6fCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbqD6fCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8966C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730430953;
	bh=QnvLOpXVGvrxdQQUJ5gwpC4GO97IplXuxCXKhfgJYs4=;
	h=To:Subject:From:Date:From;
	b=rbqD6fCYYcwjGhztdpRl0J3BtIkXvKgAhPY/m0ujousEVOw5mbtRgdBe0eAurARHh
	 6BKK7wdDVLLQSSNVszXC6kKkh4S51oT07zDVr3BngQFGFkVfVssDS8imLOH+gcnWZp
	 hHrFfpDqbLl9NwPHa6IF02py3hruWYk0KV0U9BhEK8UvMYJZSj5eMk5+xiYd6kvS5K
	 tfUt0qcLI+9Ju8dzi9EwuM6joYJa6awaYRtiwt/Vw1hw8wm2ZUOtaFK8LxJ4p+MQod
	 DOkKhCJcCrwXlhA/PjbINLHGZk24Ao9AtccnzEL5sKJOWS+bhS5E2zSKBu4l00HpVy
	 DruJB2WGIvPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0121E67498
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173043095362.17556.1368651833754225658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd57e63219c43eeb14f47515cbf75bf3429d26b9fd4295a0464d07b29d2390e
Date: Fri, 01 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730430953
