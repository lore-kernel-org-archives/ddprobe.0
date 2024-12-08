Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8524A3E
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733672754; cv=none; b=R5kBHcPe86rbAb1KjCXqsQF8XX+LIi8LdauX6PNZ363EpE6z+lgFhCGAr0r7nuzHX0XQm0moQEiBk2WiujhaKAKJ16QEmoo9YYHZByzEPX6gNY3emGkUzcwY/kpBZBjNS1bHepb0N081ifZnQhABDUedEw7dT6SGXnM5SQ0Vi7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733672754; c=relaxed/simple;
	bh=aaV/rZS8hDPFgFGtmFS/0tWfVZay/UkVB3dfyzhcGKY=;
	h=To:Subject:From:Message-Id:Date; b=KH8bcClmtgyMND9o9xDvnR9KrnGw2d/z9/twxt+JxUVBoSPVw2eWdpuAQm8/LkdrZ8h6udpFV1TN7snEfXxR76fEqeydXctOPmorAlfwW4V0YkLOOdhWJ0ZdxbU/ew/MnNiBayar9j1/dU/TzMlOQ//0ZjSkGxojW0GvCB/OuSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cT/TeKRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cT/TeKRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA66C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733672753;
	bh=aaV/rZS8hDPFgFGtmFS/0tWfVZay/UkVB3dfyzhcGKY=;
	h=To:Subject:From:Date:From;
	b=cT/TeKRQ74yzErzsT5JxcQA8AkMB1LKA6mpg5bRzRvXE/C+RmwbBDcrhtqJN4sGxs
	 tY8PxjawoVNMiYfucrxm4grks0yIsvgAHKC+ro1jiWx7m2W7kjoVFYdn1aZm4j4PD8
	 yNzjqB/ZE+ecljbu1usZOnSmA0DeXeT13X8T1T63BO7vE/4t8ojA68apBHUoF125AC
	 qvgbFlA8gmui7uhNQ5j9pSA+bexXWp32r/TsfX2dlOdD1Ac0K82Ff6FktFagVsnXM7
	 V9gJfRMggAENsdP98GtDP3FJWShcnbrXSNMWwnm+BuJLcfVvzXML2FprziBvSPUG0L
	 QyBwMHmRNumlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9458FE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367275358.5603.16746835749952764545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d963b2abb5bc75314c4dde7226e99b49f0f809596974302154097434269014
Date: Sun, 08 Dec 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733672753
