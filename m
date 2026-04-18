Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83715244675
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776483454; cv=none; b=be/+LguIKmjErG6iZa6js+aqMMG/tcf/AFJs1QAbaYo9Z+K8+YFHzyNFtQOwDg5jkWtupE8vVjcLZ7/mLhyWwa+O4cZq1tnEvlLgKxMsxedJ0sqiopyY5a8OsE12lQJPQ74Yi5uqxOC66pRxPMQ/Zi94xhsixnmcBuLCwWNNSAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776483454; c=relaxed/simple;
	bh=5v4Z277G0CFLD/siSAJmu8uO9D17xbI5cihlT7Sbtf8=;
	h=To:Subject:From:Message-Id:Date; b=sRl3QjDo+VdzO3hQRiTMsCpXpV/Co5UpIaETPSmV6DPuqNHsXaGXBSAaL5DDgEcTGxpV+q2S9WCdzZn/7xCpl2fuT46EZkjJnUy3AaCmFrgir+yDuAenP9O6WExdaOTrq8RXg02R0wSxYCkcKE2MvVSQsm4wjvdznmQxdI+B0rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQw1iOhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQw1iOhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DBDC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776483453;
	bh=5v4Z277G0CFLD/siSAJmu8uO9D17xbI5cihlT7Sbtf8=;
	h=To:Subject:From:Date:From;
	b=MQw1iOhwOlvJpcGolaoQUhhgDu/fdj6fD9w3pJN5RICAOqLpveDtT/HTYGY3Y7r53
	 2DbpBf0Nd22Lp4Ik1LkEgMWdOJqzbBTQnzf9ZNIWjuWDUrrWfR9r/TeK0eZBe+6wDQ
	 37BBQgr9FOidWYeQ1xAt9fzjmZxwWojwJlFIaM+XMyt5Nki3tKt5Ul1f3G00BGgENx
	 h6e99pnx5DigCsJO7AvOb8VxM1A0excgksPmKpIFQq/zIKo2euhgCCgfCFbzXCdfFS
	 j6UqYoB7xeQzHGJUOLzWVpfHs4FilTD+k0OYyIE5L1B0rw0KV54txayw4F1OgXPxBf
	 BiHJHt1fi89kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF874F99C74
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648345368.23543.11896042117783987374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda5e58d8c77e0dc210ed6fc12fa9551e4ff1eec5da86549c7d643029742a504
Date: Sat, 18 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776483453
