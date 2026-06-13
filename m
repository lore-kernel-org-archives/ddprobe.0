Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47242370AD6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781382994; cv=none; b=BtpSA80pJYuVI75TIFjjJ2ZnFuNQh/nLBl4EnN4q03Db46CxukHl4gHiUlPMbfHydRtKMUUsBgkOQwBkT5Y+MlMAhAgGjXWHRTcesOUm/zQhh248F//n1xBvn654bGNT2/kGxJ+KA4hxtHiVNiO8OcgPZgVAGpgxh+ugSeFPGqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781382994; c=relaxed/simple;
	bh=VHS/bo/hOskpoekxXzLSyOIHlpCxvBXPqMt4yXEl+ag=;
	h=To:Subject:From:Message-Id:Date; b=rZV9H95GKcc+RUTZzXQFIg50gqHctPIR3YUXoLszpP2X2vHWlbHwsURePdd9HqWOaaIUMD81y9viFXgzKNHFdovulGthNms5rQXQzhUFMS0r6a557MdJ0O/uV1g6ckI751XOiR14WfYk2kiWOussvaxZFNRVbY08I7HrBBdbqfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DytLn6+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DytLn6+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BDCC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781382993;
	bh=VHS/bo/hOskpoekxXzLSyOIHlpCxvBXPqMt4yXEl+ag=;
	h=To:Subject:From:Date:From;
	b=DytLn6+xBl/vyaDtrqTQ9x5AJA+Y7FBTb/RadyJgrKOhxUkm/9a/aWD+D1Ci3iwui
	 dkYBuXDS+HGpG04FGhQqjNmsFftzgq9sSpxPcihTCKPioTLTGFBJk9mJ0EMrUTSzzq
	 3+8sa1kLPyEw0oRyVU+JUUIcglN+qFbK6PaqEyuMnCqyS0fGebeJwZkZ0j6Nh6OfFU
	 2JQuO0HLfBWKR/pS6vl+ryqWmEJH3PXAdR1ylRqQmTI88vdjCKJD2JqEExgUys0vDU
	 WTzabp3BzBhKYSG8qPrHi/ErVizwVb5rW7+6HQYo4ptOhy3qUR9yim+hEiPvvnvkiJ
	 YnqmM1H8rWiZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7869CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138299367.18307.605650559306350212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38665419a904da1ae45d60b469e6f3046951642bc40168e600ea8ef1ecb7c91
Date: Sat, 13 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781382993
