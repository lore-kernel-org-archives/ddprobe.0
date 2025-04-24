Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCA9EAC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745455195; cv=none; b=YaBtQPZimAJUcpRRwc/ZjpDh+YTdM1bC79tqjU56SFHhu1Y7hqE3OiB9ayxdyhxN8q2qLyBab8y3UGk8lw6QlH4iMwfpX9/gozRUw/wSbYsLStOm13lSeqlC9hX+mcMtekoWDMAM2B6WThrydMDgWZi/tmBXjGhDgUPWph3UwAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745455195; c=relaxed/simple;
	bh=fZHtISGa8ipkZoHbQlOkzWd+7omYedynCtV6R32xxhU=;
	h=To:Subject:From:Message-Id:Date; b=CPIDQIVmcwvWLg6GVacd0s0iUZ8+WXIagjoyUrad2L3UVfsZOAUQri6ajoMvE/0SAH4C6C77QVNLxA72Zs4zd09S/PLm2FnEAZ000KtvuH1ZyPBdtyqGI9R/NVo9ATfXAsAAE9DZ/09plE1e462EYD31V4/guP5lonokWtR0DEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUQbxzuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUQbxzuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB13C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745455193;
	bh=fZHtISGa8ipkZoHbQlOkzWd+7omYedynCtV6R32xxhU=;
	h=To:Subject:From:Date:From;
	b=WUQbxzuP4YlkWxcBpkGgxcWbcjqW+2l0IYAx+szgH89A9oDEQG5Ox/IbZ3CR+Rtsg
	 4DRTRy9Z/YifwdhtJLASJzYV4llJW4EZgZZcJBY4ZBcyqD37G935H2EcYcKp10Xgkt
	 XpxZMrSMqfkP2xO+HSo8XMNYV25kx+5lcHH6TpHtIPlcuE5l6TrD4J6CPF2pvSne3j
	 mBDm9UIaQ7h6D0nQfEfLXnhmHR2P0Xf/VbEZWhhTAXfp9gmOD5VNoOFq91I9tqd7QF
	 LKS4QESHFiRvz0oeqH4rzmkDg/o7ux+d6Finuj1FTkSh8Ax/zMgzmgcQfAraisSiEG
	 jo0NBqGyZllHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5CC369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545519357.23173.17837663296662687225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2296bd89a907d4e53ab369a3fc7a42925bc57f6469f2caa61d02448072772712
Date: Thu, 24 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745455193
