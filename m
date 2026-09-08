Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B3237A494
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788848434; cv=none; b=tP96e/DTjQYgF0QF21okwBVuuljaFqAtZbXZoDcHv/Zn/ozGAHiBguvHCMS4l3le9/csQnUPmk7zztDMMeOjvuPYING46kphcXbfwa8GPSpiIXUBiB2FSJnsLCXUOijBuhcpJ0Z0XCY3HZCySxfntnF3Q0DQrVDBdKY4gIiE5EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788848434; c=relaxed/simple;
	bh=swF5b9OljSPV6Cz/By3AfcLira9mdn+oGc1BX3phjGE=;
	h=To:Subject:From:Message-Id:Date; b=n4/+6VHl97pjtveVJa/CVjlv2fkPifxCb5a8xN/fMywcvL1eISdCCg9jxd2GEwLV0iUKLqaIk6dh9chJ9Rysk25uebRfnpFaL68IBfZC945vRAvwXcWugPtwuUPimOytfPfAwSg0au+Remn/LiSN6s9maBx69DoX6ZGrXewcMi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg0f+Jrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg0f+Jrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D788EC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788848433;
	bh=swF5b9OljSPV6Cz/By3AfcLira9mdn+oGc1BX3phjGE=;
	h=To:Subject:From:Date:From;
	b=jg0f+JrqKQ5w3Kai9sO1m8tICKni5a9mJ5S8Yf9VkBPgevcchpzgFKKSbNFuPvRuv
	 drin48q836mtF0a17ul7fjHHdXH/WofIRJgKHTO6xFI20YC3ogLsOs+ZIKYi/916av
	 QkmE1uQaDgJHOFsjJYNckWY8i9R7wE7BaoCOeBQ1gYyo/V+XhF2W5AKQ8uUKyit9ku
	 oflQUhd9ZOZspNRaxM9KMFxOVm+FE9luEeBG7g6innoMCnR/2S+34jjWRWG8ZsOdeO
	 zhqQWQqF2PaH/vTCJVWKrvqFH7XCrXpEhihhvG0FK9yBqAWLAN61ziARWswzm3KGp7
	 mgLn5PiEpu99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B384AC79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884843372.18025.7107728797811067109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7388e65ed229f0c59916b8ef9cb2cd5d5088faa32ac82b4ff9ccf52fbeeb354b
Date: Tue, 08 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788848433
