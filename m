Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57392580EC
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744049993; cv=none; b=fHyhw4OyMR7F4dEjQh3pPB/gearHnA5ZV8WWqM6g4+NcaLgO7ECfpUL1RE1m+MqG/ueHd2MSUgnJfkBRKPLw47IkJa8rLAVM+Vy11OgpASCKKh+vluF2gigqhmD1HtQEEk2Q7xTqsLxA7+TcKiHgkGYdfoF6G4r8JPfGMbU+z8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744049993; c=relaxed/simple;
	bh=B9OQwebE+vg9emW0o9t7f6nNTNOWzEMJ2Idtuk5FZXI=;
	h=To:Subject:From:Message-Id:Date; b=YJ88D2SegjCytSkW0cjEeHIfSDfDB65a15Slh9b/t1v0bV7SEfRpflyFx6VK9OvinKYf0+T+Wnp7fIboZt1tHXzO57oZrRXieD3zy39jtpc/G1M2D126aX0kvVi3I0ZMTDu2b6Xek3HDWh+DI6g+evTsWDs8kKcSK8TN+oqjggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGhgJwqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGhgJwqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DB2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744049993;
	bh=B9OQwebE+vg9emW0o9t7f6nNTNOWzEMJ2Idtuk5FZXI=;
	h=To:Subject:From:Date:From;
	b=CGhgJwqfHm+e19URfMRyL37sEk46B6FWNSp8cobZQeB3L/LxRUcsp7qj+wTvXN/Gd
	 wTFne/cZq4EyETJ0D3nueq2A1hGoB6BqOcJBEq53e/YQIJZCU3PNHZGYR9HqnIO2LZ
	 2guoT4DG9zwbe5JFO2py8fqY5S23qzVlJ6PKOd/YiJWmoAsIy9SSpPhg9rxUmFrP24
	 w62+ftoo4d+QpbaeZI1MtOEJIhTD/vGTqooz2XAkdvQ8O052wxZatYZVq/j7pPMX/6
	 kRitEYH+wJsbRXOI28u+/+UODBiHH5P3BVrqYcs1rrbmzCdllk4A6ANBj8issmjYWH
	 /rdFi0jQvi9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7039C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404999367.28783.15460267580421284935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae14ae988c2b3061ce3c48b02c178f4cf9e2ba7e732186591f5278abf79d03b0
Date: Mon, 07 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744049993
