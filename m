Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD078460
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745781594; cv=none; b=UqrciFJXlWKIcwHXeOateM+azhoCnANIJ617ClJ5OTUEWr6F8gY6obMdNDky0RflX3EdilORGPm4W0ol5KNB1+CTIB/QGeKgiK/rmYq5Fwlyt9b3t9+qGc0V+lbRuZR+kVri5Mqurhp/H/RtF+0tDeQLGlwWnVgqIyuvxnEvsDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745781594; c=relaxed/simple;
	bh=+yMDvvSTzVIJ3eoai/mstiGWmpj+2kb5mvb6nA43hH0=;
	h=To:Subject:From:Message-Id:Date; b=tv4uIigwfLMKLC1h7UuNVuvvKJz1Hrdp80XcF9JE1D/UMwNZJPZtjIX7yC91yKfAxX+sGxRUuQ1h5yt3jzulCeXw4A0qXliRmjncA2nXLKcru1rNB/Ugn17Zw1RF/orNZuh6I96R05OvPHjEyF2VUO7kPYpbJASNWI/Z33bAUg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXVVB/rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXVVB/rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745781593;
	bh=+yMDvvSTzVIJ3eoai/mstiGWmpj+2kb5mvb6nA43hH0=;
	h=To:Subject:From:Date:From;
	b=dXVVB/rZLwF+90gZILlz63wTRjCzXaRBCzt9QsDWyGbQ4WkZUp1HvNpE+cG4tDpNn
	 1qiqeBnhYFtvChH09oxrHgztMNRcQcxE+Xm1iaSbT9cT+UawjUm5qxPDbsJvzeS4z1
	 9xxftZh9UuV6MnIZ57xXaLg2gg9Mp49ak/vEPVgqjmeH0p/wVGNRTWZk1oJbZ4RA/7
	 32DnwQdhlgs5XWYMlYi/5GSUYSot1uOKsB9xgdQsZcjhKjKGeMiyTRicgPF4Qkvbih
	 aX9qyc1QpidAmPMP4JZz58fcZDHcTbDSbivAb1DIEm33v9LmO3dpd9+wvICZk6xryY
	 nqhokYjjjAzww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90495C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578159358.15653.4361347592519834700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2effab22c4cef8b094cb5a5ef8222388d21ec4764282d1c47fff559077df7d06
Date: Sun, 27 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745781593
