Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D192330D3B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782809314; cv=none; b=W6P4hgRdQpjoGj6aaIwE8bGVsmzmLUC94tERWSG4zbLTTIW41XEi30MaySUQlinCMrUxiQpdT4B6QJhyeD2NaRoWhqE8ZLfT7lP/ETkP0ykKd/OQLFY962mXENOCiijZr+zwCqmmBDDFwvFARAQ+vi0P2NU/9/RAaziIWVzQWq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782809314; c=relaxed/simple;
	bh=/fEx2EO7YBNODi+QyUOckCY3Fjej3cFSZQOtOz19SVU=;
	h=To:Subject:From:Message-Id:Date; b=mJhTcW+ZwaLOvT6kDn2a5TSqLz+uptJ+pItG/LXDcNOKN1rJrd5uiobRGjY09wwUdKiYeTT1P+Ovai1AJB9HYCFjgG9aTnttYoM28MDJRRNCiOweTm7vUFHSLiyyNoqRnWWm2JgxKBcNeoNbn9pALVn3Xwz+GFJq9c9PoEbM0zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1dKdY64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1dKdY64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C6AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782809313;
	bh=/fEx2EO7YBNODi+QyUOckCY3Fjej3cFSZQOtOz19SVU=;
	h=To:Subject:From:Date:From;
	b=Q1dKdY64217w/ZdJNsYZap1ttt34prVa/aK6xtkVmBToE5q4e0PIsmpcNEG2NqiPg
	 XQNbEYWiQrmmUPxOOrNdsgL2RjyHobkTjqbydHDq6i/4p4Nq+5gqEtSIXPW5D4uHMn
	 5omY7gmXwBDnfRKDrgNUHX+j1h7R5JepRlGuuhrvNE+5JbA609hYEgoJ8y65zEBh4X
	 jSj+8NAvnCtUU9v3GQ81+4NActLITQ7Cr4DP8xT7M4vEpUsVieyNpwWz3E2OB9hrB3
	 WCnI9Vm6z5+sRtmlcS277dLw8W2I6QMhyGvVmWtkq4A70YMOc5Iwh8u3C3iFCjC6m9
	 PnJkHh+5yvwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB219C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280931369.8245.11678447094130079270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab6820b541bb6feb39c28e27b2b94b3a38e44aab09cebded7260610aedd2a5f
Date: Tue, 30 Jun 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782809313
