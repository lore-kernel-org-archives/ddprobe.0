Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AACC13D2B2
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726069554; cv=none; b=mcQ1nn9qjdix1mI2ztJmmovXrou8IsmrErBV5C/Bn9+Ze1HVd+ym/mAXdM3YiSo4p9S/INUN4NqyI74RwIOajLXySS83VPqamzLqPGOC47mxWshKpV0fSjJvfZsEufM9BSVrLIqigGouc4vKpIuy9zaMfTnl6pdXFHbaI8pqvb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726069554; c=relaxed/simple;
	bh=4y97fnNfdLRUvjliDiBZK57VTjDdmY2FQoh3G96J+WI=;
	h=To:Subject:From:Message-Id:Date; b=Dpc6HLY7ES/FninEqcWLstbN67LHENq2xwXRQIlgJRP2TO9K/12qzmHSIY8S0ElInZ4LK/d9njink6e9LKPB04GPPbTHj0lvxugTW91JpMmn7Ph2p2C++Iat3wJr1cBJyQb+Pstc+sEZ5Xan7dD8yYFKlLrckKgNvrNSPJfB9hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcgLe54G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcgLe54G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82BCC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726069553;
	bh=4y97fnNfdLRUvjliDiBZK57VTjDdmY2FQoh3G96J+WI=;
	h=To:Subject:From:Date:From;
	b=QcgLe54GYSG1PpdcbZyWxGqjb2ARPxOMuPrgwb4MGaswebU8ioPtAtjEetOwHGQ7P
	 706SFTJpOvjL+gWi7fjXdZC9e9Ktn30UyMRxfe5pnDhFpsRUr+AJoH8PPecqim1ufi
	 ImJzA9pdlj1iXcVsjc3xJXFOuKQRG5RUWEX0zrc8IV+ox9FCXsqCrnO13+BpJQF3kF
	 6E8FRVEHggUVHk4mVmYZXEB7UQ77mSVjzToO+KSlDCruvNz02jbC/9zxgqq3XQP7hX
	 YJHhB6nfumyZvtHfbwYKFvR2vRE6clhK27yS640ivaunifoNCmA/b8wQ2RKLlLzBKu
	 cTEeeQmfWEZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958AEEE0213
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172606955360.14130.6379148462188383931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ba88bf5a7730ee6f9a422afc4a5f9f2bc33114f2c4467d3547311cfebb2299
Date: Wed, 11 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726069553
