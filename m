Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2635B3B1BD
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766602434; cv=none; b=YWMZnfO6QDt+bI+R+Ae0RzVtmPFZqlujksehHoVUG8+06W65lCuXhcd+s316CsrQ7xvmlhkqFxe3L9CAIabrmwEjMhU86rZhqMtYXoVeZaxAFtkUGBAedDLFJSjXf5usmoNKO+eQYfCLWfDaeTDLKneVH0LzW2VpxByaZqBP5SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766602434; c=relaxed/simple;
	bh=4Exp0AmCs8Wr/yWtBq3/rWQZkzlkZLF3JdAuo8/2zA8=;
	h=To:Subject:From:Message-Id:Date; b=DOe0AJGT0eK7CIhGQgDorYtEKGJ/9rsiCIAOleLgtXzTB1OepD9XZDWwXZUiIPlpzCF65KABsymsA0eOIvXv9iDy2emRJb9YHfiBkNJCEepr34X27GdjAwbAtjFO5zCJxgw4YT72ua/ECG+wgdm+rwfUfiwWhcFaS/rn/ELZ8WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOZ/11NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOZ/11NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766602433;
	bh=4Exp0AmCs8Wr/yWtBq3/rWQZkzlkZLF3JdAuo8/2zA8=;
	h=To:Subject:From:Date:From;
	b=ZOZ/11NMARI6hUTBAKX1l3cVa4vdfFxIJSkWAYnIVRViZX1pxjJHqzHPDJMbx/U8t
	 KeX2/6IrNpBGH4TNBCbbFD1t5aT36UY7MWswk+mIE8ltuobZcsWeDOKt/kpXYRmEhP
	 KdlvH+fvM3Ab7+vcOEQCGSbSS6XAuLoO94FcFQIVqMRIXylcZ1Z3OSs62G7nQDYot6
	 /oNWGV8VR6GmqQws23HZGPQWlB450YfQCBsd/LO3omYayi2FvWF6tKAuzIVvcf3YjH
	 ROUdfGK4tD/H/zmcEznOjTa6Zk4PSudF8+eXwl8ShazJ+YKv3ExUtC1QUlAp184Jb3
	 b5L4uK3vRWnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB0E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660243358.22061.8679687251165749079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd18ac549528540683eea96df7d7bbca86d001154a2abf969cf679033554123a
Date: Wed, 24 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766602433
