Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4203D1EEA49
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771468494; cv=none; b=ec9rVifjw3eHnWFFPiW7elOwnd7R7IIjVOXSzq0XDn1FNMXJMbTOJ/p7c+PZU2CKpL5rWSRimRqu4mZOYIBUiiM9Xjxbrc7BeyUn0yJKcdMolVnJ4Tg11gSyFqv8QPsFKjjyCULj7WXJNm9v4glsSPf9N3hOHoUQZkHpNBwrVOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771468494; c=relaxed/simple;
	bh=RN2BNGsuzSS5SoUIBxxd8zZBMc1zEwl/ZUA1rEQ/maQ=;
	h=To:Subject:From:Message-Id:Date; b=dJx2VQCNtnWcQIR3O7mWVv6mvGMk2Rm4Sj6VC/bskgbuM8SVn7tO7oAWqUZjGJuQsk77592xt5KUNKuxiAAz/BZlQJ0ykwXncYyn8zcG7ECXs8f2rzZCqhimVAQOjz0YL15L8wii6KgX9HN3E2Z3ILzvp/TFBy89/DD1o/NgI28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1o3idZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1o3idZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD46FC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771468493;
	bh=RN2BNGsuzSS5SoUIBxxd8zZBMc1zEwl/ZUA1rEQ/maQ=;
	h=To:Subject:From:Date:From;
	b=K1o3idZClp37mf+eWz4FGWBrzcjHME/pQq5O+m0jG8UPz15Txi/9GexzHbonVBq57
	 Be0bSXrYbO4CyKIM3QL62xy+mLlNFxrvRR0ic/rRTBxubrd3q5eS4F2hk8Kajfhvi0
	 CA83MPp6VU2MdczF+7kHuowf6oFQzGaMVM2ZJ9n8gePhi63p/OyU/RGqIfhLxXy2EK
	 u/h2XeFnII9VdUz3BjUTc694HKQjpvvhr6KZSxAIU4RLmoxS/OaLZlVpoRJysn6EOP
	 zdku24ueR/dW23GiN0QlAtD7LkiQtFtnO4FGl8Z4oV4yqpFrGGhFRBIL8DoFj4lccT
	 ysG+Np8+ssdyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E8CE9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146849362.31042.2689965280845538092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f984d5c5ce99d27da9bfccba4b02e6c373c575d5422c911f1bdc18d0068872
Date: Thu, 19 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771468493
