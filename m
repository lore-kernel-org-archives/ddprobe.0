Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A64479864
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789944634; cv=none; b=WnuTHYjytzWlHPme/Rrd/RxCuaCqDo6Lc0WhG2UMfd01/pYETMCS8b8CvM44OrRwAwQYz4BeuzSSBFT0QqtyqR3zULk5I2/Fhix7gtsES5gVdGmISOlkcC9MPaE2QUhzkczAwoTROio32Pt/z+HHWfgsbn+msb04roCwyGB0ueQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789944634; c=relaxed/simple;
	bh=fVNoaYsK5UmNKkKdu3tMlypzdVOX60Xr4yj7vC1Ts70=;
	h=To:Subject:From:Message-Id:Date; b=LfHXZNTXnTWucdYpieO5fUSf+ngkBUKMdCLEFjZily/fXeHYHt3az/SHFrfnn0tiFgyyx0yumcDX9DOYxYulebw6qIZTQozGTvOA53gKn0HiEP/qN23KJTW+73wT4qHFCeqZztbVAd5wEulV1o6dsps4WgwI3nxxXNeWgChgbVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc0SfJ/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc0SfJ/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0C9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789944633;
	bh=fVNoaYsK5UmNKkKdu3tMlypzdVOX60Xr4yj7vC1Ts70=;
	h=To:Subject:From:Date:From;
	b=Dc0SfJ/wrruLkw+WPsQKtX1fH6ZGWdmYIDL4DCCiTykPSlz8fU41SyyCRWKtZNRGD
	 OPfgBdljY0DTyEM5i4cBM1aDZj7/ggRgYGM2yfzoH9ja6L/VdGUVKMwiY6oXKUK8GA
	 kwDZt5HB0Xg+vp4hiL9sawwPEt8rPuQU8vec5TwI35MsvKjIUV3KWFwcN0lrqzbbMO
	 SElTDvnXf4WfhXzd5wqkGKdb2JTEdXZ8Pm4DI3toKA6qem9xF7T81EiRp+ka7DeHMc
	 p3m+TEV8Z1De+xfjcIfxSy7Pl9LmWcszPhN3MEkN4M4M1xNq7ZllWL0SScp0tGW2CC
	 ALp6Y9KfThtLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0A2C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994463369.24537.17024702706642558675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb4b4c644f0faa79eb971d37d4f0a6d1f3dff7507013690aa577cfcbd8444f1
Date: Sun, 20 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789944633
