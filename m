Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C15803
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714785143; cv=none; b=H8b9VZ2lPYtg8C1M3K8GCWiUGuURjqlW2DVZFnXRkqSUKsX5PDZ8NCFJkOAAor08d2tnDB/Fkfw62NIjr6idWoRaN3RfbzZHH2DqwWm25akSPWnXXJQ7BobAWZX8ZveH58G54x5cp7pQwlJzD3dye87uwzxmWGpU7Gnmd8/Hj9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714785143; c=relaxed/simple;
	bh=1PEsUa8LyiuqffdmW2BtL7q7agq2Kj2ht/BGLYIWypk=;
	h=To:Subject:From:Message-Id:Date; b=VM8F4EsneQ8IaPNDQfl5ce/wp82I6Kl/eEqQd9kcLtneJeGywbwo05vce2radUSUWxL2ndrCwnPo6lzHlI35Jym93r6S2oJX+YqO6bXxPgjDVue1EPl0NAtqISO4GsOwbHNRTz+Gf5qgdZwm5TRqdpKN+7pQaJXwhrLc5Zhr3eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH6gnhXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH6gnhXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFC2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714785142;
	bh=1PEsUa8LyiuqffdmW2BtL7q7agq2Kj2ht/BGLYIWypk=;
	h=To:Subject:From:Date:From;
	b=SH6gnhXaI/7vV9RJqwtM7nmd84EiloumONM5TONOm6tb07oDh7ChxwzEA6fOvXqRO
	 kzirBnniXxwMFsaQa1er2rpy1LbsBgeG5PfoMyNqE0uYeZCYzJU8RwfghoQEdCMRi0
	 QjE08rW/XbdzZg4SPijZF5+Ttg5yDEDitJ8hLKMT6p45jqeAGahEcIwAJqe/CaZ3Qf
	 DQcrc4eOrLrCLvg9Iku7iQdCbOaTBlgjyZaowAMQfdHLQ4d30Tsn4sfhpkxG6cJAZM
	 BChrCiQpKps4MufnmZPDpmVYb3fTN/fUSKn+6EzqNAmdFpo9SlRou+dZqhW88fPF3z
	 8ugCluUhEMyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87FAC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478514278.22822.6030737387088665281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b2476d9e6e13984f1fc9beee38ec3c42065d50615b894d77c49fb52fbccfbc
Date: Sat, 04 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714785142
