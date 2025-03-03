Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4AB78F40
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741024134; cv=none; b=dpWzjUKh5CzJhdTIGo7Rmp7yJGnYLJnxoSC8my93SncNbM6wVRFxY1uF1l6iitCqhd8bmmBi8nm/7vWA8PXFoDQeb8CxMhg8gE+Y8oiLvrsqxdJ/xOAxnfP1GAB3JeO78KFsLMxldQvIjyXt3axIJV3KieAi0FMSPX1KyoOEwdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741024134; c=relaxed/simple;
	bh=eRK3enf6khC7gfei20ZvJHqUe0fznuwaavjDm1582wg=;
	h=To:Subject:From:Message-Id:Date; b=FqMonznK699J5rWmhpMaf+d6/X6VnQdqsNb/OSndlJikYl/sFG1GJXmqF/e+IYQGdo0Wto2V0e9uWt2Zs83xwBbJSDNSR/3tKLa/ku1q2CvZSjveziVoVtD8t7ukH1RraA1bK8fxd/dPZ+VWZ3KjzzN4UKgqSdfJq7f8iH+/AtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wk8/jtIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wk8/jtIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5364C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741024133;
	bh=eRK3enf6khC7gfei20ZvJHqUe0fznuwaavjDm1582wg=;
	h=To:Subject:From:Date:From;
	b=Wk8/jtIFUBk2z03M1fGA9tV06mOs//5r9Q6W9UppeIvwdi5xBEvHHzGnqNvHglr9O
	 Wsz4U6563xxsxKURWgpH6Wwa6WaLsknodeuWXJF0Sx7QDc9ecJWdoNkv9x+x3v+xKt
	 7CFg7bxyaoBPtKg9aIujUxslh1ILW+bXVw0tlXWVZCyKqi5jkqclP+Y3tPxs+ymng5
	 NsT3pC83yD8lliLkst35nmZ60O0iiuYEDZEqQ5rqdWvtE0ghwSbQn9ZZf0/PIahURH
	 E5w7PMiA/6k5csUUw1935wXUNs+tAinkbwRS9OwJFFz9559dSBkgfKS8h1oHna14h3
	 k5qzgHDctHDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C89BC282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102413363.2879.5867162864512727608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ca1fb7b640a949ffa0ca920ec8b0731929d9925c23620a293914b2a637a359
Date: Mon, 03 Mar 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741024133
