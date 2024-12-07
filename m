Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C611E885
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733578554; cv=none; b=IsUuuESdU0/fIUWWHzDE1LHFajGDVNe18GU9fktaV6ayEMBym9CjweZ4IlP/hYK1/tZmIA7h21KA7t6thIi4tyZSJ69yxR8TIVyfmG0kxM77OWTDzuJwFZHneUD1gTKN+Ak8/rCaUMAjcMUiDIC7KDbTS5J9eprAf+c3+Trc5Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733578554; c=relaxed/simple;
	bh=6TN/mHDkZr/26Wt/eMHDL/ZxZrJlLP7aephME0piWb8=;
	h=To:Subject:From:Message-Id:Date; b=Q6EF1yxbc1MqJLbgCBnwjS65B5T4P2xChQL0II2+8GS7gQYMr7nYWucpghNsBwzXslOyIy06JXyht/q94jMiLYojls3qTCa1Bur9iMTSFLHCSGwL/7yuxemE2NbQjoOSipdzQQA459kqwsJ2lwjnrGowXVZBFc9K0bVJRHYh8FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv0gIjxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv0gIjxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA60FC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733578553;
	bh=6TN/mHDkZr/26Wt/eMHDL/ZxZrJlLP7aephME0piWb8=;
	h=To:Subject:From:Date:From;
	b=Fv0gIjxBtFVFnx8bdjA1qtzmJ7J10N+dVujVaszFFVn5T15aFKWmUGOZPvBHpjyXL
	 6MvjTvrfwHxMEmFP3FfzHlUlr/H/iTgTxsflQZqbAOI70TNvUGOoQTcbRDFZZn/Os9
	 /xzZ266oxpLkgWSNqHuLCTSN3LdtHsel6fyDHqT99i3ndX4mvt8CAXS/ddIuskMxRJ
	 owGdHSgtupqGo32hAX/+8E9z8OOC/EEOG7956OTQ5TXi8yn8a0wx8PVQ8NY4Mcuj64
	 vJWYFu/wlfStAhVGAqkC+w21DaAfDfSit/Z4UWKOM+DHMjVEis6a1lXfOIPSAJAhwV
	 HHDWSW7EbjZCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A232FE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357855362.18333.8967735240338980150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c4a47b525778c1ca19b86dbc744b43cbf97b0f19b562b269bb47e5b049d88a
Date: Sat, 07 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733578553
