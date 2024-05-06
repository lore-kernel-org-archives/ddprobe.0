Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F3D1E896
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714972343; cv=none; b=TwLtKnDoWGD3j8uoW/KIgTrlh6DEjEVBQ/TLuVqCYALgjHXU42rOdwFviJl73GTj7Fk++9Tzg/tQN6I9/0vI23oyRtyohkuLF26HKrbU5ZhIZBkxxphGf/84LyZIec+Q130en7gyRBf6l+EwwiypCdHHcjrzWSodOSb/La6YyLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714972343; c=relaxed/simple;
	bh=7zESa1QfTIveCJ+wyZV6D1JxWwZU+tAIQAfSUWPjO4g=;
	h=To:Subject:From:Message-Id:Date; b=B8Ws5cTOloQXxXk7K75wxYMWvJI6jaFw6oWLuO0/lDlhDuSaqulCojt68C7Ansmtkov0WGjn8eSpndFi2HEc4738SdPr+0yDFt0UxLjDaXmO02p6SbGOpWypSxYGoErcNX1Pl59twB1XiOUoKrfipgXlYvs8J+aP7KpBxWG6vPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kq2dBFhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kq2dBFhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C54C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714972342;
	bh=7zESa1QfTIveCJ+wyZV6D1JxWwZU+tAIQAfSUWPjO4g=;
	h=To:Subject:From:Date:From;
	b=Kq2dBFhPAIbPfZp/YBghRZ2gvE/IQte1rmZ9Pbzq5s9O/MdrRQ/zwA2lgJ2sNY0H/
	 RQbf2d2AKNc0H/xXexhCSnj+6AqncpnYoegxVkDhvLQpiyCscw94u9/b3pDCmOULsY
	 Za1VDpyZ46Viuv6d7FyEJaFGphg2D13ykkL0FJFAHsYdEymmGHhBRZZwaeosBp7uST
	 eFkjJ8A6AcGQZRs2JtMi55DzKs9f6HZDemMBQ6mroKNVeU4nOAY3veimJlhvYj/iH4
	 LQ1b9dM/769ie6YsXbyg3abd/1/Ei9BWqVYarqf9UgE92EqniWoLUwPyGFrZT3OhUg
	 3BbXGbvMlFjPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD4DC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497234277.13132.3369048646295643316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc5e6e2fb8c3bac1f60cdd8d054ebe2aa8de32431aaaebdc9bb5a5ae92a619e
Date: Mon, 06 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714972342
