Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177812874F3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751923794; cv=none; b=hyJw08YVUHa81wd5xdk2AgqMLvUdwcjq8GRrIeUfUOFQyCJVbnPybgAv6oOvLYnCMfErQazovEtnCofMmUHtw0TbEm1d2sLkMvI0v1Y5jNWNFqu9K3/2H17uYtH8RIA4MUm834GIn2akTmwPzT+U7lZ1plTdtgnltC45pXnnGjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751923794; c=relaxed/simple;
	bh=uohRIVDZ6JUtiGf0ykscYK3cHjgJahCoIXL5Ihl7kjE=;
	h=To:Subject:From:Message-Id:Date; b=Vvn3I0EQcAa/qLuzqQCBKcnVhiHDr/fSUCKBA1CiGgeT6Vk/wdMBnDgXo7fi/MWH/SUL1EPJ9N0DsmN6wJc6YH9QNwZ1HLYAMtMOxspAZtpBUioQbLflJaK/+UyK7sH1PHoMhiBoTL6HjJJacAfYkbKrurMFgT12wlzHFjw2Ws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6/qMMyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6/qMMyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD6BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751923793;
	bh=uohRIVDZ6JUtiGf0ykscYK3cHjgJahCoIXL5Ihl7kjE=;
	h=To:Subject:From:Date:From;
	b=p6/qMMyIy1HR8mYuOn4I472Pf/k90JnQWMtHBVe6meWqBZrVtwBeZRa+r2JQk4Zyw
	 nU9Qkr8X44dUs9WhWeEIlMRkzA2QOSh3CCUL8fUDpSEDvQ6awUdMW+LeMCcqzDcmK0
	 wfq+s7x7CGjgcEjuT9uko0RH7VvEsTCYmyJ788fZBOyihWFaPbcW76gfqRnUopddTv
	 P19k95GzxIyuNxxFW/HqXGiIyehgKnyrf7X/TcN7sCferh0HX8yseJeLyeZKdnzm+/
	 1kzWBVR0c1aJV1YHUnertDdDLMoOcNAnZDcAotSXkukZpbahTCn16EFFyTkuuuRYnF
	 9YIekb4lrgvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BBC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192379357.29099.4250868841243986175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8851167e8f1da40f01e7f18eece92fa6914817fc8f27be58e35b859a255a416d
Date: Mon, 07 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751923793
