Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4436D278146
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750070394; cv=none; b=jNvHHU1iKHk+nkJ4ilEl5S34hBNUHYJcHsjZ7prKlHoUeqUMODCbULLDdT+K0VsHVw/m+Jv7ebXpPdmOZcQlfx1tjPeTItzpe2wFp88mGII4zd/WZrqTPbhERuNbv3cRIpbCWcHdHs9dghlpVvJmOqTMrXJIrUHmyskujzk9S6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750070394; c=relaxed/simple;
	bh=dpTvQml3X8si2jhWib8XnAArCUPpcq44uc1Jhli9iTo=;
	h=To:Subject:From:Message-Id:Date; b=MZ9CG8zJtbXStaResdjmUUGcl9vKJsJslF/6OgZ8M6xpPofnmU5Y1/OeWhGCsjaJ9uRaDysMBX7pXgWED2qYgl2UjVOuy0D+cF+mNJLVOPYqUZjk1F9mp/U8j0alg5WeG0aIemOI2fLJWfYOmP0IJECawoCrWm2GYkwJBrImfIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2WL/GCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2WL/GCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F8C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750070393;
	bh=dpTvQml3X8si2jhWib8XnAArCUPpcq44uc1Jhli9iTo=;
	h=To:Subject:From:Date:From;
	b=h2WL/GCgaxna1BeaBCp5w36/E0r4N4Hmcal/ct72b+6r9c2kwalJqyJmVjvEmSjFi
	 EjK+Dtvu3LIFo8v84ec5lEHoNc8ugxFB3ZDeDRrl7Gs1YGyowoRlYxw6ml88OkgHKP
	 2Zz3GoplRYX8GI/GNbql9NjmiDohpp2BiFYiu/588O7LFy17idqtjxdQH/bBhXA0x7
	 Oaku0f3p7Ie3R11fhO6qgwoqkjXyITqQ2+MN/nMM6fmHrBtQ1sc9/Gw44Mp7OdgkV9
	 wshkUAm7sIbuqOh23tDgebrcrbrdlDqtQWhMHIXDt94Mv0eL9xwqVWR9mk8hR0pr7i
	 +cYY85o6HulSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDADC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007039358.31725.11696754876618095823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e56ebdb6fdf64b92d1b32b6a97778d0b5694d139a95fc45453d1095919babd
Date: Mon, 16 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750070393
