Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF053E49E
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715057543; cv=none; b=m1fyzap38HhqRpYewbXfykGyBDsVgX4OYatFv6c9SNDrNJArq7Dx7deYyL0oIENmojYcB0nbrn9ZeBd8FvfCFUdeE+KzJueaNOohV+OsrQGiRxONLExitMWQeqHTM0LwAoPZ5ey7rU8EAT43IitwHaIo0f5PB61VVEzcxkhXe6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715057543; c=relaxed/simple;
	bh=l/Vb6gT2jo3VnEnsxbeua9vy54OHAmI6PAgDLgFC1tQ=;
	h=To:Subject:From:Message-Id:Date; b=BIaIQRgcZS28TVAwcB+ysPLGryG7a2rPk3jgzGpc+nzKXPhmOSWglHKRnW0C8I3b8ftOsGBhRAck49gyuMzmU3pD+AR57CjVxkFByD+8wI3++cjNP4vAo5DzbUWAeNHxTsMhP0Drrvpb7GV17C7wWnsEv2EJlpFK78n+QlruAr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wdm9uZ/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wdm9uZ/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB51BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715057542;
	bh=l/Vb6gT2jo3VnEnsxbeua9vy54OHAmI6PAgDLgFC1tQ=;
	h=To:Subject:From:Date:From;
	b=Wdm9uZ/3GlFG0kb7AZt7DBlI+2va3wEjn4cTOe8FMrsFqrlWKab0DPZcETjPU67fD
	 vgMEeui5XXqUe1tq/sQsyiWeL24RrZfNTs4bSxthYhwZNjcYgbm6PBCiqHdvDlft7x
	 BrjtSMIcTyFDNaeD7kMNylzMoppNLyrq+4fIyWnUYk1UNrGfMlwVubzkP1uxkvDsyQ
	 PEUrCZ/soLsOedETEgW7tDFObQGN4dgOyaqr+TIK8EeYaZazRLwu+oo+lX1b8++GAL
	 p+UUeJD1J8pqZ9WIptSUQ+hXbyK13A3tN004xgrlYA4hL+bcRMZ4f+S4pS66QRbuKb
	 MUhe01z/5IVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C565AC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171505754277.3164.11600260330480506496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4df8e16bb2e60675199751c739a20d2c51f070498438f0144a12fd2197e9e8e
Date: Tue, 07 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715057542
