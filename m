Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52653253B76
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742377194; cv=none; b=pWEZW0yhVGWuO77QSI5hisMpbYpOn8MC4/7mJBYuNOmMF/RgotlPS1HfDp7CWhGJNh9j3GxKqm5tIJK7GBntOcbApWt0GWuigK4bDWjBGdvc4FUekUVYDajT1nkN14ixo3QlU0Cgi6DjarP9TnT+mz4/9iwJpjuGmRSNEzpduzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742377194; c=relaxed/simple;
	bh=rnwwSLtsWB/jf69r7kOEkzgxbqFpiwEVQKAIxLjZMxw=;
	h=To:Subject:From:Message-Id:Date; b=YRXQkqL6ws+Mx2CktsTldmBPuIKadrrwR2NPvvqYYYYaoUpYfqcgZQ5P3s+zRejbCFS8N49kSauQPeZ/NOiKDOxx06wUrOlJK5JURygVE48P+Zy1deTZHOZz0svntL6e5dXBI1t4PSY/qWMhbElWSn80rJolthknH/ov5voBt3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjM3ZFV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjM3ZFV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7185C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742377193;
	bh=rnwwSLtsWB/jf69r7kOEkzgxbqFpiwEVQKAIxLjZMxw=;
	h=To:Subject:From:Date:From;
	b=KjM3ZFV1RrUtQ/hdjqmbcaH9rJ/V0Y24DAwlFh7SCMRD9p7Cs8HNmOHxl8TMgjNCE
	 L4GkIvav0wOjChEXjgAG+gHGkPRKcJLnJkBZzTAM+jfg+yCRvlEltA9fH+z8CXfNAK
	 zfBJ/Ae870C+zEwZyn6rfifBGOnocE+M9REGJkumrVXxP7rnBiXIAFvfaEqeArpqUp
	 ZklTehlPyUWvJ/CYQ9wTlB1qtukoOMi7dvkUl/9mJbvq/S9efwpa2TIuiVIJB+UnY/
	 2edRiUPqUIOOIcCki+7cAoH41q8lCJ4BPKenqcX0ud956KoUctwNxqFuDmX6DDrg7h
	 nRCKeNGGs7AYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A9BC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174237719365.22700.13209144224238069401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb950a355d34e9f364f076bbedfc784a9cd6c4a1f07653a5b92c2960d24fa776
Date: Wed, 19 Mar 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742377193
