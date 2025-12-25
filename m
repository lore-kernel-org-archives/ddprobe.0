Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D853A1E9D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766639034; cv=none; b=hZmu6v/U5D8zLrpcVkU6256q2ZGZvhConwZjivln2JY/OaeX2IDEZWp9xXvJ43fpEvTxFVW/Y1XPXJQf8ydhl472UbZ3rlJpXIol1hZtaSUpGIpdJ8lgvp+lE0AEd8LOZ7FfX7FLIgzNwkSR7G8As8YAc0hPYiR6ClSM6H5qXAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766639034; c=relaxed/simple;
	bh=tLvQn2YIzHdT2VfGg+k0OWrz/XBUzMUp0LDj8Bmf8sM=;
	h=To:Subject:From:Message-Id:Date; b=DAAfZXK+APW5k7cna0UD6/fgXOqMm5WxWXAG1cec1/qVeKmeibv2l8AF3Dgo9TG1Zcu0t9CAydVKApoxq0U4Ya9o5+MGtnldMd/85mDYjfY2uD8wQixYpyPpz4atmKNaKs6pPkoEoOOPUf8++kTjY+Jf0J9rzZeOQ2/yFd8GB4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnE+UHcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnE+UHcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD64C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766639033;
	bh=tLvQn2YIzHdT2VfGg+k0OWrz/XBUzMUp0LDj8Bmf8sM=;
	h=To:Subject:From:Date:From;
	b=VnE+UHcFN3FLz+ikCWe070QhMSjT20HlWw5He/lGAf/ml8U/B37LLxCmy1uHKJ2+D
	 zClKsrzhjJW0ZW6Z1G/5bCHVlvGVV3zBjtlPYsHn6be7SNGivxf2uTVVGZ0mHag4aI
	 nVcz3wYM989he1nh18n6DTnwrpg4GtoJXhLArZEiSC5XNR3TDmOaz5TJz/yyTdg1oi
	 YIsCgLLSZ3ZmHhYsAK8mFEzMpOQcds9SPEFuWfnVupKw6h6VaqBeKH9yDTpq57GroG
	 NqZCk5d9uiworbEwIzcHb81Rhl4Vjfk8DsK7V/PyNkEwTA7wsuZNYF2sL736Ef8I06
	 WOw47cuzddxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E980E7AD40
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663903357.27190.876645199703000206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c09751eacc25098c2b2e263bc942e5212a751a04f4a0ca4ea760a6390d3d7e7
Date: Thu, 25 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766639033
