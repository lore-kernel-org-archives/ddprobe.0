Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B4C2DF15C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774430694; cv=none; b=fasRWwedideHl6bifXQylV0E649LaQeBWZcbu+uGBKUEze+5N5nrVmuq3kxTjG8VKuyhJ0rMYMb5ufp7GehlDEkc3MHiP54HwO2G18w0TkrVMUvhm0gM5j0iKJTSZfNq61ME5077QaJS3c7THrfpeB3Sq6BaNX9aS8qAYaSWimg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774430694; c=relaxed/simple;
	bh=U4N0HjcVtH1lWM3ggtC3GqUPxwSOU3Xwks2bxvZDHaE=;
	h=To:Subject:From:Message-Id:Date; b=uybulm09SBs2wXt2/U+yQL2aQYXwb2OoyULxPDmHvAUiZ1m6mzh8UHx06EwFQRsWgxVgk84WRtBuBQhHweAx1SZpsmhvs+fp+K9l0ROf4jKCcfVWmlHAylQgsgLzjiBObxiQf0SeUOgDzp9GgQuDi7FwiE2b74m8NR7+Tnz9TI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIc9N5Pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIc9N5Pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9531C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774430693;
	bh=U4N0HjcVtH1lWM3ggtC3GqUPxwSOU3Xwks2bxvZDHaE=;
	h=To:Subject:From:Date:From;
	b=NIc9N5PbXaH71qNWc6doGu71U3ny6vf0IU1VLRZTNYRTS1J8ASGdjiDLiHROzmIgs
	 vpRQoUihtW2Tn45wDLNQ3OtBpL7gQdCA22N3YqQwJti+WjMbwYZtAxGbV1Tywb1Xt6
	 bm2OJOYzutCxXYPGXiNmU79GyD/r/6QJqBVyhZeP13DwnWIgYxsOWJo/Xbx9NFQzHA
	 4zXW7AvdtK1u9aRyGN4IulJFkdI6nNPhtdGoG0Dq4/k0Nd/IvPrN7hpFNj3SQRByY/
	 nPq86wH7MXzDa/WUGHz9BsaEat7cNAMVelzc6xhTuMACo1EcOOL81fslViFiuwuWz6
	 /EsECo5fhissw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA7FEA838
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443069359.18591.6265892839262434927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682ca68914bfe77fb3cac0645310e4f3cbe73a9d594c29c4a97535f4dfdf7bed
Date: Wed, 25 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774430693
