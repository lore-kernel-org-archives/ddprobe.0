Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE47392814
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297234; cv=none; b=peBQO8BJYu7I3qPwPy3S2DT1+Uq6wa5GVctS0ABT8E5i6EaSFdH0Q9sYS9Avto+sfwWuv+05bbNyXSSd32YFZC/T+Rwj2+EZZt0npyRJMGCFmjdbDmk7tUjHX950sDNe/eSJvZcCZB0eX0WunovWQqXO022PsrW2soNZLN2eXjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297234; c=relaxed/simple;
	bh=1WihsPc6/8cXB5QBWQyPxtNqWG4q2OYCRzoev4WDf84=;
	h=To:Subject:From:Message-Id:Date; b=itgCgV8gWXaTu839YgQ64PuHWxEk3bavZSkQR7rKNGaQqy++zn0JFcH3dZGg889krFbUCpfzaYDXv1UEVXJYm59r3grAFGrSCoYa1AFZYwrhjbwqvESc+IKH/Zxwy7OHQM/HleyiT0ZZcY/m6ZLauekp0B8Ys9t26VrbzssLvaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTLMwFHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTLMwFHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D3C19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297233;
	bh=1WihsPc6/8cXB5QBWQyPxtNqWG4q2OYCRzoev4WDf84=;
	h=To:Subject:From:Date:From;
	b=TTLMwFHc92KXhcvZdstu7hQ+uQOfbyKjy1rqcY+dsmQwCbjRl5xhaDZmqwuKOkDzj
	 OjnLS7VJqLtBgqCh/dF3Hyvyo1O5kyRZuikZFVGcCs7qFHVvPU91p0wL6OkMutdBys
	 Eji4SL3bAxzGhv7UmOVDGzAYnnRFXUlCbUO4egxufLJu4/iM/SmtQ1kZYlWBU3nsJT
	 /AgrgqtL1KL4fh1X+duJsWKn2oQL3vzWs5lXdWHsxRh/8CasBG8kQAHjrZGkI0IC6G
	 zQcKbA9Zwud804xxzsl2cFDmSY6qqwBWbrU1bscgBWYD1z3TpZutuh2EQBtLCT5I6g
	 RSyVh2gHzcxDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93222EC1EB3
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029723359.24658.18086545686215921818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d43a836a5fdfd39a862e6b6baecb5d80f4747e902170338585ba1bf6c4b5a5
Date: Thu, 05 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770297233
