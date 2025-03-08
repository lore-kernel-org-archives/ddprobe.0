Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543D6196
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741393134; cv=none; b=q0k+dugoTyiaQi47TnNlInZKGDHTTi6G3bxTmTqPdluX1KvZCHFu9HTUAkrjr+ULHNquFAAQm7qQ8oRlBWQZkjPIy5gKd2iix6AYkGUDnOok4kmwBm3Z2Abu9DwE8XQgQ6ZQQzYKHHY8XEHlcPjrMeeNMjVyXqLfLmktY9Eu6JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741393134; c=relaxed/simple;
	bh=iaBjWp0BuY4BRw9azML5DZh2yIFj4h60iZvFirJun14=;
	h=To:Subject:From:Message-Id:Date; b=jMtQP9tk4mw0s4XGuXKN3j05HzgUl823pIH6qsLzL/7gmsNtNAGapX9UDSnrvZ1QotSQjTVhUT7XWOgjyxMJaeGwLmbXxFqAbMCu6WFBCJAomRq0Kry5RhF4UR9CsixwLUJzDuMTwfemzk0k0ExpnPoykEkhacSb20CGBlBDHgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzrP9ke5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzrP9ke5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9756C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741393133;
	bh=iaBjWp0BuY4BRw9azML5DZh2yIFj4h60iZvFirJun14=;
	h=To:Subject:From:Date:From;
	b=pzrP9ke580GL5GQv2W/jQFkcIXICRYkw594Y3F606DwAnB9NM5sv4zcnglV8HLxVr
	 ljhx8Fsk+6IaLZcZA0X+iFHQUt95Es61T+1ozMQkBeNjzbyi01PtkOtOnMTClFTnGg
	 a5tsc4xjtN4cqZSkFHxGRPEVPwNadpVyj1ROxr0KNEbaEZSlrJab+846mbasZN9Mm6
	 +lD5BN+q/AaLyfMFubTRnxMZXTQ+2A5lb+2EPg9RAbhSs7Fo/UAre/yFVFan4qcJJA
	 hVjPabcEnXBuRPWr6L0/lyLgXbn7n42hTq4IrXxRQQni8HaKUegr7Z8pdmtbE8IhJU
	 EGkmLGVSVrxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D3FC282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139313365.5056.16733357573380721528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a742000921834ad36a39ddb39ff3a208f225123242862a840e8671d9faef7ec8
Date: Sat, 08 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741393133
