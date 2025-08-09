Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E62777FC
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754738994; cv=none; b=Mn7FV54VsJjjJ4Fy3p69rHDyrjjXcXLydL8hQ2zSBYtps8rPBzb+aWz5VMZb3OXGXKkNJfY/fSITwA+rzjtFfbkT3fPez2zSWNNKEc68kTf4ah7507maPHocW2gD405JmEiYjrTzlf4WKcXnjapSWsfSUafawuccMfI+bBkYGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754738994; c=relaxed/simple;
	bh=nvx7osBgOfSSrAtF0kCRaUsrenxLSKAXXVXaUx+Uyos=;
	h=To:Subject:From:Message-Id:Date; b=TaTIsj+Ai2TrAk1o3QLTX9gRNo+4I9/wj/LBkLVwdZV/1Ii7BdolMQdk4etdf9d+lwzdN8oOTHeXWeQNRfrNIy3Jexyngg9+stdtieNJook7268HDTci/6JEB/82k2grmVZ03IC42nuSekkncjn4hQ8iyZ8vZltR+USTlYFjAhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXBKiwNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXBKiwNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A1BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754738993;
	bh=nvx7osBgOfSSrAtF0kCRaUsrenxLSKAXXVXaUx+Uyos=;
	h=To:Subject:From:Date:From;
	b=OXBKiwNIMqDYeT6rE5uychnS8yqVt3Eh7a6Nj3USSt87qOrqHRmSt6aLpBTgAOzbu
	 QYKK2TOpMX7bFvFmudkRmjBB59rwSJOMUvbgPAtNUpN83RBjR0eMCCCFJJoUdd9nki
	 Q/PhSL7Ec44x5YbbqOglOebP7Ai1B7BQL+HNeefuO+q+R6ni1oMVlLDuwa/eKGy1SF
	 zXxRSbRrWHtVeI4jAfSE8ayu2rUlu17iRggjZwPPtjxFa82rIffM9pNDduLOZCt+JN
	 4ST+nyvSaAr1PWHEJ6ugG8xxe5opDzTeKS3f29eY2p2LEp+yB9GCXLk3oWu7cm/mU2
	 cv3H7nHtCOcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD5C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473899357.9043.1962767282586480809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3206ea3de50c69c0965aa1e25dd28c3f060195deb5c0196fc8d9c2c72e757ce
Date: Sat, 09 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754738993
