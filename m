Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57C2F28E5
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770110034; cv=none; b=Txu7owJRxnzgxTWM73M9uWecm/KjOYQ4H2hRdyc+zRQ3PI0dr5AthtyAkou+Zv3AqV2qKLw6ocYeHhm9f+dW7j6vOvpPw32IzIaM2DJn9Mh0UIScWOwhLv3L8VgzWANJw5IGmU13Q8yS63Ff2BLjsMnHL6hEbc7KgMCE7j5c6Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770110034; c=relaxed/simple;
	bh=Z7nWF+7G9Lt88iAnFTCBsTmWIVB64HN/Ql+2SGsIZzY=;
	h=To:Subject:From:Message-Id:Date; b=DA5cLs2rK8dzAeUYDpj8lI8FrjNJHRqxDIRi0AJwEX5q1Xp9Rn2FCDUZeJ/WrdbFCJ8y8a0biQfgxCE13anGFIjQe9QIRLxZogj+Farplwulj6unHD43ARc26zy5BDp4t5CfrKX9XeNQYujxvb6FxRjgT46P8QM/su0Da4EZm9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE6vvpjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE6vvpjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEC0C19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770110033;
	bh=Z7nWF+7G9Lt88iAnFTCBsTmWIVB64HN/Ql+2SGsIZzY=;
	h=To:Subject:From:Date:From;
	b=lE6vvpjm1wpmUUU/9E0ydmDgu4MPsMz+FT6ONxLCVfNo6zgQCyAO9eTo1rJRObwkA
	 IcBGucKOLnDOZnvNvHvRW6Jk9Dg+vwauBap+7a4odOwaR0XJsWcAgI51FAClCaugoR
	 WLlTiw5OG02vh83F9myYQFxf8v93SneS8cOV27gyc6XkqkJFGx0oWUsEQhyrmgkTRp
	 KUILNpTcVt5kvDo2nd29LWQb35rKDTUT0NW08BM+Y6N8KTSXBdeVrDbk0qxnPvPcs0
	 WyCdYorY3uRNA9ZBU6PBBeE81aTXk/066dTu2s+JfP9nNNp4s1uLOiPOWHF+qBqFGY
	 D5Omj/tiIgR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995BAE83069
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011003361.2800.6915648976798023387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695fe1411f2c3a29aeb3fb90e662750b7e30b612b3ffe1cc7cd6f2976d6764df
Date: Tue, 03 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770110033
