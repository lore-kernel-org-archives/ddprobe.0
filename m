Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411A13DA5C3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789888834; cv=none; b=c3SNjcU7Ljwo5zbKr9Y3VQIXFeTLfT2jDl+f8n8V4pebX1bjtUZtEn9qVdkAYPYaaiTgs7UhrLB0AO11SOFuzyU8g0XqyDrITv4OWbmgwFCHq/fLffXnaBzVnzM3ukLo40cyZZKNmhJW0yHhs+7DmRmzs5hIca2OPDR8AHUaJ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789888834; c=relaxed/simple;
	bh=ntDoTtmzcdeSz1vZJH+bH6uobsomsn9EdOQdYxm+ZhE=;
	h=To:Subject:From:Message-Id:Date; b=NVEo7KXYtwu6Vg/djYD8WIbKP38EjGMX3sg7b8CI6WQq+/xETCJaaKalkbj7KbrLIyFcW27YrQaSUWw7O2jxlEnuZ2/OeVAOWsekoJjM+S+CAUL+1cNRYHgV4qBQBj+7x5jbiTxEggG+eN4/ydwWdrnhHScd8Na+/fFF/2CKEdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFulARCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFulARCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE099C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789888833;
	bh=ntDoTtmzcdeSz1vZJH+bH6uobsomsn9EdOQdYxm+ZhE=;
	h=To:Subject:From:Date:From;
	b=JFulARCctQAzz05NbXqB/MiyVdeiNql8vSjx6j1pUYj9C+EC/nmf+6zUhFEOo6cr3
	 /tATHhp8Xvp1FctyUlszoKPC2jmZCQRVGbQMROl4wS7xvnfmi+MCFtdTW1LLcpU/dv
	 ppUmC3QPuOHYfTZyuNics0G03nc6Lm6QqAlrDOt5eV3679s+1f/syIuT3BOOf3FWUa
	 h/fxinFhCU4M3xOgdDXlxVrk2Cl+QEPGrTXnfZyNyPrdf6yuE/ljIFAjN0ln0BIt4v
	 0JyzqnME3d4MIhXlX9sNmQZ/ABfch1fpywsl5Uw4kCbUuQDkXn/c8NmdCXTs94Oo3d
	 E4qgG6uMgQ3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60BC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988883368.12545.1735651521293142301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4cdf47200fc58b63b752bdb5d93b77edfaf858cc6ea64d43db71a40ccabc63b
Date: Sun, 20 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789888833
