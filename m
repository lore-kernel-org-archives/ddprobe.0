Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75614A4CC
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779148234; cv=none; b=sHeAppxe6JJbdD535eo0GcaHQqgAvMu9NhP+hNxTaQDEwQPd7Vf3hxEIMuihbKUQVVHehd/bSMMQVFrtbv6wHUysN4i508URMejTMEBHYCddvNIh3rfJQpSZyFeveF6maQZE4NCh9jHBVGMSghdPGb7pW0IkSbCBOpxv4tPH8+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779148234; c=relaxed/simple;
	bh=WUPvv3MDGf7MKf9gVrZWPeBw7iaWGrKDjPxgduofBpo=;
	h=To:Subject:From:Message-Id:Date; b=CjNqT/gLgqx/DqF7YLYMNMUO8OA5hjssoaVHLNuGCWGcrgsAvPett8z5k61LBtZ2CW2ZQ9JJ+YvQl4eFrMakaMQSxqgXt7xnu3pvc3CS7sCcQZleJ8pgQQ3g6qoUCuQzYClHZP0pUQhR/7A6hfnSp4yA9Gy5XsElRUSvfmvBC6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHZQDUeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHZQDUeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF17BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779148233;
	bh=WUPvv3MDGf7MKf9gVrZWPeBw7iaWGrKDjPxgduofBpo=;
	h=To:Subject:From:Date:From;
	b=NHZQDUeBussqHBLqLyizYw9ptIwuY9zWVFVCPNM/W5IlWN902pLrN/EikWBwNdTcL
	 ioXGXCc+mt+JL9cI4t4rFwkuijb/3zj3AfpHBlZoYQ4TglPOFhdYPVy7VRmh+d0RWk
	 c0ek1RTJo3alD+aUmQlyBqmK6gtWoWj18cDBLXOE8woglkAYSPSXhmYqVT95eJ+vRV
	 SAw5Kjlh0IICwHLqQXEKylsvql5vkBf688Y4O8l1adsQyq//bH75SwXtTJaxVlUHvd
	 QPgrM1O09ONP2FGGWl+SNMae2YdeX1Bb5yMfmOJ4bqCbZdUhS2L4SlmEKj21IFAGV3
	 W7VROCkn9h7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD2FCD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914823368.25387.10212101832313434157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858ed9d1889566555416c82c3631bcab212ee10b0ac3d55a377ef8f188bd3e70
Date: Mon, 18 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779148233
