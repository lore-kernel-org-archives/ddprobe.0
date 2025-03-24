Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6E718DB02
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742815194; cv=none; b=KPR/yboEpGqk7E17GmFX/fsve2NjwWJj/qsMr1QznZxdpUzHo8t4CeEr+Ytuit5WIxSRXWzsRKdDljIwcV0CUWOCAU5BzEfgUj6RpqH1IWJ7AbLVUCwns65Jak8skmdGt5hZCXizPPi5ssrZ8AoCAYOkPyaxLND3uRGrHxc6ff8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742815194; c=relaxed/simple;
	bh=1F0TDVoGfrOfnOG2DKhf1lZsYOdpDYKWIzBffZP283s=;
	h=To:Subject:From:Message-Id:Date; b=eyXfZ/paG8R4YMjvvH1zR0+rBnHryXwpW+Pos512j2As2ZwGqJ3pMo0xru8ejs9+vKyh22+dyvF7kctPGF8BKDtoqJNFtKAlxbE1GngniJJDSJi7CzrpO2X4Be+ceXpICwc0kbe8WmVQJXkALbpk5gWWB/k7naTCi3FIteSBFXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6ssXRh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6ssXRh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3371C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742815193;
	bh=1F0TDVoGfrOfnOG2DKhf1lZsYOdpDYKWIzBffZP283s=;
	h=To:Subject:From:Date:From;
	b=I6ssXRh+XWbtQNGugbFf2OXGd0w/I7O3xzRfUbTWu2bWfks+pF5hN9ZouR8WAN0RF
	 PDFtiSFNtTPBiyKBKQy1a8drOiEvBC0ADRHj23VxKsAtggli/lLa092pREtDW7wD66
	 mUQwgfBfUNr9rbvCy6Q9Qkb9WqOsHqTIbNd8mcvz7sqmD0EWE1eR8Gb+t/dCFVNsNo
	 U9QNqJpV2zrFEDb9mJfMz5MmQ2Y42733GMvv1ymXpHN47wKFrWTh2KsNzVFAlO4XNr
	 Htiia+8PnSUH02Vv91VtZ8PBT/G60X1aDCAWIaO1GuPCbhKWC0CU4myK1QsFOGnXnn
	 81ZBYl3SvN1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509FC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281519360.1209.3585133205608695611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f705cd88de18963c8afab3d1501488c657fb97f30183673cd3686ca4b0c876e7
Date: Mon, 24 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742815193
