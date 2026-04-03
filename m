Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6F12777FC
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775213134; cv=none; b=EijVqws43ZJUL99na/IhoLKBMS1muxAzGRlmoSOgIgX6sELZ+BNVB3ibcm3LW7lGTe6vgb4uR3lzpxtDqpduF+oYcf5KItnp1Um1MI087MkA2y27W6UifC1rh2pS0F9qd+EJK6P8jilUIZMCYVrvPT3KmVcANbLGpB5ccXy69gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775213134; c=relaxed/simple;
	bh=3tKIU/9NF8QhcaYh2MB3ExOZLLJbRXueX7fSCulkxcA=;
	h=To:Subject:From:Message-Id:Date; b=qy1AO0Xk3usvAFjAkYTBFyvj5kE0/zyCVE0uVncc7/5Om5JfrBxzKwExc6yLtKEokAeAGz0mjGsC3G/uKuMZO2ZPtv2xqPfsSbxldzc/elUjMKqiFOt7frIuxCl4ahVvJnZHKqO0aeL5VYHwXU3MSeXr6bLOukjU74nqfMjhEDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfEI96un; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfEI96un"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD605C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775213133;
	bh=3tKIU/9NF8QhcaYh2MB3ExOZLLJbRXueX7fSCulkxcA=;
	h=To:Subject:From:Date:From;
	b=QfEI96unLhokvss2jLZu/xJaToZ+2rdkb/z75SNOomG+Q3zzU65c0G51PEDjsEENG
	 vzNbUjt6rSPoWLo1UZ3P9xEW+KVa6ExyNFhW81jykVpsm0oJDcoGgDo4nvPpIg15OC
	 ZCsQt1DwgYnHzSCy3rPVkRyTXxVbhevdtqpHOoD2+Xp5vqdQT2MQd4jmOr0PXxtTp/
	 UvtnMFWnyKApLoDhJvUYrhhMC9RVbSS33CGHlshJDHOADXY6yQoIOSbZ9vMQqAnuoT
	 7q0sSTGzmhHTnFvoX7I6NBs8fQLZXyx1btFe+nydLRTHVIuPKYQNwvT6JCHaXMe3j+
	 jVdzwT+QH8Z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB93E7E36B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521313369.20660.3630805098241786251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4974c1c11288fdf3039b133cc2d5e579d8f24f638c04b0105dacf1a4567bb8
Date: Fri, 03 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775213133
