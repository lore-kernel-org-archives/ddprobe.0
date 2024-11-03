Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EB5433AB
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730607954; cv=none; b=jPpxPhc+IRCAElQvX1w81prLF77fXY+sf3zC90PFT2T4mOvsOcg2v8d5BhVVRkZ1n45I79KZbHIGkDLJEIEeu6f9NEVVbRurIMYjMMwrHmkOzYwBurTqfUnN51yLxJWfF6hvCXTRIqX65tegoI57tlEu5ACW7eyV0gNZiNYnuiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730607954; c=relaxed/simple;
	bh=gO4prd5rvRgG4J46OlfBarASuF4aInVsG7wuSo8ZvNM=;
	h=To:Subject:From:Message-Id:Date; b=aZnnY6Qx2WAJU0Uv0J3Gi7HDKElO+cTrXLs8rkyt0xTlOvweskrSXcLk7zf6suZ7zyyXMjG57cJS4FjbMnzg29P96cFr//vriKzLib1NY9vxkXijdsyzVpM0K3CG01ZZvE5l0gSyPjGWShgLtgSlSO8YHPBhLweZtPs8ptmYCFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui3cRXjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui3cRXjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0909C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730607953;
	bh=gO4prd5rvRgG4J46OlfBarASuF4aInVsG7wuSo8ZvNM=;
	h=To:Subject:From:Date:From;
	b=ui3cRXjsjFha9O4VEYrGUh2GhiVQ9r4ZKi9WuTLSNXTX8Q2T4Ivgvb2cv5tecIIBH
	 DJeW1Y1fgmckqfrnbqH/slSKX11gpF04RKz09UTmeJXFs8utzOzEQwqPIR1N/SIeqQ
	 O1Ra2k8dN3AVltyPkEbLXCGsZV8vYeuEXsR40gUi/NBh0ZbF5pel7YQu8gQJ0iHz2T
	 uTgIvAsf2FZ2w30zni0YpPiZdiZxUym9l8Z5jBRnrr+/SOF8ezMfKr/bS/bbxtwEar
	 zq6n4dV0/Y+1f5x8eSz9iKq52i1yuCEGt3j2SRqSyUq7/jRjk9LsoGAdonaqepVrVU
	 z1xPAPOTU9cgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE47CF9C6A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060795360.16425.12845849961759237740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db67d8032c646ef7275af1baea38876434e99a185a48302ffd6ccff681c2e42
Date: Sun, 03 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730607953
