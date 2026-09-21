Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D71E39734A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790006434; cv=none; b=LkGVd0biV559m0VF+v/cBy5bntRke7ttAz+8XXbeKO/+XEbBZi6d+Ad9DaMBDFNrNXNOL50HEV/zWYERozm229C392ybKwdVuEYsluLtR9wpOBZwael4SywETEKpht5vUgfAUYiHA6aXzhMxFuBZJq0he2evlOQiEcUw0OW6R18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790006434; c=relaxed/simple;
	bh=LqyUilKNWUAj0KmZZQQ+tveA8qbANWuUx91slpSIINM=;
	h=To:Subject:From:Message-Id:Date; b=tRxAL65lSu1k6Ah7NQd04kVCc8e+nT8EP2ISDfDedI46W6Q0EwMaCWSZj5AFZKwP99FHOrJ0D1+scJLjwp2TonjZmV79uBov47MKbGv75Hidhw0m4H1qfWkm6Mv8JVlVLGBtnrOqcw7dZWQSKePC9ZBwLZhruWv+xpiN0nTCVlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeV0f3Y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeV0f3Y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56E9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790006433;
	bh=LqyUilKNWUAj0KmZZQQ+tveA8qbANWuUx91slpSIINM=;
	h=To:Subject:From:Date:From;
	b=MeV0f3Y1s9d/tL2Jl86gLDE3WkIVySEHeCxiQUXMulqqZ1N9a3HjPcP+FfAG5HpBQ
	 gG4+Wnlz+t/mhVhzyY6yGdsjO6kCdf035Y6d3XplA9SY+EuncYwatpfrIt/AwlwqJW
	 xG6OizhKPw80Po49517IiF4FvzGIWV6PMQ3/sM99Z5nV+rCBsBxYvOPQnh5rylsxdo
	 zW2+jhaebZUjY2Ca4JS//cfHku3aWvy/XGMAfZQD3jOW5wuUYmH8KPnNnfzU/3xOyR
	 hN2PliPyVQ6trHhg1gt0s3ooYOdd3Bdq+7t9tTc2h+vO70AwVXN7eeZZMySdOchi8H
	 sICZPVRmy7u5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE06C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000643375.6627.7217269660390996161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa203c94797b0ef6cebf9af12faa46cd4bd8a38cda089cef91b6720087ce7a9
Date: Mon, 21 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790006433
