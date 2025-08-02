Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C2013A3ED
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754156994; cv=none; b=oHi/dTfqRJ077eSr+C/A3DYoL0fzpY7zkKm/TM/H7hBbrVXbcIswJPmNhBF9WXqkIFVM6A/yFXF6ciRFQCemqTH7la0uIrqNFe7Sk7yM9Ra+o3Ucg1mvpMBMf9dzpI1Cx3IlNXpNH+SEDeJ3BSNoRhbTWg6aBhIZ437wJJ6gL5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754156994; c=relaxed/simple;
	bh=AfeTlw7U6djq8L/LVZ+cQVI1/kpk42Aa5rYHb/upKmM=;
	h=To:Subject:From:Message-Id:Date; b=jCDA5UEhBDiDCedpEYZVGt6ujj4BPMqtPpmTsMrl1YMk8nrxB3jFANeIjHvHivUsy/B8x9dthar/c4ucWiXyPaB3jjtCcU7IyBznXxTTa62PGaNb543FcLnjtRbK+XrdAUCioJeI/+lkU5GCbctPB5lrVKkRqoQoNm8H0vHh3aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZRdrMMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZRdrMMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E525C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754156993;
	bh=AfeTlw7U6djq8L/LVZ+cQVI1/kpk42Aa5rYHb/upKmM=;
	h=To:Subject:From:Date:From;
	b=jZRdrMMlKxVZKD8I68jnV4StlKBFanyOXhZ7fcccb33dJUtIiZ1YUVqgdiPDj725l
	 VzLOHcYpUdLYIN0N55v6AyOt3YQ085uv/sFI1zVYK0fVjJUT2fK5/1j3uE3xV1Xqcx
	 6hCbMxi6zWZalj9Mdlqcj/LOG2jRMhB12jMfq8yZkOKUF5z37V466qCqF6lvqCO16q
	 4GbomuhEOtjvTdKf2Dssg2npJkdJ7iPQ50ZDJzlYRtVW3WLsImqjJIV/tikn4647jF
	 B9gc35JgOEw/gweNzClijBqxm8b8Nj9T1MG5aBHN8SyOHZe9m7n/YvswxZnOOLQXFb
	 jk7I73AlUYw3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFAC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415699357.3140.12911186707821070989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e1a2253447e2383dbf099f74afb9d72f718e8c7db3e22dc8fe263d2f2df0ce
Date: Sat, 02 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754156993
