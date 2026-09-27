Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AD439794A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790492434; cv=none; b=Jj3UvBM1DqSF0XIsQsA0U7qvSTj6/rGOwk5PHZCl9xsqqcVRVP2QhaBmeAywLPkFmYZyha1t4OnzjBOyqUTqFDbVNTgeuGyuSWGCerBAPhMAeugMlkam5kPbTNKqnVFeT5ugItA8yQNgGIfm8tCeHMNTtI6MztbRYL43191fZ7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790492434; c=relaxed/simple;
	bh=tufMe21NX/uJMoDvwVWsnh+bWPphnF3Lcb+nHunzGDk=;
	h=To:Subject:From:Message-Id:Date; b=gCX1+A4xpeXfVRSMP/UX9ihZX56PWv1gK7i94r7N9wHJFB4fKvDeNOqYFvlaLzU4uoj0GlfyH16DA2rbGuUXApivEWqbVfuCnUhEfCPuYtAlLIBe2Z9Y7h4FNSLIM+6Daun/u86VL+iGohAogIyCKr5dSZZldRRVf3z0xMwlgPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoYsaSSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoYsaSSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44C5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790492433;
	bh=tufMe21NX/uJMoDvwVWsnh+bWPphnF3Lcb+nHunzGDk=;
	h=To:Subject:From:Date:From;
	b=SoYsaSSWGgFG0TT1R9K3gpTZ8T7qNrxfsy8DG/3g8XfA97Q4tNk4eHJn4ZmSIQqvN
	 lRo+7Dlsuyvt5nGjdhRblYDIJG8X/thVfH7V7vjvtzA1Uc9WOKgtzU4t2MHN4505a3
	 ZJpMHE50zBM16WTemtA/nP+o1SJYTg1EX9XtNkKXuDyP3OSlq9+Iwv9GZxO79qEzwC
	 +X67GrZgd5ZtMfGUWX7nEXh7Ue1HIsI4Cox236ddLqYW/DzMQUweH2fbP+kIE8GrRL
	 Ghk6yBBk0UyLxXdrc3TXLdrb36ap2kUqHsjVBaoID9lTd+7uoK8BmO5TU5Pk9uB4fm
	 K7GaE2uJNZxww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B42C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049243368.32500.10671111310355439503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e108dae6110ab2a841a9cceb68f1fe2727f177812ddd6c297e81c60a3bb8323
Date: Sun, 27 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790492433
