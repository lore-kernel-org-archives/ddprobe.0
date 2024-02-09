Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F120612E4B
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707511697; cv=none; b=sXM4tuzYHY4kPqi6aMgz6FF4BHg9kBsJz/oZfjbXGJqegVgClk/fvm6ywGQ7iLdIVqKJqSiCsbVbc82np5dytRz4Cj93nW3oXTplGOUZyUDjyPzDkZAdQ91kVkUvn6CeBDURq+t3/qMwlEyyBIfBepffS+qyzNBoJjpJdpYfybc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707511697; c=relaxed/simple;
	bh=D0M2a/7qKAlMxxry/Ae5zdO8YaD4bEKrUXxmr3sV47o=;
	h=To:Subject:From:Message-Id:Date; b=tCxi2CMivpAfai3nieLpCbjWEmOYD3AswqfAf1ZK4S76aOrolJ8gv5sm4Ea4aXgA8Jowavkmepca75ff1USpImPUvcrFyZPO0cBQ4Z4gVvl20FarMoonOWxim2zKsWMmRMXd8xQOc2BG5NI5kjOJsjxp6SPeOheLR/NBFjBJeRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivfz2HuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivfz2HuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847C3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707511696;
	bh=D0M2a/7qKAlMxxry/Ae5zdO8YaD4bEKrUXxmr3sV47o=;
	h=To:Subject:From:Date:From;
	b=ivfz2HuMcMmbNZ28s6TjsPiYG5uWl8lQLeMAVqOqwxFMNyZVUxWlbOhjMhWO1UUy0
	 rJklncjRuxJsFFteA71lwlIiv58HlR18k3jfVoBeN6sYla23QGq0iNdh/ARctLJs+N
	 2xbSyfM/uCnN9VyYPFaplRp6GmWxbYhPYgTUY2R/YZp94m7RiuOQ/aF9OJjUtwsRHH
	 +b1IFSjtfPCxLGwBK3e6raSsWVPUv30n85dXbcX0QEFVcxOAQYHvpjkoJmMPcGwT1y
	 /BTX71OX/1stLJOlBJU5EftjM16rg/5bfObqgqalgUqiyC7ILT/1cV8Hu3kvgOTwMJ
	 ctKCmV3rApa3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68732C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751169641.31345.3152589116194591523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff8ea080883184d2535ddae139db47bfe41479b5732032baca1413c41b37633
Date: Fri, 09 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707511696
