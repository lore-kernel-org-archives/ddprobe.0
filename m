Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D35B1527A6
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714638743; cv=none; b=Q7DLzn5auZWcCvnMk+TMEjrYIpppw5uKs96fETMCcMzYBKXGAQHdUuhIB6N/fvmElVVfy0FxFvog3gmdO1OJiFf7l4pDkheozWYQ6cWloZ9Swv7sGXWO7TVvpQsfEMNlvzamyNdNed9fVVQFOKRXkcZsHGAOulTpi6ImodA5CXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714638743; c=relaxed/simple;
	bh=CYmiRxB7PESrXWYzXJp5tmCc/zhiI8VYeDXPFtMHW7w=;
	h=To:Subject:From:Message-Id:Date; b=aWtTk7tyLxywAfvyz1lqLFCITkTts0za1chAK6SImxq/0AYFdAp9IzMPctpnCgUP9iCQAybxA2Y37E1fvzRDzi8SwuF27z3ZiNwinbbOYs0xKztLSwSxjTbIstyu2+X/I6VLsq9RSw9haYr3wcqQJMDVilr74no4AwYP9taPW5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey5UrZsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey5UrZsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C36C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714638742;
	bh=CYmiRxB7PESrXWYzXJp5tmCc/zhiI8VYeDXPFtMHW7w=;
	h=To:Subject:From:Date:From;
	b=ey5UrZsUPuRCWKTFsBN3xBhdhpuX0Suhls+fO9hsaJDRc6ZQIl6cIFtChKCY2Sdag
	 Zu54jY4cDTM2NeSTJANooHzwbGGnfOlcNPSfB/iVHQtuCKSVTRI7y3uf+6CaYT+whi
	 BE3r/jAM79UULNcMSAL5q+Rkipb3+7bGbbuy15X2KiC3FwfY6Vrz5s7vETmG5nPOim
	 Ivapd1Eu7B8o6DqC4H19/rgXQfLw94hOBbVfwlzKTdKetV8Hm0/ktb/vFJRWe7+i2X
	 d349nOfvUp5dpX5cMVa8WN3zpDbUOkrB5/OaTp72JbQLsd0GQ+uLm72wM082HOridw
	 Ohkgq6NxkEZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2427C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463874278.16919.6589420938321647497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e3489baa1fd25f4d6088d396e948422817fc08ff0943dab0a447e0b8bb8741
Date: Thu, 02 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714638742
