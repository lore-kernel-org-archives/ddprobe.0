Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56FB335BB4
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770351233; cv=none; b=YbP2pO6InGCWlSxF7SJzw+tsZ6P9DZBXcpQHXKdxWZm17+zswXw1XdriuPkczuggPbZRXOV93fPl740L0knyI3o7sVND49uG1pLVVVZWKR4BwP1TbmqM3SSyM0Toiv52mYdCSH+JnPkQFxP9m8z3a8SmAUTKl6pEPg57gYc7kpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770351233; c=relaxed/simple;
	bh=jqssX4V1vLhfVdEaJTcTtfzFR48szcdm64XwSrc09as=;
	h=To:Subject:From:Message-Id:Date; b=WanCNDrNP0i20E88ik+7LQfZTFM5mVp+Srxkzhh2R8DptkgZuumW3RQ+y/hCApL0XAaJbmeRUrO+vJlsTt5QmeWszrmTb+JYhSgH5poHeoYugHtnnkQt43T8CH1OAwAc/2PLSV2IcKUftvItt0mZddCWGqeiQi5+yGAADi5Mevg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q38k0ls4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q38k0ls4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45CEC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770351233;
	bh=jqssX4V1vLhfVdEaJTcTtfzFR48szcdm64XwSrc09as=;
	h=To:Subject:From:Date:From;
	b=Q38k0ls4Uh5xHgXBp/PSSN7jkhs4rODtCs2n98wIQQwiAohHLTxQlERRYr3Iduyx/
	 Y64+1/HvqFpugVbgm+i3i9OEoFcVEFc/e6xBOuh+OgjTHx1erGrvXdDZ4PyuHjGKHQ
	 sSN5oJRzt6um7Zu7o5y9GpidKDUTnHctUL5fUpS1GMPdBLXBq8MQ+pAdR4xhmaPAqX
	 +9POjmbhFFgCz4z/aaD2NTwVb9osVJ1ZS03TZV/tjlaUjZKjJ9FNlNN6Xq4pdJV65v
	 t+/+cfUoZOBAH16nTVJA9VXKNYO11PQU0ktv3WR9kHEOLL+5nhmFsq8N/JF/zLU1F9
	 26Ix/tpkBy8Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233CE9129D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035123358.22326.18221874046869660938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c3588eef45cdc19e3b7c39c0287b565b00ac29cc91fad2c42c88f7e364ea39
Date: Fri, 06 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770351233
