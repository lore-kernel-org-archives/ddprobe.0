Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1D71DF25F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768077834; cv=none; b=ZU+QUzQFVtX9wPSLuLG0+7ZHHcWAWRsTN8foEuocsY+HcQhiFCFbYlmr2HWEzeoM4PyivBiBU8PkNs+wt5gXZDCdXvSvjuuZXD/hyNZFNTX4prN9TqEFowHlpx6FOAYJOU22yitJ2TFm0XKy7LZtgD7GWMRDUBHuPYTafgd5Xes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768077834; c=relaxed/simple;
	bh=N2iq49YpGdj0ZO96Y9u6ElTnGdrVhio1FnRmmMU6ZZc=;
	h=To:Subject:From:Message-Id:Date; b=WLtn1DlXFihSteS9chwKdqr0esI5QXEtNPCL/sTu2hiMviD0uOo4VzglUM9coWh6QWx78S/5gqsPxg4DqJZLJ1FaSn2daoo67EFSrg+s6PdqeKTUB5VC2oOT7yZG81FuQ7DBB1mwqFNNJnFhAnqMQxy4yaytp84F2qoC/btypyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETHDrCD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETHDrCD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4740C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768077833;
	bh=N2iq49YpGdj0ZO96Y9u6ElTnGdrVhio1FnRmmMU6ZZc=;
	h=To:Subject:From:Date:From;
	b=ETHDrCD8W53o7GaV/oKfZtuWzUUdHW11nxxdH4FxzMMV+ky1rwG+PAUv0Tq9K7IoO
	 raKcVEoEdOjn1/C6CG9iDA1ToY+bx4SUSMJqAymwD+p2wz0gmTdyw2xx6ysfORruCH
	 Je4jU+b6dyKYB9kSOkxBa8KbfzNPrMX+JWCP+krHz9uqCl/U1hyYa3/T76Pvgq3dV/
	 +sGSDQvdVyoyEKeYZQkAYbObmuX6WCi0NPy1+6NDI7MWccfngjfytaD1/Kd7t9oswh
	 93RVAOAYbPLbWV9EA1/XYouR8g03iljWDsDhGvfWhY7p2YhzmDYeiJq+txTBmU5s/2
	 OxuaAPNx9I3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A64D25020
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807783357.24355.17985325229933212649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956ed6a545768acd005517fcc64ca622ea00c4f494919a18df20e934920b969d
Date: Sat, 10 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768077833
