Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3138C1A3160
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761275394; cv=none; b=RbdQ7yy2J6eHXAzreZyB5X38HMpWwd67T7BD9etH47jSorOVaX7qyOYOHp+w5sTAfIyXDGwohAwfUz854Pt0r57fWmbwdB7UcQla9RtDPqkr8Um164WKNf/v5t7WBlbX9dxI0GhcWA4ABWIR3+BTifJ22i+CqJwHVFmN1Qdkz3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761275394; c=relaxed/simple;
	bh=UFeHamSz4EHVtSIWd4sR/1WVVsATLitDEH4BVj6FwPw=;
	h=To:Subject:From:Message-Id:Date; b=FXNFu5A/YWUGfW1jdYnmDgehPFudUMHkB/MmoJVqD6e2n803/WUWurTglsF6pNjfFk2bF7aoHS9m+kgWzLZZkvYaJ1Dbn1Ng09EMX4AREHISSAiYydaiURtozqdwZVdM5WE6FT32MpE/j/fMlCpZEE5vzBSXncJ4g+ocfUlivaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mtshncts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mtshncts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE51C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761275393;
	bh=UFeHamSz4EHVtSIWd4sR/1WVVsATLitDEH4BVj6FwPw=;
	h=To:Subject:From:Date:From;
	b=Mtshnctsr4aiFnG4jEZUzqAgSc/Phsrc4zuPrpHqZJISZgcj+Jf8vDleN4i99KkEU
	 KGgs+tASb4Qn9KkZ0PuBgd1r1ZzNbTkKnGI3l5GR8Ksrq/+eaQvgfNwJ4sgoHw2M+A
	 687ODWfxrGlKejvlKkD5llqMfVlEpcr88fixwnVBeZ1KpEAJlxOE/mP4Vits3Jrf5L
	 Fbw3MxAjmJofd5lENbvels5vDwPlMpxR+BTwh5Rp5xDjjC9f31EJioCopx/wao4A0l
	 basYygYofkqPmuOVJ6Xi1jUTQN8OAwdXtopQiwI5/M0yBGcjPELOzNXbf8XJWMYn/+
	 g3I0LbjvUZ8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52ECCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127539357.23943.7572336244914274075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebfc84bb3074e918a92f225296ddccb4554b3ba66310fddc1e71e1689cd0276
Date: Fri, 24 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761275393
