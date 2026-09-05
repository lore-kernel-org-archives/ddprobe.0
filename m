Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C1A4582E7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788597034; cv=none; b=Zta9b81/3vsz4iewrA0Srmn0OzGjULw+P4POH7DjmoApMrKV39ZZrXjDae6XJvAu21AbBHBWpDz+aR1+4AjSoKziILkiOHAN+RTnqFcaF2dRN1R4ihKxoyfF4waH+aAnLmYwwmoygN6Mh6/38ng2XO8JBcWcqRq/aRknSqSrMCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788597034; c=relaxed/simple;
	bh=qAQILH0h1e1OgFAWdY4x7xoiOnGG7yrmPy7CPhlLkmE=;
	h=To:Subject:From:Message-Id:Date; b=oo5PTLpQ0/BsKsq2b0TmYx4QsmbUG/c50A/KV/SqBWhHffbkJ3QpagmlJLUNp412y0vOdB+qlRkVNTRamAtYzugt2FV20aFwk8YQay+THFK8F5lVHgzbTocdE7Uy3rkDUKT8mMSr3iBTMMh4A5E3psjlJsGg16jK5jIj6JYHIGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQLDWm5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQLDWm5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D54C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788597033;
	bh=qAQILH0h1e1OgFAWdY4x7xoiOnGG7yrmPy7CPhlLkmE=;
	h=To:Subject:From:Date:From;
	b=FQLDWm5AXRrAKjdyYHyzzuAi1zDzvWreDWyf9PYLsEH9OxBzpRmXebOXM9FRfZ+e4
	 zBvuW1+F8O3K4IRmMXArEmNyO6QdPPYCxIRN9U3JDmk93MgX6GzfY8AsA3gfhTSoVN
	 LE+kKyxihhTEIu6yVbxDQ2C7fdPdLKfB1pAjFgM1t5/FR/S7RnkMk+8Fy4cEdO+bFe
	 HqbwCFrUPE4S1axoPVXLXIDTAJLtYN9DZztbo+cT15ErkTXDXtMu3LB0PqzmvhwcfI
	 V64yUExENs9XjemG5TReUybCx7t8ssL9j2bnOQf0sbaaIiXMaaW9Yh6VtFMoN+zpa4
	 9MLXnd5wE9XAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2419C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859703369.10835.6776772136077569140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f09b9d8b97bc2274231f88ca4881555d59ae63b934cd8352f9c399b5e246895
Date: Sat, 05 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788597033
