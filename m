Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF0A283CB1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763077794; cv=none; b=E1HxuCkNZif448AH4q3kFpOksjUdWcKboab3GAvIbU/jnqjCdlUXMtsBnQO7Wea3/DCUNaZVIzvXaNe8QbuF0h/0SFRdIdYUBsYMD0NNJhDhH0rSKivROLPd5neyCqjrtRCzpO6UnEYSSCenepQp/2BKZ27nVokyNmyqrO2tjHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763077794; c=relaxed/simple;
	bh=x640QfADeZq3GxMYVoT7LE47HD86vW3vHVlITD3tHNg=;
	h=To:Subject:From:Message-Id:Date; b=hykt0Qt9NZaA5CoX7Dve69EXMGbPe81aMlYh6TftHZHiYBB6rvHg5dYGkG76S6vGepbgaacQ24LxtEQxF438dIRWvBGvOVqoiCvsVC6EBTn6ba/xYkO8y3ZsPUIEhI5sOvMUYVELRa1k74o5QPk+9tu4iqam1CrrxQJT/wTjAco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHEt85mO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHEt85mO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC2CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763077793;
	bh=x640QfADeZq3GxMYVoT7LE47HD86vW3vHVlITD3tHNg=;
	h=To:Subject:From:Date:From;
	b=eHEt85mOw3vqmgWKnX0Rn3irjSK52RXQQiz9togKvMpjcuzwE/FLAHvO+HyHRCCrF
	 FpvgL3qeCHWyS7XuwbB8dgVHzn6kMUoSw6YnN2+q34qM0VNm/FdctDgEjRRHMztDP3
	 zcECGfnPs1uxGRHAGm1y2Ykv0lWClJ+LrbXfcyUsJnekk/8728Fe7itGZWTQ/1vH5E
	 g2/AUfNo+LQ0rGUCveI36lOMb9XmTLrKr7DAZ/jU/4Nbjxaj4KVdScb2rmfKWOXMA1
	 LJYNFiNPMIZDaOLIkuKJZy/RbdBTjms16veNsDhLgdefg5DrSnDygpXqPb/j/TJKaA
	 DYuffodQqblcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8CDB462
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307779358.26735.16824246464000879085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fe904aba509b7f8bb3584c966485680dccc53b8c1be850b02f188d780df0a2
Date: Thu, 13 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763077793
