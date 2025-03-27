Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423411B81C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070794; cv=none; b=MP0LsrxEiNQL1XURcGkZQkeuLfZVcE54QYxfaoayKd+viHUrq75UEgok8o+Gu/pPCnHxdLn+oiB0wSoZORXfbJC56HLsrZCpo/caM5F1vAKLIqFBXl+gJGnJizguDvHAQW6Apg1jM+MMdzueQyQPwIvE+Bu3f8oyru01JYX7JFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070794; c=relaxed/simple;
	bh=FcznQxuY25hiqNT2Byd5PLR0CKA7lqv4mjEPolZ/tbs=;
	h=To:Subject:From:Message-Id:Date; b=H2bJk8q19s5fMGWQcLWv4V2/prUnCgKh6E+WKm/fN7W3mIJoRuCXrFEG0Q3+2uRBgSwaIAcdYdh2WsQ/hu1NEsgCMokbyYsNCg16f6sldSE8zsHe1alhXMj7Yl337OQiKXgRP77Jj6McHarmwj/eMFIUxNo+FBcYQ7Rm77rExyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq6Zpa8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq6Zpa8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB650C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743070793;
	bh=FcznQxuY25hiqNT2Byd5PLR0CKA7lqv4mjEPolZ/tbs=;
	h=To:Subject:From:Date:From;
	b=Eq6Zpa8PwOmYylVxPAgQNWWZfayfuLdUBipTPXLodpUkc5T7GT0PzvM37P5lX301h
	 3c8mjqcey5zxDMF0dSoMZcjPjaaWlCpfwY8S0hhEysdy10endyHAyFYydHbZMjTNWT
	 0TVJ/YtylxZEeL6kv80H6Oqo/RjJh9P5XzBUZE2vvoh1y10zXzBvfTolYMp/7ghps9
	 MqCpXvKJTtPud+y6xVyDnOEaIKwN+Oh1agFqso09JE2ZkPBdNoRSJs8I7Bz6d5Hg4Q
	 exlVyPUJ6DfrXiYtRAJDAjWUGaZoCSMNK7neGLDQNlWRxw3hgswe3H8jOXPzgu39m0
	 7djVjIO+vH+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97671C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307079361.27707.77101970037762446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800ca243e2c13a85f9a983774791dbfbd9fea22063968bca876f04128d366401
Date: Thu, 27 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743070793
