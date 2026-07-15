Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3917244161D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784111314; cv=none; b=SlMcMZ4PcnE3+ahuQJqLvhqmOoNU/17uXyCGx/NTEfNeCld3a/xSyfK4z8mEyFNBAmEb9o3zLTb+Vo69i9T2l1+fX6LquVAhb9ibFR/Hxg18wW1PGT6J55shcN/c8upQGliA0bKcAMHA6F2Ncx0ypTTqo0DzZGL+BrC7SsbgbyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784111314; c=relaxed/simple;
	bh=07gS5Rkh0QeEvAnq6QC0AlUmlCus1V2815vuocdz83M=;
	h=To:Subject:From:Message-Id:Date; b=RotgAeQw4zguI1HNlnpD7DEAqxkWymU4mzUrBSjnhwMGEkngX/tduRLuULmhcyPk/cow9h2tJ4lyZIsgl8oi9BwMs6Xf61ZhR7ZWM1PPr2GBLVQrqB6ZISCxwIqs29tgzS8apowOJY0onfH4gBWDooR82fVnbttnonvKScrC8lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AurUSOYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AurUSOYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E1BC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784111313;
	bh=07gS5Rkh0QeEvAnq6QC0AlUmlCus1V2815vuocdz83M=;
	h=To:Subject:From:Date:From;
	b=AurUSOYpvh/34sXf4aEbqvPRQpbbZJ44yLJjZ1cfDtOJ7Vl+m5fhC83uRO+ToIpPa
	 P4Hxf6ayyscZcvUldiIAKHp07xEYNwoEt9YAtIMlvJuQ4zezjV/psQwGJmvNs4xivM
	 DrhTk0GbFhS5bJkFWX9TQanCsbmMo2aliBGtAWsX4bdNCZBU/gP7PgEBiTQxMzsFhH
	 WJHg4ewHiwMLN206JI+PGOzR3Xe0PDJFYqG/HYDUZ2YZBiCoyfbetuj8ykY69j/UBA
	 H4F2CdtG47og9fjSAjlreaZuFfoCnZ7Ftvox6bndO4tD5hHJV2Lku8qnSejHbHj6dW
	 WWmuq1PLscODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5999C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411131373.3851.12227990751205343341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b6bb672c468ac88bb3a4c1c77629e28edc596f48221463b4b98c4c99829497
Date: Wed, 15 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784111313
