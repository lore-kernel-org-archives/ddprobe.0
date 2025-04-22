Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37211280A5A
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745332194; cv=none; b=L/5wOGz3lrkL3shPPJPyajSv81t3rCZuC7PyPPE+ko2UqHLnxmeA4CG3m68YmIkvdwhcuGLKsxXwTnBImWBIpxpfY/4IASF5ZZHABTtIS6alZmyK6vvpFX9/KbmPFo76Ia5clbIyQ12uUZg5hb6uoYetUBqPFlzLH1OyHoucWCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745332194; c=relaxed/simple;
	bh=nzdRbaYzgAxUN+787RQUBGcmFk0ki5doLRHxGmIfnS0=;
	h=To:Subject:From:Message-Id:Date; b=XQlRjog16DzKmoWhTeAyLUlyPAqDlcKWsiZUJj9QvimSHvv+EcnwQUxcOScJT9TsQ/gpz/Txo89m6lp1hd7dfuUrwq1G3Ap/FmOUSVis0Tz2ekNneoI9IJtfh2YvHf/BZuZbyzYxIQSrqeLR4p8qtWyYb22JiiRK2pQtxUIiD6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1mELokH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1mELokH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEA3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745332193;
	bh=nzdRbaYzgAxUN+787RQUBGcmFk0ki5doLRHxGmIfnS0=;
	h=To:Subject:From:Date:From;
	b=p1mELokH9FG3+uahTC7P0byPkxlmhQ9B22zA/XINTPArTGKCpeeZ9YFtLm3mlitBe
	 m7KpP7Z1NpFncuQICS3zr2rRxQdaS6Sg+axPDX5NZ3mq+dPZlXw1fsaR6VDsnp7/df
	 jbNNWDk/USkSkplgUn4+XQ2ReBLuIen51ctBghs9FZAxhN8nap/sUAqRSERRw8nX04
	 AXBIJph0zVNooXBqagr++rgp4nmo93MgndOeqVmeG98KB4Fi4OiiXc3EPyojuovYJT
	 PsStl2fju8yZ8Kh4MWTGPz0aFDYMCn5k5CMy5PTwHKwA5qrjM2lW6IqrOcjUP4TxXY
	 d6EpQZVn/gwLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96970C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533219360.4050.1741933163847975516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c5231f7f978552038f1568692309cb71e0b677ee6283bcbefe999bbf6a10b3
Date: Tue, 22 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745332193
