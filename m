Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D484973AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789714835; cv=none; b=BRKX8/W4isHf8HrAj6ktFdbzEuBU7fA+6OS5/VXmMHTgEpMonLT39zAKaZxRb7LTbvUqkpIQr0qKrE1iez7Cz+YeywwlLXjU2oM88yLEZAB6czj911WWSdbrwAEu4toiWQ2b/Ft9Roje/o9nTcKYsSjgb9yd/Oa0kJpZBsNARqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789714835; c=relaxed/simple;
	bh=dmFLsu4LLM7yFXorf6i8bJzHB6Lpg94f/rAvuyqlNGI=;
	h=To:Subject:From:Message-Id:Date; b=JrXQNjYIWno2yBBBDq/uUUwOGGGcOA5QUy4J7EYgtKM9EqbpvxR4W2P//+HlFjpUAneM+YMOdqJQAUKGRXY54ck2emIdyViT6ynWbfnTYc4OowcQHgU6s0qxQgXVaC1mpfxrs6JlcGVr1NJGx7Knu+JhVjzfUgwCzM3h2PaCAA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3pVH0x9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3pVH0x9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D016EC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789714833;
	bh=dmFLsu4LLM7yFXorf6i8bJzHB6Lpg94f/rAvuyqlNGI=;
	h=To:Subject:From:Date:From;
	b=V3pVH0x9e2u0EYGwwCF3vJgFF1fZiH3pkFb28Xofb3SBqUDf3Nikm9Pzd2cSJkE1t
	 bGl+fDZUJgVv86EtZbpvE2FIyAaWbGKEJDOIFqfsVBXnsRi5ica7CD3UNlZSqAui6R
	 yVVBC6AHEghVSo6lqf8rzoewJhYQze7Z/Vrn5c31nVk1TN7uEcOHBri6oI6AjUiYUG
	 /0hAywLgSLyyOYJTHDNmUV+3nBo0v9wzDTNxezAexYyjgvWZRneKg502ImtFfVnBno
	 T46KfX3rjCccWCKitLj3mnTzlwHDe/Iy0bxalJQ2G0HH5TK5Ti39AWwFaAOBMzv8kM
	 sx/m/YLgsa1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE9EC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971483369.6044.17627996373281171075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dd1f8ce81841814579f27a1106747cc344e57861064211ce1b222324338598
Date: Fri, 18 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789714833
