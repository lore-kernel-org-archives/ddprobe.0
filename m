Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FBA23278D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748616594; cv=none; b=XefYNmbgdzvk3sB0HLi4+4T/H3DyOJCKcV7a5PIHyodCEgqrxAOptiOvOEhu2OJmuo4ntJ8wEBJ2MuNjwkG9Yez3Zaa6oog9kwwsTfWXeSNhIm1fbyGaGkfIgkfAFF+KX6Xu6+Db5vr+rV9LRK7Plg/rgvfQ6kf7rXw9AZhzwY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748616594; c=relaxed/simple;
	bh=Ely6P1GgOV2/mK7kE+2ZzPUuLSxHW1H5syRjmC/kVJ0=;
	h=To:Subject:From:Message-Id:Date; b=W4m3j+05kG9IXDj+iB8ezB9vlDF7Um+skKlud7HXmn6GjglcjOpPCieGRnUktUVmP2YB4sz6fOJDUz46Fh6N50N4OwlzYLr3vo5cQzW1GW1A85xJ5cHAVNuuUtq8cZdqRRMarXWr5GYNMX5rJFyJdpKL0vg/31STV28dM7tXlvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVzGg7n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVzGg7n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFDBC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748616593;
	bh=Ely6P1GgOV2/mK7kE+2ZzPUuLSxHW1H5syRjmC/kVJ0=;
	h=To:Subject:From:Date:From;
	b=GVzGg7n8lO5dIU0Al2z1I2ZFiW3N5b33Coo1YTYjulhXeD602DydxsvWl+ie/g+Pn
	 3XeVXwU+u77o220mOJIyugqKNWWB9Oa4gginzZhnkk9QCo5i/KXBvdrrcrymlX2O7W
	 40QVrEo4PJRD7hDbpKTvcMB3n7NvFABlJbp3l1uXh5Y+0sjntDQ47yziEYGNaCBMpR
	 IfOS0uRdihX3btUrfKFaLhV2sVl1Hb1AwlqkVdMoihFhp+3BUtLKqa2zrNB0rP165D
	 iOEe6bNkdjGIDepg0il9EaVeBUc4Lt4AXuI2iojJdQrXWBpciyDn+K6O1lFJOL/wmP
	 Je/sja6uz+sFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A7C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861659357.20234.8509159022143505086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6c6347bcbf6d272828a7b0db1aac5cdc85fac5489bc110f513b76da1a6b629
Date: Fri, 30 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748616593
