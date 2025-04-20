Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5904B19DFA2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745137794; cv=none; b=u2w2un9FJI7ZfTbH6dhnF/qvWrzdhpbgIdOSWtIcTgq1my9FOSsG3CT2Wvtav9cX8K41OPbvcrZVXjSTxJvQBQwe7eIM5wrgRmCGQ0I85inciORDiaYurF8FNUJ8CoyNhIMl8noM2zEL2Ha7oaROTwmcIOFeYMT0nHuQnt3fFmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745137794; c=relaxed/simple;
	bh=8hZ4FmxSyHeqDCLboIS7WE+RnDW++u6DDi1RozA2KUo=;
	h=To:Subject:From:Message-Id:Date; b=gUK2lc1dTErua0DnRmxLh5dyuD5ZjJUZVfYilJXLmZx9InTfS//pGhcPAyi7uwIKkc8oG5w9nhWh7E/s+zgEolFGU5UXIQ1mVQrcjPzQB7UsW5fkS5ZoT+nOo8Io3E6tMrr27nklstkiN5cQik+CN9wR4w4bi4zY1S9ylFM7+dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umXp4FBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umXp4FBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6ACC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745137793;
	bh=8hZ4FmxSyHeqDCLboIS7WE+RnDW++u6DDi1RozA2KUo=;
	h=To:Subject:From:Date:From;
	b=umXp4FBTw/RDpIXr0o5zL67yzvkwAsqAXwSnwlNguQrdMg1D4U7Q55UK1fqnVwKYX
	 3XCSxVRoCjmRjma52Lq8j8wGdq70ScFN9xvOcG6pPwntNQQDuH62OXK+jztEVLJbtL
	 b9PmD51+u2x6oKW7VVatPF4ddUsDKA8FU3sBY06I73HxQ82WtY/a/AQXp0+OgQSNfo
	 dxSKqx7/+C7vx5qPz9Kqw89lnxZyZpv0A6q5v+W5Q3qiZrIGRSaoYZ6r/RD4fyQGCL
	 9wLGw0JRZBVdlGHpy+5NTHGjj6Q3IWgwEd7xbBAHtXGGDmNm8V4+GkvPnCqjNFb5Nb
	 5zXoNNSzDWe7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64C5C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513779363.17104.14020754915362861371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7ee4f2ec720d126f1309e12d03d8fe79f110a73f2ec85ef41b2380b3be836c
Date: Sun, 20 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745137793
