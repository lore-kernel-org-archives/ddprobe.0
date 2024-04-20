Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD9E168A9
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713619823; cv=none; b=O5fGIGW6rf7Vw05/BRD19Hb7vV/AbhFjVEK/07mVJ2Sbdl0ASI9RfL9Ho1Ab390nCI2OMHiSs9EBn9uUp2Xy8kEXIOsb6wCnJsPkxHW28O/STPbIdr5sYsWCK/cj6rQYt63jY+muXOmfJHI6locGBZS1yCQUZAWQ7ADsQJP3Hb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713619823; c=relaxed/simple;
	bh=EuVm34W1btJPKEq5+99TULTgP3B9gOSFBHfOh32iVmw=;
	h=To:Subject:From:Message-Id:Date; b=Ib3xzUZd7TosPLTis/CZfP87NXisW4+fNZ1kuOyhUM7TL3OyZaV6PYzbvwqByixOlnbmkiik2qmVfxTWWkCwEAIa/VJfKZFHAUNsUcaxAFu4YNtOMZmOERbUm+QQKSaO36Ksv0AwALsXHPRCUyS1bzf5TndC2ghjSwpY+AcbpV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfTjjn32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfTjjn32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3DAC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713619822;
	bh=EuVm34W1btJPKEq5+99TULTgP3B9gOSFBHfOh32iVmw=;
	h=To:Subject:From:Date:From;
	b=kfTjjn32Js8c0UwCom/oEsj/BcNLk3sclI84GDJizJtqQyjwNkSCj9ayFbenOngiV
	 HTB5uhLKO5Dort4zeCVlBcHoZrrN7j07kGgpkAvNqIETiyNpVoyrs6q0ZSLOo6wens
	 rAJ/OMB3UCJomPGy3im6H47jJ5o8JQXVoX9SbyWllK2KoF/ARxLyLJX3yYUH23yFcQ
	 WVtyKm3ZcUTQoFL9jPLaF8J/RBLuRGNySSjXXKF9d7MmkTgfl7Z1KsFqI9UqekaAJ5
	 hJx21GtKAicpdgAmAdCucjk+UZ6ffJFtWYdqwLPLHvzQKKIWGt+RAJ1HSXA9PIm3xY
	 +67msNCkoLZ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2407C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361982282.23194.17760554236208000402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86ee636745a7cc30a859e613430a3e37f07a1a134d7ce6fb5ddab6c17718e39
Date: Sat, 20 Apr 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713619822
