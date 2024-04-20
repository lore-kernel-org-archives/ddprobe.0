Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514DC282FE
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713626423; cv=none; b=iuaIE6AizzXNPQhBwEgvOeAz1XmEDcEEdL4r+KbxJ1k1+mKAgnXa0zG+E6mK2k7lnHvZ2H4/CqtrmHZYy1m6afYtDbGE7cyJJDjBtzyfwhphTzzGqU/qT9vhPoTtduDYVSdWlSgIvuJC89cTZtNosNypz/tn01GoYO73cd0Udbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713626423; c=relaxed/simple;
	bh=nuTX17PbB5NifOUB3k5FfypPzIjS2b1LT3m2ZAL7hHA=;
	h=To:Subject:From:Message-Id:Date; b=LEiyInO68DJ/BGvwuH9XTnASrRX5AN2xIQyVxo9J3PNNJCUqvcTKPAM08TwDi+TE8y1OsgA0COFlk1Unq58ef25+7wbBS5QQ2ZZ87LJcH7A0lQQmNDhKw7RmmhFOixW5/qDVpdWVnaXYHVWGxSPbyQhX19F5RVlxpXOOkKYufhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8lUKjby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8lUKjby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD80DC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713626422;
	bh=nuTX17PbB5NifOUB3k5FfypPzIjS2b1LT3m2ZAL7hHA=;
	h=To:Subject:From:Date:From;
	b=G8lUKjbyHmprYBvScw1WqR4Bjj0iZNPX9hFv6EwgXP9z5ZacKl9qTljERxaZgcatV
	 4PAw3ki8VZ8GE9ZRJy1kOk9h4yuaBsTLvcYChDW5jybKALGVWqDa2UWaopxDwiTUjb
	 uojTa91pfiif2VkXrDpmBSL6GDwSeVFvphEeSuuIA3qyBoIgeoKgIRhvv2LkUpoQGd
	 GE/CYidvKCEet1Y7dTkuL6SYZ+P08R0C7HFzByNGCbNPVWGO3DN1gk3dvvhEbBcoZs
	 igODPoJJZBFEULErYBOuwQNY1VpvSFm8MV6vVPn18KIjBhs5h1DQ/XPzcaEI9KAVWa
	 NFD0BWEi2+gcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC71C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 15:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362642275.17826.6211133068978472882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86f08296dde88daf8ac48aa15613bc895c43f6f58624b097408effabab32016
Date: Sat, 20 Apr 2024 15:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713626422
