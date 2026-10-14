Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5411747CA6E
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791970234; cv=none; b=sh8Fe3/m6T5SSkrfSOOtuoLltGgvFQP1iQmBi9Qt189zG3h8kmSXNZzRyVmttWcWRtHtw3Yotp7nrDRoB2FsgIX7Z4Ugd4YAZA5TxKMtXSpFpgS0mG3+dJiUhqPllvjgATFwCYXjix/ZKsTcHR3bb2q4/4XA8oaN61TS9zViXo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791970234; c=relaxed/simple;
	bh=2f8FtLQBkSxE3bAS7HcMHgRzGdF4sjm3TmTob5wMSck=;
	h=To:Subject:From:Message-Id:Date; b=jpzJXcbPnHEdYZahILRX6CWnYeybm7dmhz1Tho1jlRQt8LzXBfA49RgdG+pEsL9ms1EV19MQLX+jqig2HpkunvwzeWYhLzR42K4jsuiquhnjtwzIGyCMlS7pV9SuXq7dh7X/OE5VS7MvTM8cLSvtDEhq4EJtxuAj0fFRr08nYkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+5P43ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+5P43ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D338FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791970233;
	bh=2f8FtLQBkSxE3bAS7HcMHgRzGdF4sjm3TmTob5wMSck=;
	h=To:Subject:From:Date:From;
	b=J+5P43koa2GB4kR3/crw2XhsiG+Rm3CoyaYO5UfkuBU1ROCVDrGbVoFelD61RGr5s
	 supzBnYYAaQT1BdWGckC902mLKoKh98OSoXQbAnr6Fv8Rf/vHiBTJJITzLtw9HfL5W
	 2GprN9fi7QBaYG4QfC6b33qFdTFdNmSnb9yB3WmB9hL8WNrb+txMC5BhdBVnzFMYjs
	 ouGg5yyFYLAdQlCKE00l5zDyFDx7PDNKkRDEvuLBYgGEsHVqYIg1TmsAYVc7RgEiKd
	 P2vuAncatuzjV7vtxcGQWxMcDa8rFgXks1tqvsGH79WpV31kIDjfxR5HW/J5ljojK+
	 i0CJAyLzA/L6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC86CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197023369.26335.16972817848553137886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8612cf6125830f23390980ed68f1e79e00c8a7da63ffa6070fe2951d2c7ca5e
Date: Wed, 14 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791970233
