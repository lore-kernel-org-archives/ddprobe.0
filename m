Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E71F946A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768086234; cv=none; b=W5L9Pu10QMnIgjwDlOUx0b/vsJ2hIjY5+/7d1asXMEZHtJE331csIk2SvIzRTHezbw/wyn7jRE+TuRioQyPzqas3lIx9BFt7ORrd7acYgULtLAUvn+t3FRo1T04BypRqtCrt3g3v6t5rfILrAdPJ6CIgSQvcgEhIynZi3xnF6ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768086234; c=relaxed/simple;
	bh=dRaogXlJSVwPCS7NJtZAqwzRAu+6jgRL5IF79+SXY08=;
	h=To:Subject:From:Message-Id:Date; b=dr84bzNW9Fwxs/XUmVcokrmaKhBxUyEHAD2Wq9bK+m/cYwwb1OHdjQ04wzX/7oV+XHu++tZC5aIyBimwak2sXDqWfDox+h45mkXFJxhK0xAGLd08Taz1NRGKdRCywUDYiV1/KgELowy89YBNb5h8bu3F8gu29eTn9blK3X+AhQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp8s0u9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp8s0u9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768086233;
	bh=dRaogXlJSVwPCS7NJtZAqwzRAu+6jgRL5IF79+SXY08=;
	h=To:Subject:From:Date:From;
	b=Kp8s0u9M3myKOQ8YuA8W3wVvo0IzU9XurIjrVkLVeqybNr0KYWBrpq3d8kj7RQ2ya
	 8z0E1xR8Uh8qJHXWqxjxYpObXix3soh6Lor7WAbyvd9S+mXjOznX3F4/7BvZO7UMZG
	 8X+8p+Ma+bXCrRAx+y/rIy1pEXUK+z5qqVL+Exnhuc7wuuKgWDvjS39IHotgHXMI/2
	 koXWAV+i8CT/2UFw6yO0me2ftrjR7fkD7ImH1MXlUFRNE+4tYbtx9HRT1un4VjCBL9
	 jivhBahju/K/gpf18zf0FZDFtF7CQ0tWicm/GmRV0BE4qSRfS9nfKKc9jcBWB7jrHP
	 ujSfSftr75bXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957BAD2502A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808623358.20868.13435415969710292131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2754cf36a471c8f3d11ae4057c5a1ebb16a90cfb931e138048351acb28f88ae
Date: Sat, 10 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768086233
