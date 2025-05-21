Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7162222C8
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747846194; cv=none; b=ufPHcmOAjB9VFLK2eOYhrtnvTYlqBqNnFGfZN+hmZpLLs5Cf6DnjZs6cPmq1Le+1QjdlpjA5oqItj0dr/GfISghZ0sA5LxDoglo5Ox8XIVy6NN2bTp2DbvIK7YI65Pj6VL4Lp0TNTAtPyljzxs3dO3GRM5nIgobHRVB6zA+c8DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747846194; c=relaxed/simple;
	bh=cFaq0Z6ojNS2f84O2Bd12I2fSshbiJ84h91Rs2EgNOg=;
	h=To:Subject:From:Message-Id:Date; b=BNRKOQtjYa5wbwXNzgIud+USTyphEHrsIzVxFNLfClT0TXtQBf7cF/DxWJZy8kHNVgGz1hmfUjfPPD4vqNlDA+TBeCiDDFvFvSALvE4NCG/gQOSoHNIe118k4lUjJOYvw/vPkzfZaEUpZfBoWMwUoqakNGYvkX5C/D1hRrJTtY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CT4rvGeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CT4rvGeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA32C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747846193;
	bh=cFaq0Z6ojNS2f84O2Bd12I2fSshbiJ84h91Rs2EgNOg=;
	h=To:Subject:From:Date:From;
	b=CT4rvGeRrw4M5r7r1LGYzLCSuxZ7G11UX5r4BPBnvoYjCqa7JjLvj5rbIcfiIZtlx
	 BvoPwWTR1udcagI8ByL0H2NcFSL9ZHvgmaud/NBOBGUEra/JnTDS1E+zL9OmCiRSG3
	 J4WmtPV5gpNzqdXnRLpk6YAa8Pry57LHsmD6tg21xGXD10gpEinUAmLSNA00NVPpD2
	 LbavpMAtBpgNOYjt9zJbXs+49SlbbZdubtXVaGcAS9DjUq/SM28G1Reh7kIh3yYqyJ
	 PLRyGVbmNo3kYOvCuQEp7excQFBWwdXGRg4tx2pbjcyTKEJru8htyLfYZZ2WUTBwBx
	 lDTubqlBdJ6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B4C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784619357.30325.6444368307843260774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c6d2957f1faa7fb88ee931091510c131166cbeb3016aed7126c633191c9f1e
Date: Wed, 21 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747846193
