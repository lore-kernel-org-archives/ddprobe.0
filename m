Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241E32D24BD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761260994; cv=none; b=rkh/kz17OR6Asdko/5EyQdxuddyu7Y5kHddANa9lVDu/YHHwwnpnxbB9pL2bhJbi4IKfzt++3UEtDSeIJgWN31HZXK2vTgRuMocWHu7E0ZqDl9TfHizjMOZVdq5KyZbSzHLBwgC9dfI5Oo8gcxo8aDnOUSkGgBJf/3WOCd21uRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761260994; c=relaxed/simple;
	bh=fAVwc3APkQHMgiGkEy3W09EUsRsWVfCOCXuueUtDfA8=;
	h=To:Subject:From:Message-Id:Date; b=StVdOR+jilt702FwrnTIwS9le6zY+BDRgNYQI8b7AQxEQCyLjnTF5kyLAOoZy3r83J9rxT1jqgJcwXew8jsJ5f59eV8WVGam2P3UQvgNzSJIyizgkWj1xHCtvLZSOFwnBmXFnET7Y8GGf6WhsFni8sYHKQpSXTWFnkiQpp+MmWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEMNb9h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEMNb9h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAE0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761260993;
	bh=fAVwc3APkQHMgiGkEy3W09EUsRsWVfCOCXuueUtDfA8=;
	h=To:Subject:From:Date:From;
	b=bEMNb9h03Np4HeyssHTIKrM3p43Lp+o87ZHa6koXkPsvwPgEf46jYivRQ9lkAMyg1
	 6slg0+H2W+3ECkPk1bOwqnVzRJE9WtzBuJJltsQaZ/jMMpPad27SMDKYBHG3C5ywYC
	 jCDMzSYR3qOIE+oFGdrHe4G5jSAGCZ7P+xTTlphY4yUExZLvH3mdEIryl3H538cxc8
	 rgCbn5fzuHpCrZi4UCvOzzEjOa/ftXUAganYWXVw5Zs/oct0dK2rAVaP013X4Nf1gd
	 7NecSpn6053OxlfwULsQRkMsO24VEZ7FsYaaNZdtA5fo+OBGt3jYcTYHlVEgXkZ9P4
	 cS/HsJBd5vEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98233CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126099361.6967.2126188265795600016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a22e130e6553c4a30cce3e2783ccf6ac8c668d31f638e9bf7581103ae3dcfb4
Date: Thu, 23 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761260993
