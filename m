Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3B123ED5B
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770342234; cv=none; b=JOSe401/yywSovOUC2a/woqW0sDnEV9Y2dj/g8+bOlXWr18CET2/8TsBaY8SHqw6/FI6TssSVcJV23ioeeph+McvnFLQdT7bJwnlRKdEIELLEx0k0/5CWFjYL/3cHCK1pVL57vWzbPnvwPl4bwTZ2KNEXRDRb+Ms0VfRZduw5Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770342234; c=relaxed/simple;
	bh=XGhHb2zHuAXe/UMI9dyiWuQZXQGrhXNkolIXGVhtdOU=;
	h=To:Subject:From:Message-Id:Date; b=lFxYP7rhM4uEu8kU2c9sw1Lxwr8ZDhbCieCNCrS/JtrWNIgs43hg3+ff6kg6qIrbIF2H3HD70YzBuY/2Ocj7/g0Rl9LnWzqoHvPnOv53FWq+GFBGU8at1Uczt4A8nwUBNHxVIKgub3HHSWwwePkLTZv8k1C2HpXLH5jFQrT9wgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oyh5CXD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oyh5CXD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A827BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770342233;
	bh=XGhHb2zHuAXe/UMI9dyiWuQZXQGrhXNkolIXGVhtdOU=;
	h=To:Subject:From:Date:From;
	b=Oyh5CXD0/UCgM41LY85m1BEyNVU0Tm5gdLAKewPtVz1Ez3ASBzF1o5RiXUJLwzs4q
	 FO+rw6dw5J9yQ1i4A9BAYikLtinGP2fZgrz6g4/wf9q5fSgmvchEZjfsYbyN/MeFgH
	 s8g4ByFLDYAF5MUaj9pgp/8hJlb1gK1MQITDq/uSLOxpkVrOy/s9nLJ97PfXYqgTgo
	 dSzTvOzw2f+ipDSwj5tEKo4vVsduwpEtOiKHV00Ov9QQSJzdKdgbE9q/BeUW/QJ5EH
	 N1pFMbAdUcw7wh9rDNx+W/LSfCCAf+l8J1jZEgfUZmOISdmb9nD2ncpf+ZUJEHz4dT
	 IXrlIWPkAv/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94021ECD9B0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034223359.15278.10281848817465277167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc199055dc6ad8660ec8f90ddbf123ae8a09f14499e32c51dd2ba57539bce56
Date: Fri, 06 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770342233
