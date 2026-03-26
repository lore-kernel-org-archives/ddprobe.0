Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9283224B12
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774488293; cv=none; b=AUq87NIpRYK8nF3WEp21u0ZtuJ3Aw6UEy1QjR5wSodo/GvsH2aCvHNYaipGm901kUQ+Y9E96U7GYGD7PaUkzRAQKzHcrWdwJa4Balgp7hm5jBveg0xqhKHpZbhO7y2LN+bxUdjtQodjdjrSkMzDJcLIAhWthgUFFcpEZVCxnXxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774488293; c=relaxed/simple;
	bh=boa1szKsN+cKN4mI4xhVwQ81i6tCk1sstDX9J6vFoc0=;
	h=To:Subject:From:Message-Id:Date; b=oc4Yr3MyPjxdItHR9NUcW0Kc0RY4F+GsseS4ucJEK1rE9SdaTW5TgraWUJb5mr7E2wC0S8pSo/VMLvgk5QcJncyfjQAE9kuagXvG1TLWzcGn8LOrvuoj0DWLr+K/YpctFea6CwrQjDW2njCFD888YWFUWXlIjmFD2Vpw8SA2ZPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+VY/P0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+VY/P0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3331C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774488293;
	bh=boa1szKsN+cKN4mI4xhVwQ81i6tCk1sstDX9J6vFoc0=;
	h=To:Subject:From:Date:From;
	b=s+VY/P0WzFVBlFkXcNDTjH6J5fS7Qti72O0ZiDeYuon7ibhD06f8/sTaon5QCOpCn
	 HMjw0fT433/cot84qLXsMUdp2CURBhbnr5unW2+DUDlRzhHmsceFlG/Xpu3F0C459p
	 VjsBNS4duZopJgLkdbZ8NBKx/Icw+PaEtwZRDClHz1Vi0xANDe5IeRBeSH+2hwQSKQ
	 Z/vzEixGRdYYE6H4OnXdAZoCTm/rv5Jl+Q2SJsE+md5Dd2mgeYLkrQFAYIjg3kW7IB
	 Wu2ZUZUD5pZbMpTmBw/hXgesLmyzehfJD82xfqWmXJcGWbtnmC4cbwN3qBXuZcgk02
	 1JjH8WUDK7x5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FA109E530
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448829358.24031.5260501412206174426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7353ba371825fc6c016b4fb017cac4c87011bf2c9bdd717370aa3ec1c1b28df2
Date: Thu, 26 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774488293
