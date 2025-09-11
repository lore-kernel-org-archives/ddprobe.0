Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188A92C11EB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757624994; cv=none; b=MO46h7xsmhIBH3pSe2C2BtR7bQHS4R06mWgMO8Riea5lCSNbwKnJkZlRm5PO1YXf//5ByMtTVdAgtugIkol+OfVspoOEndd86qRVkRuiEw3Qh6s6miA9NbqHAAlL97ZGb5OVmLOlIJKtWCzrrEmITZFfjjw7Ie9V5kNMa0F94Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757624994; c=relaxed/simple;
	bh=a+xDdLolD7P8PbjG2PmIaXmZ0sUo/vXcTW0XkuS3+B8=;
	h=To:Subject:From:Message-Id:Date; b=dVX+cnnL76i79fQraEGhTofs2sOfnOPTJj5Hb9UlAgQlslRddZslHjucDc8VcnLx72y6dRRBxwf9bwm7auFrla+AQv6NnHFDa6lMP3eXTyguPDpr1VXoeVc0OODinWVWr4cNW3Bzx8w9Cxw2VDb2ydefY5r6rMRL8L2si+rlIUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR4paoP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR4paoP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F733C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757624993;
	bh=a+xDdLolD7P8PbjG2PmIaXmZ0sUo/vXcTW0XkuS3+B8=;
	h=To:Subject:From:Date:From;
	b=DR4paoP4wI2H5CtlfqF3hOOknUs/t9H0Y2wDmg6R80ZhSBGHN2De2aWE5EUlyh+1C
	 JUQ+9pLr636vz+sSFi1fdv0S6wcW7OSFcsk0d4GRHO3+0D6BZIaPzhIV2HujswVd7W
	 VCmbebbgJJvapdKzqhMpz3bn2pcrHw+m3KPtmJdXlhr4lrNfHuoAnNIx8Fo/z+P4Dk
	 /UYjUoK6rWXO0OTCFigYKtR5N9wET4ZkBnfc3xhTACvw9WyGDp0kefdzKkdm9izvgG
	 BUqYI61BCgKIiJztZ5B4ZggCCHVH/KDLrE8ME+EUWKKukVFnM5tuoguTwGJDy5Qq4C
	 MfflCgikbduTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F8CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762499358.5061.7062799409908238876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f10e5e02db4b8eeb2e551fec170e99e3b9369bddb378e633942d47d3f85c23d
Date: Thu, 11 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757624993
