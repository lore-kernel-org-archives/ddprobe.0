Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE85211C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719453203; cv=none; b=P9YDh/p9M0jgGxRm3jiZ79sLf017CUWBpm1pxgJUFy+lrdOuFTO5yUCtu3yHzf/inRM02P4ZedXtURSPaYpQkQGDXejw8/+TKc2lGSzzksPQ8jDc1YwLh5iLceme8R55ZlhBxXwR0Nl4RBw35B3k/WaR3EolMKRZVD2DkMtygYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719453203; c=relaxed/simple;
	bh=h3Oa4cGfMP0my7u/15CI24P52yK4kMtBBbLfCEF20ZE=;
	h=To:Subject:From:Message-Id:Date; b=aSbkhroCRbUcqaBscB6fOffwT2hIkpn8haZI4glWNsKzQM0AAbwyAzMnck9SCSEtiI8xXOLlUnZ9RMZlUufhKQdmDRqVioNktGlthHzo9p6GT8D/KAfSmZZv9/PdK1ehtDH948x7C0YuEkj6OhL8fc4ZyimaepihxOySA9MfXrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMnFXooc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMnFXooc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF49C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719453203;
	bh=h3Oa4cGfMP0my7u/15CI24P52yK4kMtBBbLfCEF20ZE=;
	h=To:Subject:From:Date:From;
	b=NMnFXoocAcDYsT7yE4djEpsKloMu30wdfPjKMkDZBD7Bcv4EGpInO+/MvkVeP2Eoz
	 bRzp3Kh5+chbYeCWfITBLFMfpgiQsAWj6TptzjieIiE5QbUwOc/VlcoiGN4Mt+E3vN
	 Sbjl+PE2blAbsKYAZx15R1MnDLn4ALPk6eQ3bw4LKupgoi70vKvB2pgXOT9AgjP02A
	 pHdi67oNq2Qj4cK9hiicjC5oGPG8w2oQRaaqc3VzifD0LVb6+SCSf0BQcFNf1YCvsg
	 X7aYPb1Fzglh0AtleEpRUZH899VsOUbrFQq/FIQaJTLZrrSTXce/U53LQv7Wtva07c
	 3S97SuEq/GSiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00CEC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 01:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945320282.23596.11989502071897557481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3999740e83a12745b146a76ca940629d75f71979bf33f67093bf139d387b1703
Date: Thu, 27 Jun 2024 01:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719453202
