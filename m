Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494FA182
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738282554; cv=none; b=IPy2eNd5MIWJYClY2aIYeHK1EJy9fpuXw0ezKTOT0Oj6g6RNp+/XrD/arklsd0AlCgXCsb6x96R7PnyNlJpNQ0oV6/bxF9j60waFQpsujJLgnQMvmq5DocHpQJ0jnbhaPwpEhXjirV/UzMMwzD2IW043ZMO3G2qh6+jyHNXlhN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738282554; c=relaxed/simple;
	bh=nj6Kh6Pcy1zWep7S3Mtja1Upp2M4YX3GbesMEzZAZLM=;
	h=To:Subject:From:Message-Id:Date; b=lSjXP47TLEDrHC7U0+lq+sPdd4tJSvC9gQEo+WPlBw9dT5ydEZKRphxkqyVtn2/x+LV5YSpgUwRXsdOyTrFeyvn0rUGD1O15Yg22ugliDddR+a2VepWUuRTlVvnUC55WbBavZIj6lNtdTvntV5aqZRoTdet652pH7ldSUnTgsXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chsBj1NQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chsBj1NQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA031C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738282553;
	bh=nj6Kh6Pcy1zWep7S3Mtja1Upp2M4YX3GbesMEzZAZLM=;
	h=To:Subject:From:Date:From;
	b=chsBj1NQfh5m7EYBy22y6rL2atHAtPDmr4RPc3pNmw9BFnuQr3FABZSBdW1Gl4NvS
	 yuAdpWoHjaPKrBEoOsbOsT+Wz5CbRg1nlBaDEmpqT47F1L5MuXhzvswIbZlTk+nifW
	 dLQVvN6eubNWKWrKCkey+KoyKosQ8HVkQxqzOr89p8QRClVjP4IERsUApjUeloUTql
	 EhWARLeDdh8tVX8gEJ5WuRhmHwnzLn1GOQgzAd0XRH9RymnvpkQbEFEybthU0az/Te
	 TzFfgGw4iVXVvHNtppYhPpeTWgQnPERYPkR5kC9aWXZdVbrQOqhCqEMAjclRTtbNxa
	 bgbyGgu2d2g9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93713C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828255359.20435.4746399947664198556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd25c462baa007074be1e55cb0e367b1e545549601edef0cef8cee27fccf483a
Date: Fri, 31 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738282553
