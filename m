Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDEAF50F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757467194; cv=none; b=OwuvZ0ZvlBethg2Dq4nIQPeRxuB8cArkkX6hS264zGOIZAMbyt1FViDNQqyifrBf/VQknfnupiu1RoubS3RnOLq6kFzsIk6qrh5HLK0dSHcDB3hL5AnxJwCoGXz7UGDX7o3aDidv4IW2uAVBjjfAwI796mcMTs1/M9KS409Q8rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757467194; c=relaxed/simple;
	bh=QvyxtWh0UtdtvHS+qTyHKQW/bqxpxHWJtgp1ttscj7Y=;
	h=To:Subject:From:Message-Id:Date; b=DZG4AU2Mg+ASuT8X6qOZdRVRDsCsEWbB/5NhYFzjTO5SXxgqYL8La7SrKeNIoK++SyBdruEkj9FscxW2eUcALWLm46jo1F47OAOMSkvJ6VX12FquykBI9GDrldrzf+HI7yhh/9gmSWtD4ePXfU9gDlfqTN57kxnFaeDbrh+oVig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhuqLuxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhuqLuxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EFBC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757467193;
	bh=QvyxtWh0UtdtvHS+qTyHKQW/bqxpxHWJtgp1ttscj7Y=;
	h=To:Subject:From:Date:From;
	b=DhuqLuxiReDOsKsvDhA0ay8SOAupsaccoPLTUfWbvDQ4XErC2fcVxN7AHUioymvqY
	 JkvcdQEDMv9xYWd6LrxgyqeqoWfK1R5D5m48+dZhaNf9/sc25Jg8qX8SPQNYqWiGzT
	 nZLi/y0wO3oQKlaJg3sKrJO9ODMUuGyDmSRmv9Zl9AeXvD3OMDZH3jYMVAtmnuab2K
	 WLWh/YG4Yux/f3kzORZzAUZAi+j9yM6esUPy4t8xKfb89ZTy6ef30AA8Gqrma4E9dT
	 zJUvEJ1Ax1+y+V5yBmIrywtKmg71DILNMEvt9yNXFHPDYDSiJnZCb/XNKVjvQJHUrV
	 aObXzQNbMnqdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F078CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746719357.21007.8757285864862634493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2302847a65e3d56da36c2da9478c895830835e4303790ecb4c65e738cc2f592
Date: Wed, 10 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757467193
