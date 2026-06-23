Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7633F3B14A2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782251794; cv=none; b=fgbPpP9J4u2hw0KK0Bf1xT9gPMXdP/gkdUrQuZGEtjN82Sk1qXhgGF7AzxFukrQMJ3v6+Pd/bec0yC4Z9ivlmbKXmi/M0hy9AgaxZ8slYUPuDLkWx5NValkpyP9BKf2RdnschFwfus5SlePLBk9ty4WGeHY9bonlUEAoofDGq9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782251794; c=relaxed/simple;
	bh=5pmPu+HrjXrUYAozyMrzOqhag5Bd2KDLVVr/Z1td5lk=;
	h=To:Subject:From:Message-Id:Date; b=HwdFB3uBZnujD7Ru++KpGSEAM8UpESx7aDj+imaFVchyIYf6mgWrlSFLptY7jnaYfpoXObDTFTp3W8JcBLUtHWkQV8XesWB2mybd2M9RmZ2J4xIW//WiOlqoWELRBnQ//6+iIbHsf8hfEAheAbPUHDlyCf5W3HkUBZIJb0bpyCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQylseOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQylseOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA54EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782251793;
	bh=5pmPu+HrjXrUYAozyMrzOqhag5Bd2KDLVVr/Z1td5lk=;
	h=To:Subject:From:Date:From;
	b=RQylseOPhgOF+BstSzsc23KFwwbA7sk1DvHFzhl6nvbpk5Nn3OzbtJoL85Wn9cNF4
	 FaGR4AGEoPrgfkrLsYnvoD1GUxZS0nH2DHTfw+wEs9LthgnwfVd46sl1dg2ayHzF2/
	 i8VSO3hm75cBQMp3e4sYa1AD4l0hOpoKn4jkJpQj23f+KeuOVVLJFLOGgvsciiicsm
	 CefcVLcDyXV9ViBLih6pgB47OkSPJ+bvDaKftxXk/jdWszF+JnHHX56zIihVtl0wgW
	 xqr17uMif6zoZIAiDhnE6kpjORHdUc5gd4qK0exGjXvuhjeOaqPeNNohmxETpcAzqs
	 +rT7CfaeskItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9472CDB47C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225179368.32597.11898270802846095648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c95b43d2e37050c745fc96377fc7f6ba17c21157d3cd16e0bdda16d3725f2b0
Date: Tue, 23 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782251793
