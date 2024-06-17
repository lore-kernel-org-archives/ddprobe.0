Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7918EDDD4
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718597903; cv=none; b=Gt8kGMU2SHfLFcpG09t6djO2+4kGoCZtK7JlX0I92k7bncVN1ZdWjJqesXwNHR6lb/8pHgxc0RoqDpOTo5VSAhkpx79W3v3em4K6iDj4ogSXAg016muM9f1TVSrWy/z0Cg/iGP/kOpJmG+bbWdOR00NOOsnhBMVbk3RFpV+nOX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718597903; c=relaxed/simple;
	bh=mHUnaUSLoZUNECC4djOE7xOFdUDW3qRmLGwMTjZmtsE=;
	h=To:Subject:From:Message-Id:Date; b=tXLA1eQdz+r2bIaN7+NXqX8u+0dIiHg/LtWMltuqzaVh6+eutoI3rY761d9ROG9UoGRwd2DNbqw8KG1zBZmbOwEqtf6qdLItLppzNciCcoPsb6ymCEjmYRiOGnKnjNNiWNoebxqLgljiz8dqqBbkTCQGFTFNFVXQhya2od3DA3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXhSIdIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXhSIdIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA560C3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718597902;
	bh=mHUnaUSLoZUNECC4djOE7xOFdUDW3qRmLGwMTjZmtsE=;
	h=To:Subject:From:Date:From;
	b=QXhSIdIZDgi+0OcjkPqfdC6ZwcfJZAe+/qbzP5LVo0h3sYJqdGxA3Xkt3h0IpSO/J
	 u2NyuvkBfhd5+xJvuDsnYARwSmjkQtfnzOr7OLAFg/nbN+o2WqH54jh0ylh4mFbzfm
	 kjuEfryxoFJPPvYW2BATMNICJ9CPlgDqQFVwhJEyxRPc67hjHJP6mfIbtExi6q5+fW
	 1UgGFCkEx/RDqOxgV12HgFBe8e+wQvx8YL5mYk4F1pJrjwS64JGptghFUOROZHO5tb
	 tip5Z8xHBE5Hjh8oJOzZWQJXv0byCiYBGl3YZkwLa0lNmG/GEejQONEROuGG2xmRO2
	 bdeJBK4OITSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC3BC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 04:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859790280.10479.1215430888546074303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e96bf8adaf510b2718d666b459c14add95e0bdd01d13a1955030ea2c607bae1
Date: Mon, 17 Jun 2024 04:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718597902
