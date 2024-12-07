Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F3422C6E7
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733575554; cv=none; b=d4WnZLbh7qTOukY6r7UcKao/W3DpPQqEHuDRKhQ9N490DoahpJKZSoaGTj2uRMGS79sYR29392KotslJAbLMgKoPKv4jgIpCUJx7EG5WzCetfbZGgQYTYLraO3zXHW+NfRIYaVBSsLzAMlINgI9N/hidXEJxK873m75+SdG8BC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733575554; c=relaxed/simple;
	bh=YH+JnjPkGGnF5ojStH+PkLF+2vtAK+Zq1ecGTbLAbO4=;
	h=To:Subject:From:Message-Id:Date; b=SJfS8dQKCD17PksIL7jqdRGjDe2vQ7wasnA6qIM3WxIZFGDAtYy+hGj9ek8P9L1OHXZaUz7LCZZH9Hs6cBNc8cJUdCPW5tivTOWGnhzPwgHsR6lY6oiO4M4sdvK5p0snCKmnqBhPaAdSGunY3zH1zy7Gj04np0xY8nw99MTJUWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy4mdjmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy4mdjmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB538C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733575553;
	bh=YH+JnjPkGGnF5ojStH+PkLF+2vtAK+Zq1ecGTbLAbO4=;
	h=To:Subject:From:Date:From;
	b=Jy4mdjmDw34OFh5fyToxcSg2icTL7hsX9gdGJ6MLS+GSh/BhJS0duWc+UUne5oaPY
	 x9KIWHMeueOIVx4ICBedZTHF+XhP4klGCLuMZZE8G9fYtlQUHJ9J1PHdru7uZroJp1
	 ZakQTJtDBwYVgJuGTyeOvpuPzYW5fjcpuM5IP6To2NlrXLrWTgZX8x7VPv+h9yfQhW
	 7zsDTSqdlozc1U3eggROfj6SUCCkjtmOHmUP+ZSKu1ssLwtXXH9sNOluKMFPCJItSw
	 RJIhxpfKUgShXfo63WAENDH29+1dhLZQQry9snm6S31Pis01aEcPDRvCxRsB7a3UKX
	 xmHWLo6W6eqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4799E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357555364.15428.14323133554808973542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c998443e334c4f4a7ebaadcc87c45b7b5416a7efd7ce7554a1cd7c82fad0cc
Date: Sat, 07 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733575553
