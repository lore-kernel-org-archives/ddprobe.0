Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5801F1684B0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784776174; cv=none; b=Hf7p1KQyVBI/ZOkP9er55apYUJguGa4uX5gWTfQylSQfDMh1x+HnLv1ADi+Qzfjqh6OjCtDGXynToWgcjukRH5DSe25NEvALQHTi7tA45YkJ98x7BSzV/Me4JI+f7RgnA6xfLrKA8nG5BTwxmFZSd31VsREjpRTNrgN5FC7ntvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784776174; c=relaxed/simple;
	bh=2ySzMdue4Jj6nY2/L2Kau15zOY7MyYig9Cwd4+/U9d8=;
	h=To:Subject:From:Message-Id:Date; b=P8WEoVUSynHIZSmX0UfheoTRJzzDDmRnYw+bj9bxlFQJk6ZXoR+UHjRX86Mri21JRvznpi8u69ufgMWxPhXS9LxfFARtws2c6NTD6REqV1AEYrueiSaaucJ8Xnt47como1+a7sYF8BilxsEpvo+enBQdI1pj5XAACGIOANDARXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHZCRRZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHZCRRZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1214C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784776173;
	bh=2ySzMdue4Jj6nY2/L2Kau15zOY7MyYig9Cwd4+/U9d8=;
	h=To:Subject:From:Date:From;
	b=EHZCRRZJKJVWBOK30LOmAaq/VcKg2FIvXUOi8BmVNYLjdzONBUKHrii2gf+9pI+C2
	 0m/OOJ6Wl9Ud/A25nlTTov9e1nzp43FXGbFZ3h4huN5SaPgf6lBGofQpSuvfYK4pr5
	 jYRbZ9Gn49BtlyCXh3M6awuEXundIY4B3rWx52F2kbwc3OjvmiByBYSzPapToGXW49
	 nxpfiG9SnzKXoXQKd4DoWDswr8hwgXMnYrPpkXZX8mswJNp0/dEzZn5vLYzgt+O0Uk
	 AzUvg/APjSqKYsPUSFes2lVidfZyoQnx7uMFxlm9tc8C37nxw0BzdqV5I+eR0kegMs
	 QjfDBtnDdEGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D74C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477617373.22633.870561613296606738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2f7af215c9ffedc54a5ee62da4475c05fa17aa9cdbd21f5ffb0b5b81d7b127
Date: Thu, 23 Jul 2026 03:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784776173
