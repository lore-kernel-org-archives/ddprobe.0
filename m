Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B155258EF9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781813194; cv=none; b=K7Q5xP1kbELIxn6GrhroXwfW4Jn0v4hKax6xfsG1aEoSdJRENRkk2JbcGnNk6N0PGwaWP/8XyOpLisUSnJZ4Ywic0WRhO4bdD1KU0Cq7BK+HkSEZo1zSI03+/JHxtlauD5U7BC5MMliXtmd4+eBGrzT09mwDq7DCQfq8eJIdeho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781813194; c=relaxed/simple;
	bh=wmQ4W7IsfPrdqnnKfnq3i+Ewer53Wkxkz2kuu8x/dao=;
	h=To:Subject:From:Message-Id:Date; b=HmN7wkZIBhvrqbmTm2zeqLN8ljRhg6IRbq3JO6zDIMAp6D5JBXwz1EmjZklW7x7i6WfMZPu3HlI7sasbDjNJRMuqdG6xQoVujNi3fWY/utXiLdtJKbmoWTjbtFLCTFQP++70RMr9k2Y3qpX12s0rOUfPrsXwb3NgnMk3hKHcZeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvG8lxrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvG8lxrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC546C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781813193;
	bh=wmQ4W7IsfPrdqnnKfnq3i+Ewer53Wkxkz2kuu8x/dao=;
	h=To:Subject:From:Date:From;
	b=OvG8lxrw4QSCjNPGi3iUYYvc1mWPBzokYKeERH8oeZpRDt3mqLLR8A3ncw+bExaVv
	 WrLFHabp4iaC8QzCjWqzHHnvfogbzvaG/P4aQxvCVAEcKbxyx2uVThV3LJ+Xvrcr+z
	 4+TJ1nsKYoOeL52O97VHq/Pa9MVKOyD8vWCI1tKr7AA+lCNrbQ2K6l4qUNRXUd8Dw2
	 NTMRa4y8sKDNZSH1cG+OPNF7o2C43Q/3yNzXvAt7gASW4qaG25Du9kjkM65G/Ajsqz
	 m5VDayAOfFouNg1KWfUTyDyPofi2IClXP08LZsY5TRfdx6s8hwB41nwhJyoXK4BJ0M
	 98aWDQuBlF8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D8CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181319368.6102.7014778574097749619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04085c1ebd923cf95c4a54399a3d6535322af0badcce74463551299beb90e83c
Date: Thu, 18 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781813193
