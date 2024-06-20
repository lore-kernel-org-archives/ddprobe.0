Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A8320B35
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718901623; cv=none; b=JY6H+Mz55Y3V9Uo1yrm8X9wq/f5bgLuXqXhZcj47ZXb2Jz6IgIKXBB0TAqkSyE0UJswxFR5rPr/0JWa9cYnURiEkgTqw9nzyFqv1Fj+xFv6TDxGZ02SgQn/DWAHWxZGd1bfgci/CRD9dB2Gwx1Q4ZSs3QFw3w1PitaAzASradRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718901623; c=relaxed/simple;
	bh=GeixkCo3R3jBPaFg1ykFPRnHXeWjnOgbqdb4sEdOpjM=;
	h=To:Subject:From:Message-Id:Date; b=mkhOs2d1f4+fEqOD0wvUookHLS7gkwWsoZ5HAXKFi9rjwy9Dg7aW+IJQ6SFC76laJX11M84BGa/tG4JHzszAT3xEJCMw8yXpqDr1h0Fik74IwyFoOSrufHXMoAWH9ycCR4O+oVUSxTn8h3Kckpb1mjaLa7swuF3R9xs2w/UbmGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNpyorTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNpyorTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36F2C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901622;
	bh=GeixkCo3R3jBPaFg1ykFPRnHXeWjnOgbqdb4sEdOpjM=;
	h=To:Subject:From:Date:From;
	b=SNpyorTuPGrCyi5CzT39omkIGECZejayma+fTbErWrh1S36cQ9JeUFNFY8t9Z0LGm
	 3UjqY5ZW1t/gaf/FnMkLyyO5JFNspXo2245cR7fWr8UkSSuaogBY045tsKdecWOu/4
	 b0pCGNYISDA5A5LPKfKqBxmsTMyF+WniGxw4U1PeMZHDb1nZUgdSZEZmTAq5IunyTT
	 ZkEPvnTFoOFXJA/Jzv7dReOce7PXgRQlOAmDwvbwSy9sm34wkqJ7Ijk1vEiPz8SAI2
	 GWfPS6Y22nMuVbW0hBvYgoFufhI0SSWQ0sJJZStrjJzwtuDxlg8CMnOkwOAmEMnk2o
	 VYKwjm5KZGMaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4D4C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890162276.25897.5714992302393654254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c1a4da32210adae2fc2921f7cba8b8c4eb7aca9f2615a1f34f2fcbe2ccfbca
Date: Thu, 20 Jun 2024 16:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718901622
