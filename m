Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4340BF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745091594; cv=none; b=lBkXj5svPi4clNKiWla94VS/tJpllwzI/TSbq5/yDrTI5y5i4NLWQFj5aGzAi/UBk+ynP1Gi67uO7AfijffcxTDfphHrDAEqpACF3GpMR+EHnSaNJMedk3hiZ1t08vSs4A/bJUS7xyxhnE774waNcNV9/2zbSiA/GYbDrplSF1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745091594; c=relaxed/simple;
	bh=YgfqpsIqADVERJaKr/4F3WM0WRPNSHuC/lE1tQ3R3JE=;
	h=To:Subject:From:Message-Id:Date; b=bE9RqoUXmmwSKqhpKisIcaQJ7I7/S2HKryzhzPZKl1TPPcwkfJbA0nd+oIlI1xTsMFvV/fOAYmT7coWR9ZYr5HRMTeK+iWgMMzPCW/vgCZFC1kliEqbFn1JS1htg1qKDT5ZK3vk63HeUnZ5Y5Q4rzbbvJsHmgZ/1orcBAleutLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oskOuVYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oskOuVYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8334C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745091593;
	bh=YgfqpsIqADVERJaKr/4F3WM0WRPNSHuC/lE1tQ3R3JE=;
	h=To:Subject:From:Date:From;
	b=oskOuVYIH9DHfvM4YNVQ/fL31NzWxbXNmpSSmLsWhqUaQjMk7oJjhIWvmzxCfo/Z6
	 F1ss+LsKBhU25mag4R4esK3OKy2tvuHF6CQlSQMmcBkXJViM8+1aTKKJ9od7v4ZGoF
	 q/viYezhAoCrO9kZ5BtcpijBprgNdZ4ZxGRgzBR09zNQQ6l4Kq8gyI53HXFB26yAcB
	 ta3fPYLqP2wExUA+auvWrCKgwoxG0kvL5bmiJEVrT3+0x2P5DZocl6/JTrBKVu8ZXq
	 jzv/6Cga2jHrD5AghWMorOPvwc7/kXGm4+weeO1HxAonq3D2xG8sPHwvmwllBptgBn
	 V/1A3Tfn8M7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D5C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509159358.18262.1160092769600440145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fabe007758b2a9f3bc269b469bfd29fe151b7a84e8a871a196be1969dc0b65e
Date: Sat, 19 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745091593
