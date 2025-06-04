Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F156AA7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749001194; cv=none; b=lidaNJG5sbSLgZCKPv33+ySZaUkEbJNujFZYfbH7Ra+aVgyr4veMV6xY2kwRm27z0Jp07MNiiar7IBIkCY76wkU7gOHVyZ1n9t/KHl/prTO9MAJcwEuxU/odAyvo00oijILxR4euTJPl4cFYFMvGxeGMczZEXcWxpMLJBNNqACo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749001194; c=relaxed/simple;
	bh=OR0k4ySbuprQM1YSjTWKZkSkBs+Vubrg+ZFZXx7l/go=;
	h=To:Subject:From:Message-Id:Date; b=euJFfzyNPAjSaGLdhRZ8ozhaf+8LBBbPCxWVrqg5Fp/LJcyaKRK7M2tbznPq9KtQLRShtAe1fGYfjsBicdIyCfc4iPOuDcv1xbj2UOwm9l6v+hdN8Pd7anFjf/IyIKWRrIM9rlZUaJdHeP0QttKjzcouNZNyQ6n55BmvNfje5XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahh10azC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahh10azC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A072EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749001193;
	bh=OR0k4ySbuprQM1YSjTWKZkSkBs+Vubrg+ZFZXx7l/go=;
	h=To:Subject:From:Date:From;
	b=Ahh10azCAStcMe8aBaJ4L7TRFzCetNBsdSx7SpFiv0rl+oPu85n3pMhST4Ku8ZpdT
	 vAnZ4B1Dhjjvh/Ra70oNLx6Jt4GSKT0F1n3EgKQG/w1mEyOjKdyU6EwM7rlFm9Yqdl
	 7RnR28jHC+lB9UquVIn/V0YVNUCXBHhGSH9oifyRYDhslVZcpfpo1rM8q5h5mr2mtt
	 QoAn6LwO+mmBiM9jWXqzL4Tz8bov4vPhnka+ZqVAynIKy79rCzSWyzp8NlPPtT6A/G
	 xmc9+eo+Ik6VOb+cM9uwkRRI9X7dY7aPiX5OrrlXbzXlPtWiljpmp5vZncpFriYaNg
	 SonCzXw9GlfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038AC5B559
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900119358.11413.752381567864816839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7aa3b02e76b619be88c8ac1d9cb0f3fd71036145bc243689bc8a7850ad9e9c
Date: Wed, 04 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749001193
