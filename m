Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4428F4
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747579195; cv=none; b=FL79FAddNQu+d9rn2SJ2jJk2GJc70RsIQQqHMbYBwMdjqku4vWyaAH1aZXIUXuqrhgInvTbSAOgmMAS4oKBFD3uxsAJCZvhoKYYolX3eIXEM+jRP3agrqEgOCXnS/QkUuGYkwAYl7YZzRG4V7DyFyD1wOVr39AuE9OVjsVmVV4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747579195; c=relaxed/simple;
	bh=9OpAvn4Yc4B3T+hVpI5RE+swXwCyPlpJFlPkP2mtwnc=;
	h=To:Subject:From:Message-Id:Date; b=JA0daingtHhGAI7PyNfNlYaIdIvlaatEA04wI0eoHh5pqj4PQJlk9UqftN+5Drs99DJIoPKZIBwq5rhucEzsWZ8akJ5mlO1SB/EcGbKuRDBbHjRdlsc5TLjJ0HVvw3TiM05CNKPN0RqShxSIfbqu3uH81aPkSpDoYAjEtdZRJIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNjDSVxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNjDSVxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747579193;
	bh=9OpAvn4Yc4B3T+hVpI5RE+swXwCyPlpJFlPkP2mtwnc=;
	h=To:Subject:From:Date:From;
	b=NNjDSVxWIRkG/sLjeRdtYC1LquX6HZx8ejnsPx2pURvhVXEsooPePP68jtUlDopWN
	 Dn8zPHDBRg1rB4zCHF7Q98kNICL+Bj4FWSlYp050XQ/PkjZyEpkPtSipBEIiwv5HD+
	 q518iIBS50EpEImpSBbrofRef5Ew4UeHoMtf0QuW0iGz0LOghlxoyom9RfVV5EIcjK
	 mIHXlcANtIcE1Y/aDWzlHWcgX7BF0gHVv9KQukDyPKGjwQcBCYxgNOq3BNGc/m7cEw
	 hjtKWJ6iKekxOp0ZdV5nDKsVKCHJcixYZiM2F1erM5On9ryAd0pQAUPa+Hm9+TJga7
	 bFHvaIuovDnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCDFC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757919357.31261.18151836967317839955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d2e5b93f356e864448da8dea4f70cf405e68140ae414b3e7f2e9c97bf81428
Date: Sun, 18 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747579193
