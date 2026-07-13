Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5CF337B81
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783955914; cv=none; b=g/rB0tyIzz6y85j/B41ji3l/8qucCganVezb6zWYjhObK4QFCzAxzDZ5Y+Rn3tzmf3khkViPyyLjiB+Cw+lEgKUg9sddf9D5oJjSGbqKL/ELiCT8w4VuzO/o98dHcy8dzR7RgZ2Q+Mned7LND4/OtFiNfvMuSs8KjOpR1nWDA7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783955914; c=relaxed/simple;
	bh=a9QCSV85l+SOdofZkVEXw7i/q+lqWHU503QhYFMM+fk=;
	h=To:Subject:From:Message-Id:Date; b=srFuPlzKoUN0fd3vnYodOy3koKdEV2+WGz4NMls6+YUpvO5SOvler8OUBOzW1uoJt7afktONzAc4RU1RNznd8OmWViTr+9RCsk7BwOJiGnW4ycQevuxQkqdhcI4Y/ORnvyZ+xU0L075kkyf/VWf0HufWptqc2LL8Yd4TpLhyQ8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0Bu+N3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0Bu+N3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF146C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783955913;
	bh=a9QCSV85l+SOdofZkVEXw7i/q+lqWHU503QhYFMM+fk=;
	h=To:Subject:From:Date:From;
	b=e0Bu+N3sKzuJu9aQxkToYfMx3c0/gW5g28epPYbNgNl0Qoo1kf7dI5IG5KOijfKN1
	 P0jlvdxG/1kBJo7/r3qmjX0b5XqHms0nMxI64r47s+Ce0kRCMxy+Y28InylsAMlrHr
	 WqZyb9IsrxNlidjPhGIDAOyaC97/lvr1oYBmLcm+klgUFNo3aXvFzEc1o94kEQCYuS
	 wwmdePP7EOnGemC7vLOUm6Vr9fJYX9HOeo17Op574En8PqoXk+Dx+qg2YIwmGrqsog
	 7BYs+jstbBRensFuXCWGyOdtrUnkdD8yAVdgTCC9pvCDh4gnFftPWOpPmvqvWbJIj9
	 i/0ZZW0TqP5vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A990DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395591368.23327.4952821717409120738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec73dc8368e7affb363f783cbbd0724a4f6045bd4eb02ad400da3b15a7ffb2bc
Date: Mon, 13 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783955913
