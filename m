Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2F2175A79
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778540433; cv=none; b=DIOkvGtmLk2AjE5Ns6FWK4Ejx+HrMLU8usG1a1UD58NlBexuLnodwHcgVVS+Ygg7OF7VWGMpZA7FL3wgTNQImYh5kzOqVTT08xZRSeVbbYX+oNQQ4KlSAg4mSx30LJ+AE35stkF7nyAbG7NTTiN8P0o8w+osonm+3bipxI87ceg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778540433; c=relaxed/simple;
	bh=izg2lGCwKsgViNJn6Gapim70BGy/LsreQiUXZiF1gYo=;
	h=To:Subject:From:Message-Id:Date; b=Sk0SrWqqM35rAHX2Fpz+0TmDWUMN8AtJnup9otyYoBNlmjAJqwp6KMuVFIUlGdzQh9k6ovG6BVs70HlIlYWpksA1AEBCrWLqIzgGQ1BkDzWwPJU6wjUGkpAbtlzlOaYor5yLe92QgrzlhqcDuG4HLgSu3DGptpvh9G/krxX6sbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvuQZmmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvuQZmmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEC7C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778540433;
	bh=izg2lGCwKsgViNJn6Gapim70BGy/LsreQiUXZiF1gYo=;
	h=To:Subject:From:Date:From;
	b=XvuQZmmJtA637Ydzf8JB0KbIkZqT8WLydq51sOQpRkXnhLMHf1yChjBNPIqbKLvI/
	 uPpqoal6iggEIaBjmAZVduhgeZU46rCPw/2ehxizQ6U5qfoQWN8AveVZgDDpQ/m8NG
	 MicMnM6Eip+qoGy2e6fekLQLDITKngLZeUXRe9HTnW3z4nMFIvLFHkWdfjxcDbxD3I
	 ordoBpSreFtgcr5PPrD7Sm715BfrwjR7boJItEFFufgrnFlL/BN3zw2wrHgq0+I9q9
	 ep92NekJb2m2UkL8lmELeySzgh3cFly5d5LUhJS0OONhwCYyGYyhesvQE3py8Oou3Q
	 7uU3zggsDWV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE49ECD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854043370.18456.4781351136843237689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b5291f029ba9ddcb6d80bc0ea523161612e084d7f53fb3d8e68674c0ffbcce
Date: Mon, 11 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778540433
