Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5554144C77
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719281603; cv=none; b=O956hOuxqrbxolTzU5Be/oOSfRQtO6kKZRIqztL5XQO/fS5Jmd4mnUF/PC+T4l4jBQGK96mOMUKkTtWIe9CU7xVggFsHxYqR+wTP+MpK1R4ku4Gkz7xMk2UOlLCLVnLMC87p4TbXiPeqyom32e8VmbKjByaTCS9K9IGYQmD5UzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719281603; c=relaxed/simple;
	bh=GPeeXtqkMvLBu8F60uWjya7KSmsXSRNZNiUb78UL0ac=;
	h=To:Subject:From:Message-Id:Date; b=Z4kjoWaYaM6AKXZ57uoHXpZjJeiMhxu76obHcKIkXixN3rXQITcXValua5mZCJsjqbMLKEcoIs740ho8ZUvJBRi1UkZbOYyIvrvf5hcH6+ixYu3v7O0kegyrwbzmzJZtYWXX9XexId4mCwF3iCODal2S4SeX2xx+Ocp62u+rgSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuQ1hcYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuQ1hcYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC71BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719281602;
	bh=GPeeXtqkMvLBu8F60uWjya7KSmsXSRNZNiUb78UL0ac=;
	h=To:Subject:From:Date:From;
	b=VuQ1hcYKgbW7cSdMwqI1DJ1D6i9Y2jnzGmIj9fpEoKwmdA0KJF90Uj9Dwh44W1ICX
	 zyiP/keX9jqq8/YLaK22gLt4izCYTOZYDQU/bEd1Dmkc+0bqztjeGahsabClvtQPl/
	 K1SbOX0vPkBumw/JPIg13x/az+z31uD3rfMOo1pFfofGyqsvwDxjVThbM3g7T37/eq
	 jObbg4P3m0CvuNrPAeXP9wGZTohKjNPe+iZZCbRJgd7um20tO4DYl8PWOrpxPgCKO7
	 +c9kNt2Oil/VDnGK6NJU0QDSk/pk4hWOSWXT9bZy2KSRKHKi+ZhFwOl57wy7sXxb6I
	 Dq8lYQ4l0TBRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E1C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928160279.11159.17584212881949922221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ea79ab24db3df9f62b7cba9c6a64de7114b0714306e67f0e510e19036fc205
Date: Tue, 25 Jun 2024 02:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719281602
