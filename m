Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40028314C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783516714; cv=none; b=LCJaHjWwKLu7Fayiql6JMun30QWUm9ic9h6817mA/Ev7fr6ktSZnGP92C7vJ8ZsZNseNfJfdTIpZeBRkRuwR9fFlHs6qOKRRBecoYCAuY3T+DMSdcMLTi/GT5QF4KDFIN/H0ax6pqTt4sUYYgocnCSiewKoPQbCmjXVLXMhVWeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783516714; c=relaxed/simple;
	bh=tGnaLUvkWB4uQm+AyD3C1MGBHjVtB4zxxBOCNq3zPSI=;
	h=To:Subject:From:Message-Id:Date; b=Il01bXgJzhrvf5lp0azEg9AaXTnlJCfjWK3gsVznw/851Ko6D2lHM63Q2Ofna0nc7KbLvW/dOHs/eZ/w4KLzGXs2UKntPHL7zNuC2xBJR4CKlMSEh6VmaHXdRX99Y6Co1wsnOE2qNcIEAX0uD/Mi/MevgFOVETbmzPyOKPJ81F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KabTGmDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KabTGmDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC283C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783516713;
	bh=tGnaLUvkWB4uQm+AyD3C1MGBHjVtB4zxxBOCNq3zPSI=;
	h=To:Subject:From:Date:From;
	b=KabTGmDoXJNc8qAumw8PnIhdOV7tYbXWb9/JvpKCfcQfAZKMtTO/UezCAqXc3JGdr
	 ZU9G6diV+q0AZ28HDw5i5PHlDkGBuZ0iKmyTCBHtUV6Ot4gG/FAXP0NHPIerNf5COy
	 l/zQKmFFTLejuqr1TEUd7BUV5XnUeIg+cQ3bbyY+1Xu4IRWJgx4F89omPNLVir1OYM
	 0eklsvBtar+e5G6zQ6ESVJ7ZqmbSt7JTNhTuL5/yusn/wNr8zBOzscIXDDrqwWNtFN
	 Y28IyXZE7O0jJbT+eUQGbO5F50hGsjwPWhH9Acr0P2TL1FR4K+b3d+rsDA9SLD3tQi
	 bHKvj6ZjIZfmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90EFC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351671368.14398.6478165978515802801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98898c337d075b33116ed325df733032dcd95680c2eb74558dc566cbdde20a04
Date: Wed, 08 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783516713
