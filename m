Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE263515E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787679634; cv=none; b=MT9h9/bGgSfkla5NqpoI/2qkBSEwu3eHIniGOXcGZ+urCLgSEDJWcwFWpJgTznp3AG2R4lUWdk5ocLphwzUg/HrNVJGWKA7nOtqpavioGf3i70zrsi8ZHEgwFDJEL2jWtaeVPd91b49lxtutfagjzJjBsjTVtdi3phkV3ARAAlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787679634; c=relaxed/simple;
	bh=EQW3JO9gXZ721FJ/Qv1CmwhUDCCkQk9oiu5yD5zLSkc=;
	h=To:Subject:From:Message-Id:Date; b=G2VvEv6gngsE50m4KVJ4QCnbCHImWUfSXcs0ZLWR3HO4P6hg0TXWbBEXLhYzNySbr35GsYcqykYJKIaw71VqLLPnquGTdQyrNEyi9/f9OApYHkborRC0cR8O0QJyXiftiVZO07cFTq+wWqV5y40bdKf9WGKYzKF2uCdLhCOObmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cn6gE+xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cn6gE+xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D34C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787679633;
	bh=EQW3JO9gXZ721FJ/Qv1CmwhUDCCkQk9oiu5yD5zLSkc=;
	h=To:Subject:From:Date:From;
	b=cn6gE+xoDZ6yXtEJY+V601jc0/XEHYCVkEnYR2euWlBXQQnFThyS1FZNB+vT8NWRi
	 SWd1dxe9jGFFa3ETT2xdzSy2W6h2Nk8ogh+RUgMET97ouQJWY/pqEkIekfclGxp+jM
	 X99n9urbkhPyy3sshmL3m80KahSuaf3MGZzB7BPOYMlko6tite7cMjimablCnIT0Od
	 uAyaHyjAu17caUJMz0JHqVEaYUpAqG2k8bOIwtqylDTnAkr4V6Nx007/R0ZZekoUri
	 tEhmcqsT5myZ+TRUaY/e3hchv2EGlmhV4NUoGIsjLFvPox1GRObVVDW4zqJ0HQ8qmr
	 STad2W6q9v2/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA894C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767963368.7554.9407080008654562706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2211611ab66e89a24f64b3fb30b305bf3eea7c5741b77991b293cb928f83abd0
Date: Tue, 25 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787679633
