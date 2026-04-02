Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AFC282F33
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775135134; cv=none; b=s46bJdCfiq8/VD/4SqipSCjwQoLpHRKhOOvWzUnzIj5NloTZNexFUd+xaRgfBD3gp3NLK6/E7p7W/yaN7NEItcqCJfjKIleX/su+Oitc+Lq+WCJnkGOaedQigF/bqgAnZXbnKSQzmt7Ffuc2LiKk5ynKESjg5UdWbhOyu3J4mDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775135134; c=relaxed/simple;
	bh=Vf9FrAlZqhphDCCfdarWuGWbaFFuI9BDK/dVAf7ae8E=;
	h=To:Subject:From:Message-Id:Date; b=Lfdxh5tXVFVWa1Khi51xZWFvqUgcCONfxUd9wMxBXU3Wu4IXZuEf0VDs+XvPk5/JtHid1Gk7HRgLEauddKUWYHC14Iqd1LyyNPODtMvrGPkN2fmdyeismM4r9FuG2qk32HDNUGUqXWuj7trINGQF7NKzZFfrqrvibgs8UhMuFAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFYF4GKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFYF4GKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C673BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775135133;
	bh=Vf9FrAlZqhphDCCfdarWuGWbaFFuI9BDK/dVAf7ae8E=;
	h=To:Subject:From:Date:From;
	b=vFYF4GKOF0WyxSKomdThwZB+pv6Zt0v/hxcb5XSaUj1ABYYkJyQ+aP82AGJ1kof+p
	 c1vf4IQPO2FuIZDUPf7/au7tPzRppjoyoS/Qs6bffZrq43V4KxL8cQodY6iQ5I4b45
	 2/yf272oZ/rKZ9UtC43U2iNlsMwo947bUqXdF7Qd+xiL8HO3WogbSTUjkxHvKoogKV
	 1D44j47BJTr4XI6gcF6vkYzxTz9PCXxuRHjLu/WdhyokEoJ+knpj+woG8g3WYmMhPf
	 94ooPrk1bFxjOt6W8e9mmU9uCXM3h3OWut3JxH2TdcxgfO+F+GlFlmx8H9ya2phqT6
	 yy77bFMf/xYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A8ED39418
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513513369.13629.199203253911310169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0972b61853b5b7e35d387158dc4f33b4a1a96b68086cecedb31cd8897c6fe164
Date: Thu, 02 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775135133
