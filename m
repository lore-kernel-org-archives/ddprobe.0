Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535D129415
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737262554; cv=none; b=jpbCUSAVvlUMyVPoX1fBp1x74QLbX+1RarOpmbHo4P1n+2MoUlww3TtlGsjdT6dVA6lCRDRQB7HXTTK2b6D7pbTIkr7YHmPGA3oCz1eFAWRnQFpqjJ7PsP8GQh1bfIwcqT76B7bbdy6OU+PHhV/HjFukBDHUU5fBonSYc13km+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737262554; c=relaxed/simple;
	bh=VDya+hudOohqIDBrWlAyQw5qDzFVMrhL3VAZqSCCH+c=;
	h=To:Subject:From:Message-Id:Date; b=RzbIOXiNY6WZCW2L9Yhp624YuzqkNTzu56LXKPN1fIM5KMuYOwRpavSldje2qxeELpO0On9G0BRrNKSX+eR9M0ysPGakTVFiy3RFpuXNoUhAFGtCaY+73HonrqLpW2XnCJfGFFylJjTUKWmx7fAwU+FDyRzrcONg+Si2DZoRrQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCR/73ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCR/73ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838EC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737262553;
	bh=VDya+hudOohqIDBrWlAyQw5qDzFVMrhL3VAZqSCCH+c=;
	h=To:Subject:From:Date:From;
	b=ZCR/73ouTik2tarNLHZRvbDLoL41RQXrTXB1bRgGrrfjyDFlUQndISepp2hEY5mhP
	 1sZRWDeFLtcfhPAIugfW2Lmv2E5sJ6hMj2Am1zZtYL4+a2x3l2ayNtJu+NM5MYYFuV
	 mw6ztu9MY0m3R3lBLgGSUhMwpH5GYpl9uUgGmwDUHfpUE/5OaEOjOaJcmUuzuaT8mV
	 3Rc4Estfwo2N7XmWVVmn0/Ay0G16eIZrp/efQ38FYHEKdTqtqA9bRaij0V8rcZpKlH
	 iBeUewOXzxvxthrYTI2Z8rUnCkANyPcJXKEnoJQshTgKpuAkrQuBtDZ1Mp+AG01xm1
	 bXg31XeAGypig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF6C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726255357.18331.15113057024249972127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72a524bf12a1e26143ebd1226105e8a5d596c57cca5e7e68a44ff67ad9af422
Date: Sun, 19 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737262553
