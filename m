Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A66357CE6
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785655834; cv=none; b=nw1K+NURUZZBjWilQdMrEeyk1yBNmUmP3UDlurb8fADAiQCZOCiCVZXjo1h8P3Q27vlYuc5RL9S1Y6oGOqUf1PKuYTlcywvIByorws44xRjB5GvexYuYjxFQGZp/G8NLWYImj6rAeqF0fdwBlzUNgG9/Nb0zBG6m+s08yEyv/T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785655834; c=relaxed/simple;
	bh=Ao2GNjuUncraOuFT259bi49gJqEkWmFULlittEeopnw=;
	h=To:Subject:From:Message-Id:Date; b=qKYhzmTl7qwGpFVllrXm742LHeP1wvbFvjQ9Wp6Ga8GGhkCN4COlqCk/dbjcTOgY2JzIO8ik4gaLmTPTjBBkD3gTi8nCNfUGXvL4R4fhz2xvKZc0xVQ5kHLgHPHOVpqbiihDdIPPJYo4UIxA82ZSlKgWndModLaFqEYQHVtX0HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsS0RB90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsS0RB90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB72C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785655833;
	bh=Ao2GNjuUncraOuFT259bi49gJqEkWmFULlittEeopnw=;
	h=To:Subject:From:Date:From;
	b=MsS0RB90pyZelTMaWYPeJWcSKxElzQizfn8/0WSgdXzWLjl+RJCKe/MQNUwS7PelB
	 EDr8Z+w+4JERYJKEG0T8epT+13vYX271Z8Ba2k4ApcjXpBbZhAYIYbhJoOOXLX5LGv
	 Cyz/VaWuzO1q0ZC0AkTtVQQMooZnXRMLdXNVWH2sk3DJyaNY+snzbEBDYjL/gUUgTM
	 UT5SCWvRA9Hz3YOEv1nr5uaSrRjoXOHd2Tf1i+mcZe0wTzeTJTYsuXs95oPSj5X/rI
	 Fc8/LU00t2NPvtQ6OXvE4pm8ebsX0KRrm/8wYMjIFnIN59E4HVontt784DvjDQ1m4V
	 kpL6TDpyDBrfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC6C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565583368.9754.13630442417064918543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5441fad5a49e60e66bdfa5b9682c7f6d2fb12cf3c93876457b7a6a783ab38970
Date: Sun, 02 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785655833
