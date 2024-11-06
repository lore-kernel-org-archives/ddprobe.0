Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9E6824A3
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730874954; cv=none; b=hRd32zicGKCyhgeHD8/RIsHUIZC10BLe/12dodz+LzlgXG80kRAlL0csNtJ5x4qzT9fP5QIizvu1RGpWRUqPp1bJILTtL8Iyn5Dvp9MvCTTWWG0yyYKPHM86JBm80qnLaOiI6sAaYXMlC4auKokPyeQ24MhKozj51bGeSrJkF0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730874954; c=relaxed/simple;
	bh=E7GZilKmKA3K27zWTXmjMhlPCpnu0ksyugFzOzlmrDs=;
	h=To:Subject:From:Message-Id:Date; b=vDY0B8JgL3+AQMxRrFOZ+O5n/lwsdzwZmRrVVbFU7xeTRMdlEEECN+9ZzySfv5T5nocuMax9UJAS5xA64hv3Fy0sxDKb0fDRiAm5wv3RLY227zfLdTTXO7Xs5HUGt0ljZrS3NAocJgLqxX0Vm+qNAY12e32fOubQrS2AuhMPHU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlSobvcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlSobvcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22A8C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730874953;
	bh=E7GZilKmKA3K27zWTXmjMhlPCpnu0ksyugFzOzlmrDs=;
	h=To:Subject:From:Date:From;
	b=qlSobvcpote4eZYq/tudwPQLNTu3Z4VxYcjn5GF0OP2Toed+LGOnq2xUP1CIcWBdo
	 wGWoiXqnwWTF2KDSY68ktS5615oOVFnDQu4iJfYVyNVhRYifnY75Ur4BJ3ludt628r
	 QHl5VoUPqWhB4I3RT43vcjedIr7HebdIr+y6PPsW/sBGnS6b664XEpXDPg71elwDgT
	 ESl/SRndwx0fl1W+Z5v2uICoufc8IIB+qAncksJpd0abXtCXe/LVEQxlBGbJ6aKFuO
	 artf4ZrqWFyMmpAEU+QhMjO3vjWuHu6fak4UlCqRKYAsT/O5JyUKplKxmcI75M1zxW
	 ggVxwX4KijDvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200DD29F9D
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087495359.22579.13010332273006433970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb3c432419e33368dbd5e2350b9989504710fc1727f79548615703ab8252b03
Date: Wed, 06 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730874953
