Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0983264CC
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781477794; cv=none; b=imlxVXKb5ACC3dh/X9MYpluUKTPqe0K1T+eSoi6blHYaQYRIVN5zq8LGU3W1IxqDNKxUtkBiZJIFQoWaV0kCnK8epjWfAWYEkVH0nyWMMDvE6j3cPMDIQ/5Cl4D+jxulJCVXe40SmEVdsV/C8rl75N/8IIT7kcACFUm10r+eL5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781477794; c=relaxed/simple;
	bh=Jb30HxqGifknIYx+hVY9Ke8Mu2a4Nbazty2heJeswE0=;
	h=To:Subject:From:Message-Id:Date; b=BFMKaNrj4b3ovKeSqlBTfPTy2PIqKewpmaoZPTP/NwIegxr64mJIozNEOwEJ7JAeSVnsWr2LDmDWwc5i+3CRsbahA4pufuvtEGMTVByxk5NfEFNrpXFtQJMwuU2x/03aRdRJ0jtPTZOp3dpOpeh/oUQvxJ6sbug8otfLIJ0oH2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSKnBTz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSKnBTz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B70C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781477793;
	bh=Jb30HxqGifknIYx+hVY9Ke8Mu2a4Nbazty2heJeswE0=;
	h=To:Subject:From:Date:From;
	b=HSKnBTz1LD9zjNFu4ckjUBF8i0loctJN1ULASxYrhHrtGNVfdGywC7dcrXlOKLnfO
	 ljj20LmBJ55Uy1dngF9oZnA+Ko3SKXbo6VlLXweWe1AHWf13Sy4zt6X7Wbe1HtO49P
	 fCzDw2O0AcAmj02qGvMorNsnFW/TsS8rIb77gzVedt+Aqq/aGh/WdmG1TrYurTBo8E
	 rkpKY9yvQZ/9otxwdrC0E9nomi1SRDMtIecmmQI7qhPJxg80YxgCA8njDonKe3Zrqy
	 7vNEIjX4TRWgnYt8KdhWGg0DPTTSYvAhUjb9FgwDyrcW5hk4T4RCU/2NEN/ssfF3i+
	 qIyaZQO2l6ElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A0ACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147779371.9702.14753957236333828208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17414c223c8270d037b9d01861e2cc0be51a73f7ddf86150ddd5ad32852d9994
Date: Sun, 14 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781477793
