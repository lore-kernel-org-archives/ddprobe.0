Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B63803F7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773960894; cv=none; b=bU0fOYI/JW4KuO9aPKQKZlJD9KSXsjMHzNI+ryXP7sPmA2kQ0JqerbHkkrbRKUfgPefaY6q0cK/xKgkiNDmj0mL1pnWhq7RwshVjV12eGq7J4prwjMJGgi77ysEn/ksVPKVmrYYb1Dw7iP4yklMbLrBzt6DJHVUlKlvlUUGnSqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773960894; c=relaxed/simple;
	bh=09dzf1N6y0npowxmk256zRhN/DIisjZxdXFv340IoXs=;
	h=To:Subject:From:Message-Id:Date; b=LmjcdD3xWxoQT76MfAUrtiV18YN67pmezlzYdyaviriYsMENk1GUAyoCKKTlZ1ymvYM6m/pMTGOz77Qi6+n05kXZJ4j6vFCiIPJq1jowM5PW/uLAKFJI7PyWmTu6WQwjoZC8zLRAqSDNfChDMKH5xYgvc/U+KONoWAsIaXty+gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUjJrdR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUjJrdR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8377C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773960893;
	bh=09dzf1N6y0npowxmk256zRhN/DIisjZxdXFv340IoXs=;
	h=To:Subject:From:Date:From;
	b=oUjJrdR53dULa+9SCL+DtRMZ3eYyMkMRKkpmCVxXD5P6tGPbCQV1qPM6hSQvZ2f9G
	 0bG46kgFpuzaWZ5L2jH1hUMI3Qf8TefP8C2UYUhql1MNMudiS9hDiir8R0LXxHvDUd
	 kdPQYne6MCEhXzkTCA4KqkKzGu0dODwwkSiOQBQ3buLNvDwL9498x0LEBIKjsg7A6s
	 U0Wpw/UAwlx6GQDyJU3QyELdDfS+FePhHZL03me5LOXLU+YAzTcPgxisE7bliKXGFs
	 7lS4dahid2RtkiQ+EccRCVb14ZOCmXVnaUCalViDf8dd6PCMQclSPz5C+bXD3Znc/H
	 feMYWWYFaqdXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94949109192C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396089358.8974.11111696634707084176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10494c853ffdb6b7aa95d613006fb73c63fd78f7be3001ddf55d0050b92c334f
Date: Thu, 19 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773960893
