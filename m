Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2BB37160
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711677497; cv=none; b=lP+uUOUg3O7292OYja1pHf10o35IzYcE+4yC7GbBr27UGxfdY9x9tC1YtztYp5xDryF8VrJHgI/U+yTIrDlqdc/cT10BFgwmAU0DiabRdOY+xMadD1Uz1s77rvn4jONe9cCOyqDWR7BGIvWe2DTWSGlcFOTOp7/qkVvCuj7fyLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711677497; c=relaxed/simple;
	bh=KZEpEAATZEI6m32MBaZp/HvCTZ+ypar55uSRQt+lZM4=;
	h=To:Subject:From:Message-Id:Date; b=B0o+0msEHL6kuKPQhkDdGovDWC5DCEKNurKZRLGqqUX+koU2ka0OaE5cFqXntwf7ZVSSW8MOGdxkFMflr2uPGvnGBZtrdkSKwgrG8DMBXfp+9RU/mbMn9389ko/G5IPoBzoyOu0YJbZPMoNsMHXD4yM0o+EdGV0n70DFrcqzZx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVNmYRiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVNmYRiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830FBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711677496;
	bh=KZEpEAATZEI6m32MBaZp/HvCTZ+ypar55uSRQt+lZM4=;
	h=To:Subject:From:Date:From;
	b=mVNmYRiUaiycAZ9x+NgnHxclmPeJ62ftgBswVfuRmaLa9y5BJsgp4l4iI4WL0WzEN
	 GJ83EoEqmFcaKGAUK9qylPSQo4UboHKIf1PGHyNJBi60V+Ahq91z4pFgAmvdic9bnt
	 DTk/J1fJ8cWtUD+DvxYAG2TiHcZbDm5dSaa8Sk0Z1fbreGsvOCqu2hr0qmWjGw/B9m
	 k6jnMfTuIUhd80PUdssQO/OYRfjI60ifFA2FjAZ0aVmHpDBp9utcGx9/mc6znDMs99
	 9an3vdfrG8pTJJ8FQhhscqb9EEA/2QYH7t+doPV35RmKaxKjhTQnCQiFN+zWEJq/RI
	 wfsDQ+5gF7InA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F1FDCD1288
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171167749643.6934.709632107369576307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6296d9addc1e5c4bcd7525ca407f08e0ba13280b3bc9bb6af58ec64e5e2b57b3
Date: Fri, 29 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711677496
