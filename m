Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AA7215075
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781149594; cv=none; b=q3/Y5Tb3Fx5TxRK3BJ2BEyapj9b7KpZ3E8OxhknNAneXkRX7WbW6aDsD6efTmkBaQh3qVGjmTz2V+2VstOXihy2X/Zk36qNa8MPr43Qtwf/F2oHZGpKgfJkUAD4rrCqjJl8+pGZQYrKingLB4I7+LWvY0Hfvsvmlx8L0eui1MAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781149594; c=relaxed/simple;
	bh=HWW0oSNFQZi5hWF50BfHVdGuJUj7YXg3M1qFI8HttEY=;
	h=To:Subject:From:Message-Id:Date; b=CuMk4nKhoiIQJMiSsqbxUEhiOf2VG+gCMpicV21t57lbvIjbEqpt9h5wszEPIVyP4cvRhVdVaGYXDmT7sKMGuZg1CxD1O6OBsFZwE9NKRKqUDZeLu4bg9opbt3vY7wij6dqHX9C4jgm/nKdKfZy5luGa1KRJVzriTU64Fp4fNQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfShcrNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfShcrNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EF8C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781149593;
	bh=HWW0oSNFQZi5hWF50BfHVdGuJUj7YXg3M1qFI8HttEY=;
	h=To:Subject:From:Date:From;
	b=VfShcrNYdi3MGyMWaZMUQ9WvuTyqhjutRlKXgnlH9v7NR4ntOlKp+OH9If34UXSTl
	 kWz9gGlAMRyt6yV6CY4OAHeI/LlWeJigH7xuIqK5AzRYGdsBfu8ya2qDIb4nqyyoE+
	 2cpfimReag5nrVTaen4I4qEjzACan39/3T5bIDXkPaoLHLwkO29YGO2SsdimlFgE3b
	 6cnloBIDCFSxf00ZROQNZzSxnJ4zCIyzOoYDoC55PrMlMjMVOJMJO45FzGX6g4oYMO
	 5NuHcKIFxSDv3uq7aIGlQIVeWQ3sGSIafXGAB5TxhfCS9aUKHcKZ0EYY1G6WTNu74B
	 TnUfdfhFt0Czg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B398ECD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114959371.3942.10591021120816422950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c1d8a3eab4fa48b079ab52a20d579ce4638f91a5f2028f07a969f93bf69ccd
Date: Thu, 11 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781149593
