Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4A125A2A4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775956054; cv=none; b=iYAL7Px7fH7/bUUj1R+zsIb8GS14yA14VaKLTC/R8eEyQg85WOMd/X15SAtBboIsZbKz+bKzbsxJS+AdjfEG1NNcUbIEk7hSxZWU0TSi68tq3J94H0ssFZwcqKYmTES82s9v2ueQzghiqfli1c/z9zyKe57dSjaC/EhwCEqNbXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775956054; c=relaxed/simple;
	bh=Wb3/9B9ZkSYTHvhTavggObZY2LlQ5OQITaCaVjFTTNM=;
	h=To:Subject:From:Message-Id:Date; b=fmuZ1P+kGZG9pWhcysx8+Pyrna3HVtyCIbdajpzzhBgb23BirdoAz3timpNPbLRiAU44zF5KhWebyqC6IgoyXHqwGY3cjEv+1Ey3DDLyHSIsUDzu2gBYIPeE4vG+I3412Tl4hi6lhNOmyNWb2daYgBZDa1DC5HO0ys0Oi4qEwxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6XKQTfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6XKQTfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC12C19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775956053;
	bh=Wb3/9B9ZkSYTHvhTavggObZY2LlQ5OQITaCaVjFTTNM=;
	h=To:Subject:From:Date:From;
	b=i6XKQTfhF9e2yq2rQ4fp+4RuTLIraVx2rNVafDJ1sJg76WAAilL4k1rDkqFY57qn3
	 +gFAk8Xd/qjs+XIe1DTvK4D+ZvD8ce/+m8GLPl6RCgOqj+hmPZKLZN2BfdPrZbmF7Q
	 s5/sW7Az7yn8GmZh67GWVMaSDy+qxHFmP9eugo+M4SOQn2lHxTsuw6YXuEgsFTVd97
	 5lH9xqYt4ln4sVOdpzRQGVx1j3/JYz48S82w4OJO+vxix88GbCZBP48ffbbYwniYFK
	 kWz9WxoqT0WkmNn1VORA3mJZY68u5nJSy5I0N0nWY1GngIaZHqs/hb+qsMk9lvEGof
	 zAv12tmDrcTTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA569F3ED67
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595605368.15281.7897984817258664809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84491d1d3b5ef72d91458fdd42a729733d7514acad267017269a0554e69ef482
Date: Sun, 12 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775956053
