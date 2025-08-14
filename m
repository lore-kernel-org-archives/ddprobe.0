Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30909284B26
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755212394; cv=none; b=aEBJTqzen4vcaj19lXpbaF1Hjw9E1p74lSBKDqTDDdSUOHoKAiY08Rdp14VYKdfocmnVnOx89s5XGLx99XqM7QCpm33o3VL99U0Wnpn75BtmZ+cC1tFSx/DlPKi9amXPLh0gV9BPmgRAf4SRGOP9dzFKIkRv1vqZmPG8TiXDEUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755212394; c=relaxed/simple;
	bh=LDwhdseH0TbJT/LVIYe29IhkHjRLfrlrTjne7fiX3wc=;
	h=To:Subject:From:Message-Id:Date; b=oYEpR3jjKNSuupB01kPaT3mT2ZT1PupHkAmkTrhesSuDPANIV47UeycRx7oc7LZnsh1UDGL+7GU7yM4wsFhtNHklzLUvcbcMkgkBwMG2MgsIlV6MT46evDIqkQGgwCzNPvqYM+yOi4UkH/kAy5ByYHA0NBqqMAmmYTe/H86oqpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYUz8286; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYUz8286"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755212393;
	bh=LDwhdseH0TbJT/LVIYe29IhkHjRLfrlrTjne7fiX3wc=;
	h=To:Subject:From:Date:From;
	b=oYUz8286mecXBjgK7ZkCVTPdr4+JwSIYg/UZgBYBLqqvnjhhuZb6onK/0uFJuZzh7
	 NYnZH1/hIhzke+rUqpv7r69iuR2lpiIOpjF3wco4VhaFARac+S8nWy8o/b/RFbBumM
	 3zDlpXX6xIgZeRrQ1Fi/rG4lqM1wHT7InAaPTFZUubRlAtYI/b08qY7RP0uQBr/iUM
	 zcu6YKMW8GdBkpPTKuON4CHqAxxMqksIi1praI5TalYorAy+zKHOuymSYCR4RvoB5i
	 z81EMvqBUNxMcOaoaDr/EK4GxXYbqbpm/VvfHQHecy2+PQmlP+NYw8utsjGvSEYTOy
	 I39rk9k3pUuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F138CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521239357.25860.11146539815785690951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8eae57225be85523da56102e78c053dcc6f73127b4c7f9c0e395d4810c5a42
Date: Thu, 14 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755212393
