Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361271CABA
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726734954; cv=none; b=XTmec9oql0Y6/Z4M2maMiLDJ4s7wBYZFzD/ykYyS0ny5NIRH9uj12e8slPl0693UVcq6/TPdcZeDi6C0Uqj+mUeaV1cgMLbx6+6rfLxJNydqJw/c6YULFhcaWJm6gCRJIetL6JjixXkhRqzooq3B8Wvb/Tn134cqNI+XPp6b0PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726734954; c=relaxed/simple;
	bh=+j8LgqnNRhzqQKiUEdZCUutIkQCIcd5O0bqZjL9Imzs=;
	h=To:Subject:From:Message-Id:Date; b=beFTAFqR6MHLkte2ZUCizVmv3aq0rMvFtbt/2m10NUxhKaqcd4oqfS3Zcx89zodplbLV34ZggyHwc6B77KHfici6rP7YyBm9fwiaqhBDRsuj4P851yZfmuTKVK/cIZ17DdLc8+rYY+M8V+63fXjCADUJRvwJbCunWOxeatilJCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8XvZeRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8XvZeRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A820FC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726734953;
	bh=+j8LgqnNRhzqQKiUEdZCUutIkQCIcd5O0bqZjL9Imzs=;
	h=To:Subject:From:Date:From;
	b=i8XvZeRAbUg3rfxDSBCFV5BlGzWN2DwdZh8C0FrVSeFL3H0v9UHZC00/7TO0cyse0
	 xZLQ9Szp2TA0st5hIVC/Jy81gB7XhRIpNME3bJTQhNEY0sphqkuVBPnez1qtpTWDdV
	 KxZXx9DMd02eMhtGNRCl4UCqlIlAL/ODFcgDkdC1Zgzwfoc0v1dnXAsH3kY1tb5yTF
	 H+WyfjWAndYBWz5q87uZiksBSALUvZgLA+fhoQMyhr4h8ryOurzS61YmB4mW89hjlk
	 e1oUnJy1DcDh0OlZj1+OsRZ6YXIy5xJ++mWJCkIf7cSaSnUAcBF89+AOh2MfoxqyC0
	 Xd9hxf33TbIww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADFCE8D5D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673495360.1214.1817927720085788064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b9e69d8a21c68c6f1b7e7d1de2f631454bc31e4413e182d21e1414166fac2f
Date: Thu, 19 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726734953
