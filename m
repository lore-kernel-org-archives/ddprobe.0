Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F0B29408
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720488983; cv=none; b=Bc+2pk/Sej4MvjJI4Cd0/FqbwWHmnoL53VRFvsiKHF41QYk7ylqm9O4HeCS8W10ER9+1ssMWkUWsP6DmJhNezsy3T4rbwQA7sYXDc/QsvhITGLm73tQM9+5Xfl2Ez8nXlMzX8j1Hec7Bf6P8Myeib8t0eehKmzumZ/fi0c9xOyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720488983; c=relaxed/simple;
	bh=p8vNeCfpAmuY+DeIhSR2ONUzWArwsMLTC7C7Wc0K8zQ=;
	h=To:Subject:From:Message-Id:Date; b=VYT2NLQoH1OhW952AntjeCOXplxJtDu1CW/xAGNYrPJPAIiMMdhO9Qs92IC0vqV6CCnASUKofIn02rH5ngAp07dJz2T70HEMGv8OZsYJL7kV36hNX7UJMFWOGDjlhqknzkZKIrtysq9M13bDbPALZlDt+IwT23bBF2hXYLpuarU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6v/Cc4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6v/Cc4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B11C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720488982;
	bh=p8vNeCfpAmuY+DeIhSR2ONUzWArwsMLTC7C7Wc0K8zQ=;
	h=To:Subject:From:Date:From;
	b=d6v/Cc4dxGUe7qO+wOLR5HMvnjEMcxI3ya8Cf2Va87hD9EpKzVziAAhxrWtfPoAn1
	 fgVpX/y+X2mECv9Fh0Y6LfQe9kt9AMWQ/zJxtI2uXsqOVNiNmEGqRonvzNKY7B2bx2
	 ja7vnhNAF8GR0Fko/LR/1BgKQSItjrSEEqJeYhmMey4RPR+yd61JZnhG8tT8X2MkLK
	 aN8IUKkpKFeYlakbiLi5pdfBCqQtqktAUDRwx61eNY4rImQ8hzu5ipL1x7jcRHksnh
	 dyeNShH0rAfqMUVl3faCRlE11RuL3hRDKl3HGsAqAuWXImqW9DQUIK6T5w0VSc370H
	 4NdqFpgeFJGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAABC3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 01:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048898277.973.5914612727993786527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87205ecd7f8f62c189b1101614262cc91653e669ed0fae0eec6bfdcf18a0c895
Date: Tue, 09 Jul 2024 01:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720488982
