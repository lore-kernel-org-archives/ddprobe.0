Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176AC1E7C32
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750406394; cv=none; b=lg3RFkmrGAX3MO0FgtzcuFg4lg+0GqsdaY2k/oqPSAOuJw0i8XE1GoE0DBHX0PLLVOJIQILlx0h9UQHbQqqM0OqwXwh1REsk+Pji9KZtQBV+sohxtU/0K0EyAsZVhd5gR0NsdvHumDVY+t3dy+y8ZNdWeH4MlWOeLcTi0Xt/UoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750406394; c=relaxed/simple;
	bh=XZYeIYOuAaLw5vew2o+ZI9pqXdfzCP9xneA0ppsVqbw=;
	h=To:Subject:From:Message-Id:Date; b=rSL8wNiFme/HiBMcYZaPT3xy03054feaqEEu0frWFfAGllYzVH/FP2rh3OkFpVKKRxVixBlkt1uG0FVq1lK1s9PnEoRtfadKDyTgFSbXpk/fr5vb/8bU1FS84tK0sUXuAX8Yd+w79RQGWtPkDD202DOsRjyM1xvKKja1QAPrTBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X263+Eh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X263+Eh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750406393;
	bh=XZYeIYOuAaLw5vew2o+ZI9pqXdfzCP9xneA0ppsVqbw=;
	h=To:Subject:From:Date:From;
	b=X263+Eh6epberHTuo0JK25KhXrOacMHVqYR9wV/yA8nDbyvd3p5tn/3yJhRRcDr2a
	 92xwHRXBZXoszrxL2wWW5ZvCmT+/K/pOSLFAbffxNB32XaKNXjrB9XWh31VeTvN7Px
	 6vMrxk3I5AUta9+BfGL+iS6PsBNLIe2fKsIH/BHUwaglnzz1lBodMCCB3aKu7xwpcA
	 cp4FeEVH5PQZjwyvM4SwDuX+pSZDC8Mnpn/kSmzZyeEiQ5/jwl8ELIqwswDFbq/w/s
	 0BFmqzuKFO4nUjx924HreYYf4is3XjOCIDA3TGydGRzoh3FOTn/YCX0pjFhV50Z6v/
	 t6xW1mZ6UnlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7BDC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040639357.27334.17727859551592131971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de357a6bc2f61c06d9848da299a063e0acd5de3bba35c4095e4679c1819b51d
Date: Fri, 20 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750406393
