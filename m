Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFDF51C5A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714558943; cv=none; b=MkB26srsQmPOrVgVbimp35HTqNk1QWzFpCnPts51EDTQJZxbGnzSr1h3+ec2UybE5HRRwO0t9iU24Gw0Ja8espAP6Ld/L2JQ22PSqvILwf0VCQlg9Mc4/LTxYog1ylbyVrUDTQLNigqBxixyoGExR+Pqr2e0hXp7JWCnRgVMXxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714558943; c=relaxed/simple;
	bh=jK0VxB0KgjpyugPO5b3pkwS01EOi4WkCsCx25Bv9JJ4=;
	h=To:Subject:From:Message-Id:Date; b=DmMO4bdOqeoWnTHXbqLVCl+WYijaRApwTolETFo8eqgnhHGZYz3dv69zEDtCwVH86OLSoPZ5+E4cHw5qmGrzPvjuuDCKWjFuHgUGZmZBeFOYOtL4QAbu+JSzuJErVA74rP+gw7rcd46kOOfrCqQMVZ53+rFtdhkvEEMIVcTO5eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh4crnSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh4crnSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A13C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714558942;
	bh=jK0VxB0KgjpyugPO5b3pkwS01EOi4WkCsCx25Bv9JJ4=;
	h=To:Subject:From:Date:From;
	b=nh4crnSlWHRhBz9dG0jgDFXMLOaa/fzy9xIU3ruuel5+Sfq5CQF3XDnftB9K/QnDg
	 /X7yBiBV7fFk662cCJlzn+3yB4d4O1Nqe4n6luTRroW1S+hELxFQLp2MlaG6F6G8Zz
	 l6H27rLUQpKc51z4tqCqZNqz5cJHCNbuIQzQFWk6+4Y8ejG5GO1HY/mXlMfDAz1C0v
	 LiRHKOP8BHXJLtwlekR7JkS+lSifYBUvv30bu8lotSTfjBFKmfN8njhh97evwi8kjn
	 vDHVJ8WqcduPij/yWjO4iW4L4KQ0tdNVJTHjkAJU/PWThGA1HnLvWL0jwuaG+tjpI4
	 zTUpOQMh7J5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD441C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455894276.5900.12371450827199223232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bd272a356a41978b280f80672cfab46ff36a2e4386ad9453ed945467388200
Date: Wed, 01 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714558942
