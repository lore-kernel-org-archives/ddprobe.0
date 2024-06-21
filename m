Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666AD83A14
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718953343; cv=none; b=u4l+EpWBrGM196oorAb7SUPI34ICfZIa+sAq9jFCZ8KXhVp4fskSpw4n9onoWQ8pWyUo6GamQTuu0tbWcGBLd9iDkRN1A3/at5R2hyJw+t3/KYc9vE/HjwSzs0QxxSObRQzL79x01Qbor18btCEO+KCmFE1x+GPtqRKQf/liW0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718953343; c=relaxed/simple;
	bh=78sMlNqpwzvyhCKhe7DeSUUG1f+9IdCQj79g5+XbGhM=;
	h=To:Subject:From:Message-Id:Date; b=CWHB/MKLToyiTc9s/9IXK1loOQ37T/YIBl4V37uiv+psvdTsK6Qw2TdV0loVelsABPhJGp1ANRoSTdQDZiQSZqrqT0TlAVkRsgfqOxnM9O4KoUk6RvNDb7YIUFiKN9BpoEii7Y+aAuaKzj9LKb+16La5D7nSyGt2j0BlL6Zf3ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVXaql+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVXaql+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9BEC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718953342;
	bh=78sMlNqpwzvyhCKhe7DeSUUG1f+9IdCQj79g5+XbGhM=;
	h=To:Subject:From:Date:From;
	b=DVXaql+Yumcqy3wzmTazcfgKEMQHDR25M/echfer9JG8STS/+4PnBb57UhX8oC1Gd
	 OJ6fzVSWM49B7JXlpQrzip6S5RR4Qg9i5ZJl2H8TbjBCHFyS03FAwEmKc/6RfP8Zql
	 Z4AjFwXE6RKuX7sDnhkErpTsdI13i9bcomF2GjarG1xPawOuITZYLo12mUHnaS3pe3
	 GlLT5BQ5nuaDGH5faE+3riB2QXuD8z976OUMfZfG8+AXwOx/44+7g2u60ugqmXpILk
	 R//cUhFmb97htoDvEhbxgcZ6ByrhfAHRSrpQYQGNpR96WEgY6qgx2NZvS1RJgh6pQY
	 1Bg1bRjjxupCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAA5C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895334280.24446.4499260614528968706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2feff714e882dc4430037268babca4a9a2925650870a3e358a00192ef26735e7
Date: Fri, 21 Jun 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718953342
