Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1913B8D59
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765199574; cv=none; b=b5LvHNdWLub6Dg81qEBKA9lAj+R9RcFKeXmr2KWdqUyKHUoKbHSvUNwL8PUpEbD93I1doOgjZcCnWFPXjbDKxRTciX3J0HrEI2BYSHnRJVkWKVshE2GeHaqqC0et5ZBkabmBxzbUmlwzJZSXKPcaQMa0BD/FfnnBn7KXpbJ4vAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765199574; c=relaxed/simple;
	bh=3umZHq+bRmYo73rxJisJHLhX3GjdQfd6FhuSm7yxZxs=;
	h=To:Subject:From:Message-Id:Date; b=E/JTyf6zE3Y2NbQK1AZJo5gG/zs1Oo4A9Oj7W5TVYj1RBU9sD98MNTIguA0u2kny4twfvg/9K0QXg7mAkQ2Ibk0o2AOtYnWRcC7XVnDu2Xpbip+gtNz51j2cTdO4Ju0DCTyDEWUQZLFrVQzqP+GaRf+uOOMMlZAvos2lNxDigm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeWozN15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeWozN15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAA7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765199573;
	bh=3umZHq+bRmYo73rxJisJHLhX3GjdQfd6FhuSm7yxZxs=;
	h=To:Subject:From:Date:From;
	b=UeWozN15y4AD7ZLp0BkZfC7H364gGxylqLsEQLZOAFQYHHayPlZ8LSsrnFtR25IzK
	 BeUhWKJ4VCIwctzc93CuhP/KxXkgZMSJBjbHB5s6nxFOWP9B/3E9JU6pu+w4lrHI/n
	 q60lEw3r926zfjjcDe43tdUezbkIM958UNw/Wqrj+ELd8wNvQydlR9wGBOfu53ntDN
	 bcQFGtBePj2i372SqlGj8tI1xD6LAY1/m43/UxYOuaRGp5DKXNl0mtZea3yru39qcG
	 MG53911kcnGBOCqz+F42ga/aOdNgcE8cY4Ba6oRT+shbAQQaW6V3VNedkNaZeQ1BXH
	 k0sS1AS2CG61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868CD3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519957358.14620.12735768628869934012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08c25eb9989c6135055170584b5544ff336580165eeb5991b50b15bf9754ae5
Date: Mon, 08 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765199573
