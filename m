Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5D650B411
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790679634; cv=none; b=JXk79X8tkISrVayoIScJZRyUOnvi9qhiOsICqbjORdVFBirsVYQUyiN51B4QMB2O6dxfbjKvLgTGIpLiM9wxdeEIUTm5c95H04M1LyKHk9/99q8zwmBk2pSbX9zz/SkNKcaZgFrhLYuDHHaB27ZnCrJ7Uxgs/KcGWpHv5ZrWsbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790679634; c=relaxed/simple;
	bh=wHBBztdeNN2RK90THU+7MTpCTt7e3jdUqKbPCA6FAZ0=;
	h=To:Subject:From:Message-Id:Date; b=i55MN6v2AvGTMuiGkFtKfhwbuA2MK5hA8SjVkowXAAA71FjU3dDjFX5ztclvyDa0HIUM+U3u8TY13cDlKQMuI4Q07un1KcOVq7ae5fs6PoNAlvR7LsCNnui7TUk/AY0nVqANB+L4xQYUvlFRMVi+EW9q38h+E7icPjG7tEGPZf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGoZ4uAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGoZ4uAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCCAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790679633;
	bh=wHBBztdeNN2RK90THU+7MTpCTt7e3jdUqKbPCA6FAZ0=;
	h=To:Subject:From:Date:From;
	b=dGoZ4uAoo0GaZuO6OSh1ffbTs9ORON/vi5BDjr6pfpnCfq16HDMB4bgtUdRmEWfdN
	 XGf3zr8yLShJlb6J0j7G6X1+aYLMKgJ0T5aho2HpyOlWoJlH/1KZGnyjycVIu+jFSs
	 soz+EKi6ztStVuYqEvCDhpG1HwcYeevomMwA6X+CPWYjEUxW0O0TCmv07gwkBITguU
	 kmMz9V0XExH5yTLyHX4I2LAJYgtVCwXUVMJrvmtZgGXbngXTTnS6SU1VoRIK2/EKQh
	 9V+sBAFZSr9fpnA1fZR//HMX31CRLSJao5wwzNUL7Q4Dcjy3bwqqnG/g35lgWHksPa
	 OY62rQZuqipBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8A8CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067963370.29921.10507947057838370468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a508976903aa6dc3f5bbc0f1adac6bc7023f062b3601679c3458d65577ecb9
Date: Tue, 29 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790679633
