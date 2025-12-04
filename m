Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0EC327C0E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764835375; cv=none; b=KSkOZcu2sgnQDdSD6JEWU8xIZf/q5AEHZxi0h/K4uEOWR73cMMIANMKdcZ3WjSAI8hqQPygUF80QvRDEagFXpg3xUkeQWsfUN8SAqyD6vjAXZPYUpoulev/hlVSAcn9kKLXvDX5Hn3v2yghxserY+cwKX0IrYWz/xp95KrVf4Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764835375; c=relaxed/simple;
	bh=FY3ICqZ4jSrGUVONh96kGH/GwzyF5iNvSyv5Zur2kt0=;
	h=To:Subject:From:Message-Id:Date; b=AsNAiZQaaAAo0Vd/0nkQ3ZAv+zhJVVODFUfV8qEciPoVxF7AUxdCsGUIJse40u2EJy8jGE+FW2GwMK6IfeP/UdSayUs8Cht2AqEFKO+oCkzswKRZiOXYmpHaJrv1OSuJltYqBMPJBjOwrtyan/kKiyNu61f5ADY1wKqTPNLVmTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsoVfeUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsoVfeUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD1CC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764835373;
	bh=FY3ICqZ4jSrGUVONh96kGH/GwzyF5iNvSyv5Zur2kt0=;
	h=To:Subject:From:Date:From;
	b=AsoVfeUn7/JoyePVLkrcvzX0GF17c/McIPJLIpEA8iSlVA7SRBRKKQlLEQxx2xt2z
	 b9vRA4nel2QfgWMKuXqEXIf4HPL6K0XfHY6TGh2+qsCBg86bRd+xhRPrvu/xe17P0C
	 37CEY+tjN+F8VxvIpeYT/xMZmOPIqWkdLnnvKybf2CeV4vix+hhYJfjBIKrz43KmHx
	 VrpOIiIayekq347gs3sS+Hzh0Kt3YGslxAU5pCTfo17uAqOzNEjmMzgAROZn5PTgOk
	 FFvkK+tTbgnoXVM1lswoKS+xU0TmB16mBuLHg7oBlfc5KhKizYgOL/tq1a+36Cd7s7
	 UWxsANihLMgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A310FD1D884
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483537363.7209.847337591726558539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b3f8a8c4410ed56c09b2b251dab5bfee4ab7fc40cc8751f138c32cd0a3f9c7
Date: Thu, 04 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764835373
