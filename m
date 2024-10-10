Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475B19E7E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728537954; cv=none; b=f+WYbQFQJksrTp7vFEOFNHndtRnposYRVHl606efcjnZLG6XrcIa6xKzpMqzibEbo8NSbqaGZz1AQuRMGVTH7Knar5e40nPvYh9MWDqRvFiGXPKjIF2qlSFfQJKSnLgMA9ndqz1wRSuntXrOvzO5KICoJst7JSVTSKUExIst1mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728537954; c=relaxed/simple;
	bh=tSX7CG/C+GbSCCkMU25vrDw5X+GHnUfSeNQjUGBWcS0=;
	h=To:Subject:From:Message-Id:Date; b=piCczrB6qsMuKIAFxNveLGk/MuwMsLZVD7WVosHOceWEWwQluKmk5a7uKOewVFL9r4P36IWM8jchk0RBBC67qgR93bMbsVx5t37UbPX4yxlZQLt3465vspfNC1SPDZyO4eiYKQEBoxQQbhctd1mOt2dCd4ZnynhhGC72TTL96xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV+KWCrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV+KWCrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EC6C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728537953;
	bh=tSX7CG/C+GbSCCkMU25vrDw5X+GHnUfSeNQjUGBWcS0=;
	h=To:Subject:From:Date:From;
	b=pV+KWCrwqKcFlEoGPrqoxpJh+gzz9yBL6wwXi7hMYnvOqjWaEHVoLUXdYpZL1Sfvu
	 IoPvjGnSZ48MI2l9fNMDMin3ksqXESixqiD+zPA4L8htzYaiuZFVjEgDpJkFHSvZMO
	 4bLoEKjoCEZCbTceBTAkx/EOe28G/4mnKArpQxm1OU1FMlYQa+upXfoKv8Kgm944Wq
	 mycRmullg5vj/trBACnzkJmcv3GTU+7sCLskGi+7aE4GJTAByz++nuPgN77X1dBaOv
	 L9J+RcLGjrnyt8pyd1lc20NQcIcwqlKDhFqwJPfQGn52rWOHEilhC5grkMT14GmyPW
	 YakTA54cLruGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98639CF07A5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853795361.8489.16451149980963727713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12049138bbbc3ca1631fa1d8a8a1f8b34a55b1b15b873ca3105807d6c37b5e84
Date: Thu, 10 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728537953
