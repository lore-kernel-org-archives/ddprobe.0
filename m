Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF6A3FD4
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752425994; cv=none; b=H1wKa9pmvghWjyEqFGWXv/P/EMbg68hvyTaqb8sHD6CAj1SlwioFjlKg/VnybIHv70ChE+inAMO8QP0VZrzAdi9F3EFKdu5buKuY4ZxbKyPlIc1ZQzCmiQLn++amTX4+asUwbr4hEPLsgXC0K+75gmjFjN8EanBCzUz8FEkToqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752425994; c=relaxed/simple;
	bh=ZbBwBNS5pBaAa7PhwacNYMMmW5wtPaxsX/PrDu8oFBE=;
	h=To:Subject:From:Message-Id:Date; b=t38OHcIvVyguS2rmODgtLm0EzP/+BnjKJc64Nbsqy/mxc91ESGxiWGs74/xTHdZ5BrTj8q/tOopSH+QcloeI7K32AAQlXGIq0yyZfHwRML659486Vosnoyg77MOcMmMAnU+aZdO2f/2Db73JM7jKeCE2AhZU8BOpAPnMaIUQMH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+aJSXog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+aJSXog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752425993;
	bh=ZbBwBNS5pBaAa7PhwacNYMMmW5wtPaxsX/PrDu8oFBE=;
	h=To:Subject:From:Date:From;
	b=P+aJSXogvTyghSqpwpCRNDpa+8C/236kvcYkxaenvWLBk1LJdfGWK334bt35zwyqd
	 Z+0bkSxiAekoy3PY+KGAO5Wre4UTxOxHGF4aNcQR8WeHsXQSwjyOSfgwT802jerjx1
	 ovfpmrl+jvhYPmoPWioJRWinuv93mrNF4fEL7f4216kxS6DbquQA5wb3fDsDfVqpEr
	 zhH0QE9G9EVZFs8cWlfDKTDsoq48QRITbEJzYCZ4622L3thb3SgzNjVu4UCZG5xg1V
	 eorkQmk57BLMeXdODjn2ucSTVxx/ZJSkX51BYMLuXPhJVjLSXe5pw22EyoBg2FV8lw
	 ADtLY9o5JmJEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433CC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242599357.5942.4457145836953620209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdc26a5e3b29302ecf26321af1035ea591aa9c05bc8a7542f497514834a7c1c
Date: Sun, 13 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752425993
