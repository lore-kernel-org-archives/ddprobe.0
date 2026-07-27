Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255B33F7A9A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785171634; cv=none; b=a6MUodVw17S5iiGt3YMIvacYMlVA4tDhT5mQo4MaNPPz+2e0wBcwtx18TE3MW4W2XYwcr/lXIt7FDqija6HpMFRwYqwJnf5i1NgEsqjB39OUdyEq6+HCw6a0FT1yj4kNy0A4uLuFj9zSi3H5EwK7ORzRS9fKnttVaugDTe2T030=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785171634; c=relaxed/simple;
	bh=xeaOPRwNyXAM4u0Qp8wtAp7pNxNWDGjNLDb0jx394GU=;
	h=To:Subject:From:Message-Id:Date; b=k9/DLhWLH0C+pm5Vej1BWBwVJBywKDHv8j6EeXPF78z8fAjAZTRZ0895BUjR/Rf+Jp4k0AnPq/36dk+UnXaigJECPoXax3zzq0K+lK6Ivvt06Q3DDBaUtmwGOpCP6gLcz7gWL25kMMRQ7xA5czIJhB2Cvc7Q2T72G4HBesn0p24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPPw6Xd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPPw6Xd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A00C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785171633;
	bh=xeaOPRwNyXAM4u0Qp8wtAp7pNxNWDGjNLDb0jx394GU=;
	h=To:Subject:From:Date:From;
	b=hPPw6Xd/1doUFFkKHr/G+to8ATksHD+8DjJ39yBV9IWx6IuJBvOhTfu/Gjw6r8wek
	 OabBKl+fVT/dHrQzPete+vAlG+H/o9C0yqFfKsp/5iAM+NkK0qpUCyl0TPzo+o882Z
	 kV4Hpo7RQjtkM1cWSFpGi+adxuwh9cgVxdNAN2BP39HL1t2fn7Dra5ApsuuFvazVj4
	 QqOJRiUhG4x8MI+ckpQI+YBzbMhXjHgZqGYfhTgBCLWWUfofYBVQM0pi+02mEH5+Kr
	 M5MzIR5YvI7TYJltn1HYEDhiJBqQTNRnth5IU8pEeWOrQTaMOF5IbCx7N0U3ovyA9H
	 iQulgzj3ICJ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF276C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517163369.13853.4074673229078000777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8f0e0af66945a42f5376e2fe11be44b1430e9a89bd6c72a8915d161a7eace7
Date: Mon, 27 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785171633
