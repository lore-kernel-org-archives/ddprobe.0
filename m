Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B7934E76E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478714; cv=none; b=agWupVfs/dXEg4kfOlZcm5boVhFAhd8YITv6ZDpC6nwXU9MrjtJybOksp0+6IMmw/W6C07jfQNYnx4V5/+FgAvI0m/EavJ0J+GWpW6WkMqoQmVmQFhRzchjzukqPSk1me2a0OGD7cqW0piPXLsUpuJTgzTLlmncEQhi2Yg/Pknc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478714; c=relaxed/simple;
	bh=SgVqaOEjtc0hZtz+JAhTMDuE9OFiXWAPaQsg1XhqQEs=;
	h=To:Subject:From:Message-Id:Date; b=mRlegQHSBNkdzHDWnOBqQwYHKyn2f5Lwa1sQ5lP4eZGjxC+g0tGNHxwu31Ddt59NMHvhEGpLKD9FZkud2apGWEtigt+6xRIe2FcrzB1YFbG0xh7onsfMr66EgGBdTe7XGJgwXw5/0IBt+/DoukzK+6JQ5ZPhShndGF2iY72KbN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjX2C2Gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjX2C2Gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D355C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763478713;
	bh=SgVqaOEjtc0hZtz+JAhTMDuE9OFiXWAPaQsg1XhqQEs=;
	h=To:Subject:From:Date:From;
	b=sjX2C2GbSDxrUOjwECiIF1Puz9FsnRzsxOVVhLNR6PC2BURpTfEUGvBjb2kIPPNjo
	 gfaTksLafFNCVAjh2nlcp69X1JP5v9liGfufM6wTYa16HszXS6PChiTZi+/nzRQeMh
	 zpZ9SiRVMtM+1llcRydR4L535Bopwi2UboHCatEG7bYrQCS2vBMD9BNkmsihkMtFtW
	 fy29ZFIat6mGWhBDtjHn9IIHWbACyzHzufnwsaYH4HeGMBVrQNwO7vW9u1K2oE3lbL
	 l6ZS/SwwDuKT4uk6dUSVCjhgbNek2fmQXpvRuT16v+Z5OMbC4ekqvzw6fepO00enRm
	 KBZzVny5A/moQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154BCEDDAC
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347871358.1043.1077777189825932636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95d2aeaa5768c006f3041f0a3fd2b11d1ddf752c8e3b8c5045003a43009c38d
Date: Tue, 18 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763478713
