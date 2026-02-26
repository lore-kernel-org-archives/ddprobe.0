Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10502379989
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772072094; cv=none; b=fHNVsn1Gyw9GHTQ2aAHn/ya93WPkuJegmlzlTdsgeehsSYvkR8lQuM9ZLGz6SV4PM9YbhX8zQw4/aAaxVjcBIEWNB4MIMVTUw9+u0Nq2R+qGJPXp/TmKaiiSVUVFWzrozAqsoAoEMoaLGzofkZ0RRRie0MMDAuoRwLUWOe/n71U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772072094; c=relaxed/simple;
	bh=WlfaXJtTb/DhtBdGZ7JRkkddoQWRojnw9yYJC+zzjxo=;
	h=To:Subject:From:Message-Id:Date; b=fmxwTDGbAALeiHCflZVOV+owG7oOmXUsNgRnV45ACL+9rd8K3mdCv8X2wdBMBqwYsdOTCt0PdTKW8rHVbDBLNTKrAj9q873+jvTldiBT7w0uuwCX1wfzWeStO9F926kALq1A2wIokgajin9iOL9dIKU04S0Gxp5nJH+I4+ABtSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aky5FDpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aky5FDpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDE4C19425
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772072093;
	bh=WlfaXJtTb/DhtBdGZ7JRkkddoQWRojnw9yYJC+zzjxo=;
	h=To:Subject:From:Date:From;
	b=aky5FDpVYYFby8gwrOKBCuU1GEkTwzPGGnS/6c/VkXTxY4hKRxerrvoGp/58ETsDs
	 v6uCqWHqwwQk1k1pGfpZL1S8X/8FCM6xTbeUIXDoD/6LRBT0SSbPsUHoRkCQ04xNsH
	 s6t7mF5UUCykSN153Fs61z5rXEfQ9jT3yFYfQ9it3+QYtN61NV7KafCeTrtkzCnuP/
	 15Pkh4AwZ4ce3cXzoD2PZD94dxkI0lpRoiVz921bvs5hhkeU03b4ayXe2wlNqg34e4
	 cAZJoeCot669wRK8lKx+j0zku1DJQvg8oKQQO5RUA+EHaZwtO0e2M7Z6Ee6gOKoGHY
	 GEFa8WxSIpHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98697FD4609
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207209358.19048.9600378547535872461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4de3b35beaece27adc3010973d367d64d8ee2625717d362426fa21988fd9c9
Date: Thu, 26 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772072093
