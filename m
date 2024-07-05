Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBEE1482F3
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720179323; cv=none; b=KQhLQfwzBXyEGpB9OcNOCnRQ/p/wkVOWHEBVC8+D8hdoVD+clr360mqCGknsoFanE1/Swwv+FQ+nzTemc7K8PyO5ZlrBsndTxCIqkeIMdX3KCaC1MLxt4lomwb6qRkMS1vjxbgQccBweKDqd5cWHjEQchMJGfKxXlbyLtO9m4SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720179323; c=relaxed/simple;
	bh=xseiS4C+/1bzv+KCHD3d1FIWG6KbhBi60CnvAekAmOk=;
	h=To:Subject:From:Message-Id:Date; b=DOthBrnoY1p0yEN7gRk6/SSiVKPsygrthbHyYl84/zZtLi6ZSOx85G3+XqxSXCS/uc3wypvl1mUfVjj7U4pjTz/v8dcbkEDHHENRfL0jQEou+h2zicXWYPdb1/SHeV6M36EVv9mF2fn441pIwdABfJRWZvtE6to3dRc+a/9usbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjE/T/WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjE/T/WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D399EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720179322;
	bh=xseiS4C+/1bzv+KCHD3d1FIWG6KbhBi60CnvAekAmOk=;
	h=To:Subject:From:Date:From;
	b=SjE/T/WIXkY2z2BEcC/v0osbPyptvb9sEo3cx8WG8S05jqtkDR1CkBDgGMUq/yGrQ
	 HEJOyOLqqk2qyLvQKB8Ll8f24tP0BKrCrS/BB9diWpzIGy2RGCWkqaROScBex9MAnz
	 q4h3KTWrs5YlVBZ6+AUL2expTXpiLRf3jOiirC+qYM6oCNUdO5kpzWan+lbH+7GZJi
	 jNTh3ZcIxA6PpEWwItErZaLX7udOTNzzVO7G0UMDQm98wBhXZyVrRs1Ed8ywbcF20O
	 speKqp+4hQfJBY3myRkhDtkE/U6PCoAU9MRAJ+TSutDo4cruivG0ioUkm/FKxoD05i
	 nxyAjdM1FA3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD52CC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017932276.28597.14891804795138820620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab376e50358c0b3d677d92335fb7bc499bd5f661d77dbd48704440959e3306d
Date: Fri, 05 Jul 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720179322
