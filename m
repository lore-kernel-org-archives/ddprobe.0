Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6563FB075
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780519474; cv=none; b=LLNkeTffCI831bOlJj+uTZKIoOS2UsV44vs3yM69yhP6GD3uLvp0Dk5k+RS0NkGDh9hHLtVzXIhRMyN4bCJRa9Btpv0MmBFAU/boVbgh4jxkuMQnz5093vbyXdHTfM71bAxUrdmsdMOG3Fr6pIPn5y7VKEwpZwZfap7jTuXmem8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780519474; c=relaxed/simple;
	bh=m3zOy+OnGqbUWqTTZ2Ba2rD6Ip2zt4nKCuSk5wsfDDQ=;
	h=To:Subject:From:Message-Id:Date; b=bM020IXTPkvVIv2rhfy5EOjnqMcxZtJ+oFtAqsIZaciSK47rrtbz3NtDSMqnDqY2I2HdNY1aFjKSTGQI+RHGzZYAFMUxGlwc/U5/avTzTG+YPeleZB2loGbgmevknwuArR/lOalvUacWlfeOjpY4CCExSa8Ph5isKIMuAY0dGg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJkO/X4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJkO/X4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F3C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780519473;
	bh=m3zOy+OnGqbUWqTTZ2Ba2rD6Ip2zt4nKCuSk5wsfDDQ=;
	h=To:Subject:From:Date:From;
	b=ZJkO/X4MleoPQIdOT8x0JkoKRs30uZB+Mw+ud4oy7JPGur3sz5rMggPyNZI14a0gw
	 asRbh8C1qbox4Q18bkL3BxWxMCiQEtm+dISFtBXR+bggZColmYOD1GM0VqNECJpkhU
	 Dv+QE1cweW3S5S+YmYA8gIUmMS5E1htQpcJBEG6gU+HyQQ0Ubz5UcPEM/jY9DjKfZq
	 sGU+MXHhnO81X++8xOdvAUZ2ji/GCWhJhafQbucAt7p374i2kLzekFL0pKaaXddNmT
	 TkLKgY/KHqqyKhptPn39kpYq9eJ9nBthZfQ1Ps7AHQpdeLYOpCAjSiU9a2PDAbCUF6
	 ZN648o/m2jv4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA597CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051947368.14233.1452907499482052468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84120d4c27799da0aabf90045f2941c3536db9d5373de4d6c2e53bde6f0c7c57
Date: Wed, 03 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780519473
