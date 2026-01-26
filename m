Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2159D2356D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769450034; cv=none; b=h+q4UNSQAUkNoyfYbfPT6mE1AA/HCbT8W8nizMv8HlyhnRWvYQHM5gS8PPxWnzmnYPbghIyF2IgCW6SemhavSoRm/7cs6nqbJh6e0zK6A4lDJluntjB5vK8sI7emjOjBmdtDvLtAJFYIxpM3nYSeeKF8NXO64ij7unQVY+lTczA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769450034; c=relaxed/simple;
	bh=ypoDN/d64m04lb5SKayFb8kAGMc+fQsPgA07Dskot6M=;
	h=To:Subject:From:Message-Id:Date; b=p3eB+ShrzdVRErliYwlollcj/w72+pjIj3zKVkd3zuf2sWalTGCS0qLEa4lknr7UdBLU/n1LeS1BzcPnMw723aqhOnJYVqfqbR64Of+zA3VSbaD+MK0pSfnJW6p5k6U356szIkg2WDZk240Dp8pjIdODItpZoDNOzVBPLFs3VAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLKxm8Ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLKxm8Ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AB4C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769450033;
	bh=ypoDN/d64m04lb5SKayFb8kAGMc+fQsPgA07Dskot6M=;
	h=To:Subject:From:Date:From;
	b=cLKxm8LdzbfE35P3Ravk+KVth5q7tIQA0VsjSMrmK58uWmJ3RlnEgHw2UqnApG8Ke
	 R0w8jhBYSJwzFepgKloFlKBca4rzyIMYhIBS/+4eDBvhUGPoecI+tlJagz3wOmb/Ve
	 ikmT0WnrVGW0HgxRoAiCJvoT/gvwJrIZqtbVljiOIsSb/m/yP0fZNyi1hwlKeZrmTM
	 Ko2e6xJIeTIW6HReVQtEm0B3ypVYWUWzw33FSLXdUKT7s6n5V076n+t6ZB54KlbZZi
	 xsDo8Y5YZlTMZ1pagmtVAp4dAsalNPIi7A1NtZZCGgQIpbOyUbX5B4h3ii6L6PsEYd
	 kseAEMOtsWopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBD8D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945003362.25578.1589064469682663932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c498b89677289b280361e010615dbc7f980faee3de5af10a7359c37ba7516ab4
Date: Mon, 26 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769450033
