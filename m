Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A32017966F
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726149354; cv=none; b=okkaJ8aP3TAUj1jkfinnxe1bmU1U/fgKwJIH3AWToJz22JaiwWjb+mD2IPIB1zQrpg4MrSoCTX5+sYegvSnSkEx3u4F0z+OmanYFIpHGQQKd/oq/vchjeAlIJ7F9wD+XsD46gdH/9sUi8qGhThzDTt6rbVogTKV7yDlO9SCRIGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726149354; c=relaxed/simple;
	bh=XwniQSEaL3kdcewjF4aLqTonBQPndUi13ZBvLNJZqNs=;
	h=To:Subject:From:Message-Id:Date; b=Efex0Ynboi7SohjsDl1CEXEZmk8u/yACNiLfuvS32QiONTw9KGKXHk1Ne5LQ+LgcGUAwP4yjUVCi4dKF/VEg7VFD03IRumrvr8nNhlAoct9Oq8yyWKYYqD3qb2tOljR8OryMgxhSdkjCzmhfovGPjOtDldXVymuPh3fKsqtRTNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A054hN7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A054hN7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0929C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726149353;
	bh=XwniQSEaL3kdcewjF4aLqTonBQPndUi13ZBvLNJZqNs=;
	h=To:Subject:From:Date:From;
	b=A054hN7ph7O9Xxqq/1u1yk2AjZchnVfZDhvrLduBjfl/hmYRyRnXQKIv7X2GL/rT1
	 mjasdKNZfTdaiG3DK5DLhFz+MBi6E0W13UnE/Wto1wWtKxRJEFywlQbSiw35YXciv4
	 eljqMHT/UQHjaJasilcG3cAJQSiBUtr8+FXIbCz0iHQ9xAqILW1jEApNSjGWUeDOcM
	 8kDTx2o+NUqQwYyK2CuU4iDFHZZu3zRrNchGAlV0Osb6326KqiKeCdA+06vktFJKQw
	 XmqbUzO9LuP+On3sMzk2Z6sa5eT6K47wEXoSGmhzfzCC68rlOZRUqjUEP6l1gccY7J
	 GnkVU1sAzD1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CCEED609
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172614935359.18097.5027495482563772989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95232f724557a1a6fd31fb2f24253755be6dd4955779c56b794d28954690ae13
Date: Thu, 12 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726149353
