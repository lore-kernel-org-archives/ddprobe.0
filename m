Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB902E822
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733546154; cv=none; b=qQoByMTl4Qr3XWks9x35tQkG6FtRc+ek/Sc2jCHsZwzx6AGgAXR2DTOjlokEiflNko/tVYb/HN6x/AD364QH/BbrL47SAdNz+gBL7GiX7bwag3dp24F3MV/Wk4wsKiATvkExXTIN++1b+kpMIMCbdGcyuwpwRScIayZCZAKV0UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733546154; c=relaxed/simple;
	bh=9pFCBPIFFB9I7bkOGUnv1kIcQJWxtn9079C2y9rMlXE=;
	h=To:Subject:From:Message-Id:Date; b=gr7Jl/LOzb1wjeidzaobgZNhK+Hc534lOrk/6FIKJK0Az2gjlYHN/PgwrI9Thu04CuqMGluULzWBJyGWL8bhf1AFEaqbMZyke0zpZCmSqXXTD5ZAMD714q4aojzEzWp+y1+W8VnUi0W/Bus2A1HTsVgPj5XkXkzwhtrwZOsPPgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdOn8p8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdOn8p8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF11BC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733546153;
	bh=9pFCBPIFFB9I7bkOGUnv1kIcQJWxtn9079C2y9rMlXE=;
	h=To:Subject:From:Date:From;
	b=IdOn8p8gAbLBBmKDJcc1lgHcpy6CB0M4P2RhQtWtgb7+ElmpiBfKVk9ccZ6YJvA6q
	 UjdLS+5tFgU8k0QzqnZtbRl7KvzLxk1qvUSbyoQhGxya8RtYeGt8PGUxSwu9ZIm3Vt
	 CJIHWVjMNdGHdUGNcQ5jwe0V37WRZmfzrGgbmBUeggrF/NA1dEYw+HXVYZ1+fw/N1y
	 DPvHLfhZoj5rLYFnYk4Ww6rKSkQj3B+UF+op7UFml4HnAs/nEH9ye00ENHfvA5FVQf
	 Y8BTFQtdg230BLC5Jbe7ZiUOfJ6wEHHJW7On27MbKkzvpK7wDpYy2ZSiXUB7/8hAdh
	 WHXkzOdDpiRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E946E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354615361.9217.7831505845175123004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec563dff699d88a151836160e447de5d00dc7e7cbf283ba0e40e0df30c017655
Date: Sat, 07 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733546153
