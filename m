Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0A0208D0
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727682954; cv=none; b=b2rdzRsFiQfnahAbB6KkXtOkxHBBXYF/Diad2C3Wg7jqZr13ivjoeuU/WESPPnHz7yO8sqFjcOvTj1s1Nu/t2Z1aH9E3791k1I272PmEph77UuYrUOqCgDIhRQH+n7JRZxZxYPI++NoU3tZhzIsoPfN+1HHpBwZQR9j/FGMEfbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727682954; c=relaxed/simple;
	bh=u+zgNa/JQ0KNytHgZqx4/WizmhU+ktRIizi/yxrgkg8=;
	h=To:Subject:From:Message-Id:Date; b=hc2lX0YXaKyiPPOx9LS/dEvDrCsDVgy5ErtNXoFndT1hTFnn955Yt0sMwLCb78h631ntA2bLz19eKZB/ggmToarb3971VOpajj1TlbNAMSA+WicP82o8VGB+HTDqkNNz0zM/hxMGDIPIYXEyKG7KdtWkwpIMJNfm+6ADvc3wz2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwatEc8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwatEc8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1322C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727682953;
	bh=u+zgNa/JQ0KNytHgZqx4/WizmhU+ktRIizi/yxrgkg8=;
	h=To:Subject:From:Date:From;
	b=nwatEc8gn+KGCl//rxTrx25FozdCmrzJyHxR7phuE6dao/rVpuiCJrE6wHIAvleGq
	 t2Xx9mMi88AHG1Hof3G/fUQ1ztzsXPWVqeTOXbv4A9R/ClwVKQb71U7U+b5sru8Gde
	 52KK3jk5qIlZ1mDXuWuzhvg4z+oaRImvlVv7JYslCF+f/GYHbaXjTMq54S57kOhzJA
	 81BAqh3Sdr8uJx+B5mh/kONdTtQO5EuFqOuqRfjKGVbcZMFmYBjBRbWWy8L17ZnVxd
	 AxaBo+o36PLyVIoTd6kcqM0h9lE+kYAPUVlNN9Y4mmbWW2HBRnAOx+Tgf+DRDMZkQQ
	 VRiOmaAgUvsrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E05CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768295358.24068.8429614386028120153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9955229bc7a2b77e4c02050f43b9161b68b89591f296d034eeb8d20b415e55
Date: Mon, 30 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727682953
