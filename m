Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7F1922F6
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731708954; cv=none; b=S5BvMwUSIGX0Q4S3SgUR1wVlWtPSqiJeUGqW6WH0akw97ywQ4X8FgwZy+JARpHxbk2j2+5N89yi+cNZCCUo3jPA7uw9BEP3EA11mkEIZFf9QZrnfUMqYGq2wdEoQHCeBDvySskuXYRcGiVdnWij0JeGLYkIKUU9lejnhCovRA1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731708954; c=relaxed/simple;
	bh=/d4ixRC+/w9mhO5TstJfWDFXzBSikU4n4GNLBTpEBOQ=;
	h=To:Subject:From:Message-Id:Date; b=PMD5eJ3UoeRN9299jp034mbXRLA9zFWBSSWNdqgeWYb+mtI2ElhMbg17OAzqQH2ho15/J6HdlNWt+s2liSYsz9VkLUnDs/I53y9DVpIft+KhMAWBSFsny+J+HZOFpmPufKDanPXDKnYw8Ex6gmbeApY4jKYQd6Q+kUoIc/mu+H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbbu0/TK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbbu0/TK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E31C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731708953;
	bh=/d4ixRC+/w9mhO5TstJfWDFXzBSikU4n4GNLBTpEBOQ=;
	h=To:Subject:From:Date:From;
	b=Kbbu0/TKPbLokyJL06HB8hMUAPOiyBPvkb/uvqlTx2fQiALEp+/Js7lxR7ltb72gl
	 HK4redcS6+18KR6J+V4a8IVBuR6BDyNPhPBn7rTrpM6G6ih+l7GJHBTM/oPuTEi9Un
	 uqAtycvDTepFjhurooLMIOFVBTwoOrwLVDLQxymYuIwBA4XadZpgQlxrvN5xZgZKMO
	 zkSs5OTqXfA+UMwc5Gz0uOOnehZgOthY1W6NSd5ujJQnzRhC1u2KqWEvLxZRAZB8rW
	 Z23tYutTRVuEDjMF2BtAmyS4cLbCWk7cr+ccGDIRsu8+521yOmYNdGabTyliHEMua1
	 m2XXfd7MXYEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EA4D68BDB
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170895360.24354.15763240517766192442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86c4139dfd4e19fe4ecc3186683277aef1d428a4544a800bc95e429856439a8
Date: Fri, 15 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731708953
