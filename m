Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22228B646
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728527154; cv=none; b=eCrbYRC7PE73g/Tv9JBN4M8ACz/v64AShMKF2J5l5pT/HQmZb4vJ/xRynsFidbyTan6ZxW6t877bra0g7TiLpeaJVYvc9bExWzBem14vhzCRG1ovjfmGvh385PqSFya1i4eapuhzCQVAsFdRpeRiPG5bFcws0lOi0DSBeFs7/oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728527154; c=relaxed/simple;
	bh=VcrdO6CAk9c5tl8RO4HMVtFtIFKKR3LACFqfSd3Kh9U=;
	h=To:Subject:From:Message-Id:Date; b=oW5BWymMqmDL1IjpQ9uLHZqNkPfJOk5scZlE4goGK+kG5gYIYlPznG7tjQu6UCXBKung7FAqZ0nMMrXMdKz5Td2lxYbwuA70H8o8/vRuOYefSesJ4X8rzlhS1qIETGRXdbo7dxV3ELnWtgzvb8ZOfjonb7qZVmKmp/tyfYICmhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0quLzen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0quLzen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE0EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728527153;
	bh=VcrdO6CAk9c5tl8RO4HMVtFtIFKKR3LACFqfSd3Kh9U=;
	h=To:Subject:From:Date:From;
	b=N0quLzeny9DPdo0VOZvUg7ehjvNbu3DyQi/krzmfNxWskTMb6yHm3+8WoVGkGx+CQ
	 XC60e6Hb48uP2QH2Zr2WbCT8sQ7RFVNiYmdWjeCySXzknbQy6rYUukXihXtRHdVnVb
	 xom7x7UKl6u/1yZGJHzjAiIRVdEgsUi218N0lAePcyDLjzcpWEGbTiL5zYUCFUueHT
	 87ZXzxdhX+Bhx7Nj0D1dIYuyrNV+F/CeXq2DbfnieSCTTydPJWsFdxmWavXJinYMCn
	 K7Ge4v+nwVnALqsVB1go3jN/dy4u69HnU2xWTByWJ/JcBMIqpNiA4Ic7HbMneWh4vT
	 zSr9SGIzycpdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C62ACEDDB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852715363.25841.12243955398236458850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9789d5da93c9c61ebb9243527644a59a6ff6e8705c91796c79b4fce1a262da2
Date: Thu, 10 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728527153
