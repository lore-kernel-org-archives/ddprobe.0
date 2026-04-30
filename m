Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27524257827
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777573054; cv=none; b=uRGMqyFIlqPNcIUcPfyK193Pcsdpcl7JEW28hEE8Sfx2Xs4Vsu+502eKuRSPVRDQfBAtCA3RJxcg8bN2crhK0ZSUd3JymMAfrJwnlL9rMTDTbyaUUsSxjzGK9ZGM/q47Zhqb5YWlwVtA+MKqgcIXN17KzSvHYHqQDUsCF+jFwyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777573054; c=relaxed/simple;
	bh=OEvRWtFuTm1yDGPuwATkQF6vxMy4dpISug1AyHC7jqg=;
	h=To:Subject:From:Message-Id:Date; b=UEFseOmxnqVgv9HaE7DC/dSkTauZe/FnIpVuw2XzBGvBfr0KoP34jTa2AfHAxjjClTEu+I3FH9eEsNmrhrQ+KTFdyyZiUJ9Sy2Ks1Ud1nCKpJ3N0/Md5P85PNU1y+Av5O0xTZJPdFz/1PWRje531XgZ8ID2VfRQNDOd5xBaMSo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVyEFyN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVyEFyN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD4FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777573053;
	bh=OEvRWtFuTm1yDGPuwATkQF6vxMy4dpISug1AyHC7jqg=;
	h=To:Subject:From:Date:From;
	b=BVyEFyN4TX1ELg9y6K4VBHRokhBAPprpgUKxv51WqFn+Ap4qbkwef7+Bi/HL3AszL
	 AcBlakZtJV9mFpCe1gu/HmY8x68O6SkSh+CsvJv77r6lmdIXiTmzKIIoCmmmCTSj/G
	 Q1a4I3LpW7v0qvuxEUA7wTJ+zCXBxnGSBV3dnj5ZMKRZFmO6F8AWg7G6LTqMgbN4nn
	 vJ+9k0IZWdGNLeus+/nEimt8iSMNiJGIYDrjMhPXAy8GwmE6FObtDf4s/BJELucLDh
	 A0bV/uVC2okDPqVTiMkhW4hsc8caHPYOOgwrk6RzMDOhb6WgKqfrIcLDzauhWzquOK
	 VWJF7HkeCjKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98EDFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757305368.6495.9459974931493494848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aeba6682f65359517ad280404236d0d78c97ef590c6d9e328e1158f2d5c413e
Date: Thu, 30 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777573053
