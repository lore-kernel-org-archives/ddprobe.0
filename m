Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660D01CAA9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716846263; cv=none; b=nM0I9/0sSyQJ6rKDlEhxoq9mJzrcRGORrfqKhwVYj1a708hqx2rGMQtf/z2LreY3eOwUS77eXkPctgwGlBc6Xdvi5VGbSDZNvDOmA2ct91eG0sRByxW2vxsNR8rmR8714vhlvkqaNW62ItNGTZFCMlDUj1ujbAvtn7jTYQdZDsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716846263; c=relaxed/simple;
	bh=uS9bZ2GL+eKxWRzb91yPlingfNR06DLM5itfJ8AJEuE=;
	h=To:Subject:From:Message-Id:Date; b=eXby+jIU+jL1Hjuwc7N52513DBwwSnoH4P2FXiCeLc7MV8dE3GDyL/O4qU+ub/U5OBXiemGk52VJ/MMCCSQh4WkHdOYWPkfDZNuiQ9yEkV32omBQrLbQ8iN7RAvF3L+uYsPeObDwKiYMgOHIzx9/Vf25sKaYK3zIAMPPejHD8gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXSX1jZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXSX1jZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E802EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716846262;
	bh=uS9bZ2GL+eKxWRzb91yPlingfNR06DLM5itfJ8AJEuE=;
	h=To:Subject:From:Date:From;
	b=nXSX1jZaK3UswOUe6RLi5hOhmaLshGya1Y/WUuOO7YYtoQ9jnDOA5lwMjReyeIccM
	 Zxr+sH4bnMb/U4KfbudygrK0uglyrDWkcK+S2X9G2FWPK66Vn+5/85vnrtJ8m6Rd+8
	 CZCUkSzSNxU+fVJALP5Z132658gPxSX6/IJHoYfqBQjF31BH/UxS94TWbeUvmWkorf
	 /ZuEbTTLyiV6aHvYEtflU1v4piYY7qbbqzcVi2xO5ctgJ2OQa/qky0aZt4MWIgMqyc
	 SYzOHQtgnLH9wUJvHHqKCkD4iU0QR6h1TcDglNU73tRvLHqzUZL9yCV5kb/mXumHa+
	 4TnR9O8uBD23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D5DC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684626279.24302.10897943668678439468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae6050a7143d58c9cdeae49df0432e7b18e4807126c1bd7573832027bfc6236
Date: Mon, 27 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716846262
