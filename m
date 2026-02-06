Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093B5426D23
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770404634; cv=none; b=nKF/fF0gAVSEIl/2xJ6iAtryhcs2kkxJAfFKToeU++espD+9KcG9SpXTSGAV7gZSBEj+NZctkfOjjp8pwbY9ZobSmuPrPug2C2VhhY5w5ymspthoJVgDZgV1lUzXXTESSnq2d5aoJU8pSwt0bNIb2kOPG4/viHl9RI/7zEgHHyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770404634; c=relaxed/simple;
	bh=BwX+wjG5JK4Mzf5gVpqmkILmg0KE+0q3KB+QseWWAws=;
	h=To:Subject:From:Message-Id:Date; b=dQvC5uYrwjGgJTWxbIz8uFc2lMK6o+uIhYjSvZJJP0YBh1OEY3ZCSlkKuwc8AkQhplPcVGrgCxpoYP0CzwfTi3wW1cAn3s5FfayQd+sqyYKV2PiGL0B088pj3HtdRWWg/vgP5rTYsHlNXzGnqgpIt0598f/9a0LmU8/95HbZhNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSRuKx21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSRuKx21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30C5C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770404633;
	bh=BwX+wjG5JK4Mzf5gVpqmkILmg0KE+0q3KB+QseWWAws=;
	h=To:Subject:From:Date:From;
	b=rSRuKx218Z4hsn1uGV7SRQwZ6y2tD3j/4lyAdwO7ccQCcQfHG33aUHvUHDcsYD/eu
	 AqMHYKwks6VHObCM5l2+Kk3qJ9VSrfpGdSOWRk3A7MnNDritQPfRwXIiK0wD//wyUM
	 yI9O0rfwA4/nhKC6+cM3KQP9kTA0SrVQiaX9sJ0qafFPN59OPvRExsyiBeYhSKPZ3Q
	 4PvyIdWfuKndK9pIWvaLA1bAYE6vpwb8gZulCgnYndm1QUp3XUMV7QsYAsdGPk1CB7
	 Gf3i8vQLHZiAsnriLj4g2npD+UB3WLhKjFrMZUI+IedZWOVyYFhvaDziLuXT2JOXGC
	 j4mS++LrhaoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAE8EE6B48
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040463364.28805.16629309815167786206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33100d5c4ab591f5e39c130fb61b85f92214bf7d0c9c1cb7e07d897f97fb4c5e
Date: Fri, 06 Feb 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770404633
