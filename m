Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CE61E51F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719408203; cv=none; b=fx3TYXfPAcP1t4TTCoXlb6eyjq/LuXXbLy6t09I0GhNmlXPoF0I/pfGPjmv4AP2pBkCvq02NiQpAHvZJzGSL6orzGHs8C+IeX8MJRAVwT692g+fozYUqMVy7FWorJDDudMQB+mtSQBGcZTQI/+n0x8RvGR+oBhTlQ2BytDO9Vx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719408203; c=relaxed/simple;
	bh=sKCXe9xRTnGbWcJtLAPmQo9BoF4CG/+mmA3sw9gCJq8=;
	h=To:Subject:From:Message-Id:Date; b=a6u/7wyqL/0TW9SLxlf4P2x1oSy1MnKsOUjeOvwiWjdPAYaXaiG4ixQ3qm1zWc55ZZaSLeEVvuOAQIQqqvgzS1FXrVSFleZFXD7Ro4WrC4KomrgoCSTCpc64n/nWasYLzVwfnHFV3EePuKkhQ76iMzNkG+72NXyQiSdE85hqcq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEB7kILo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEB7kILo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8832C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408202;
	bh=sKCXe9xRTnGbWcJtLAPmQo9BoF4CG/+mmA3sw9gCJq8=;
	h=To:Subject:From:Date:From;
	b=MEB7kILox7srBmCTfGWijz61B/yiQyZk9cUZ2qZ26M3uwbCMh/GETLhn+5UEklmVf
	 aPqlbhz0BiC1fTDv5oDjvoygJhSdA0+KM6YiNfKWh+s6ayY7Zb1gdu9DvhwZCpiZQC
	 5PHDg7BD+Yq3fmwVSCkTNEokZbbAyhO32a8xv1y/0PCdm6fIKp82ESZfafUhaylDQo
	 7/0QgltnvajVejtr9V2q9d4KMjXrioY0jPfE6v/9pVyIhd0ezWWqoZT9SC2q3z8Zj6
	 ZH5vAK+40tC0iyoHsISjmV5Hzfbhgj1z41j8RiZlvaD4piiyoXjxDgdX7YpMe1ufKd
	 rtqm6UrBJhHJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87E0C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940820281.25993.18150018385028191740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfd2b3bdefce6b32161f59805e64c8861e1fe99a0e56c43374f83bb80d754b8
Date: Wed, 26 Jun 2024 13:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719408202
