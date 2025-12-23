Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7912F7AB1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766466834; cv=none; b=By8OwT8ZUsUVBupIP4brZEiS/I0eRa4zKP26o7erayB8/Z7kQpYHPh5k5qH56cJembNlfBwtsLMZ6rn9XIk9rrhRhkR52ghGZ5JPZG2LQ+8nDAMUJ5CBpveprdO2lZ3jAzJnqukpLJDiOGTJZ6ChQV8yA2uEIcjyN64lDsvZiwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766466834; c=relaxed/simple;
	bh=6/xqRRFbWbNsbKIKMDppc72z1OZM5IVxQ+K9CFjLMUQ=;
	h=To:Subject:From:Message-Id:Date; b=uBTKHwQFMEzR8v34MTXkqmZTKWNVkRS5zOEfKtJgYNJITVd//Yjbaa2XL8oNbnN+RJ29rw7DmqZuDlm1jwE5He1r01fGCgNrJ7S5rLnKSgp97WhkD1fadi3pRRHN4XEVMGU83eP4nLXCNkyW2OCP6EG5qJqyrpTUah7gS1dqByE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGezJ0rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGezJ0rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A737FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766466833;
	bh=6/xqRRFbWbNsbKIKMDppc72z1OZM5IVxQ+K9CFjLMUQ=;
	h=To:Subject:From:Date:From;
	b=uGezJ0rJCkCtKcnFw11MXL/t5SfNhorOjupfmiXFvjIwRuj8wz/dRVX1QHuKPncc1
	 jFVoqlS1/69kMv2Bo0jCQS1bE0ih43lldDp+0iKSVR0ce/Byy2rmBM5CHZmSfek6Pc
	 CotSYBEPnOraIzv7lds6AeeOwJbZh/MBqxXDcwSdRTJ/prFv7Hke0zhwnWsxJ+KS7Q
	 oYYetXPWCzdeyOlKK+DLxMBzlR4AskwvFztRenxW2eAqbf3ZuYZ+TmUlPkbpe08I7L
	 ynx/BPvQ69dok9YiKxtEXUmEp08VvylenHg3vtGyaDHMnvBR+5aRGJ0Vg8dStCy00K
	 wDCbYkJp7WyUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FDE6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646683357.19397.14801424358794642399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a507fccd7190188b7f323248c80ea25666c61b595711324b35b1b3fd8d3d4e5
Date: Tue, 23 Dec 2025 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766466833
