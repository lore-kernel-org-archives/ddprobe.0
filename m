Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1914A13AD1C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726678554; cv=none; b=rZ9kQoYsLtuiqwIBW+JAmojMOsgK4GFmBEbndseyXYrsCEVzz6J54ZS0Tg+kqErmxiWssrzWMtbW3LOHk3ruYOe1CAaz1bwqW+TfX6VTt1kfe/1fy9i1qPKVLMcUId2olpH9KsRjObAQd3jg0OQgrpGk6nwJzyJhKtRKiH1rIC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726678554; c=relaxed/simple;
	bh=EItZtBmXyACx2Akyp7SHo4d9VZyBsiyFri2Bio32eD0=;
	h=To:Subject:From:Message-Id:Date; b=VN4JKxcaXHAe2WFWcnUbXWyTyv2giEcPzOibCr+CCKeJSXA8fKTEBAfq3AVOhckZw1YTt5QUNyxxeHAF2fym796rS5Ww2/0QWQyzJHUgJqF9R/Z68RF61IsuyX85cIGNPfeAVGKneeNq/hoyKUPIMPzQsg/6UMygu+3fkZNvde0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQ8O50Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQ8O50Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A16C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726678553;
	bh=EItZtBmXyACx2Akyp7SHo4d9VZyBsiyFri2Bio32eD0=;
	h=To:Subject:From:Date:From;
	b=XQ8O50Go9vM1L6+/+A3MFr2YadHBI24tkmsi4HlElw7Lb1ZRzDGVGLuyMU5KLI+li
	 yWpkrYXS+rEBbh9IDC26gzwS4BjN8M2ULDm8/CrkSmLeP0nOAFCGI4r9D0b9nNQD3/
	 6lLgeAchoEbaAsXxPu5YKk/i/DCC6GDAP41rpRu95pnamrGa1m7/p1/UhGRtEaockv
	 TxcxIA9sLhuNuYgOtahKPFmWGpahfrGj1KS0KXDFP0hhzcMPrOpxcVxAHdOMwZ+pBH
	 C0U0a1u/wZbLZwsoEB0StH7WNybm8JjfyzIsIHqi7i2IB+o6EwxlE7s0VQG+2IdSrt
	 CdbF9xr1eBXjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A96CDD548
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667855359.4001.17794736241233246729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c56ed77e9fba9a7a11f856f83c237be4609c2a3267213596834e139d1b79e8
Date: Wed, 18 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726678553
