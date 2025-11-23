Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D8433EC
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763867514; cv=none; b=JX5PTKgyct5vtz5QSImJxlEA+oKOmvxSfTrQcGyEDIFJxlHLYpDiEtjZE8q//Ct6vh91t7WPoxNKAFIi4OND+SMHiNXEa92Vjq0ofGW0kSns25cTbt/6ETda0XwxP4SGQDhFgSlxuFkmsWpZI8vBl116I33mVgWvL1zPBzTMXVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763867514; c=relaxed/simple;
	bh=zjIorGFQoaT7LUp1XodZtgHhf0M9/rjB9xIjJnBt7QQ=;
	h=To:Subject:From:Message-Id:Date; b=KvZsZYMUrTMqfIyVpMACLlvWYQLiWJhGv2mtYFbPVKBSZ2DHNKhhaniqX58Bh+RG0+0DIoZbwD8rwny+1a1k9pF9Ju+Aj3s6VI5GYoFtzAXfY205+lVlKCZThCSiVcLk/AhpPTbPuAh0GJeJqIoHCfHfGn0JSfiqpRpQ6MsrVDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPFLFHap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPFLFHap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD05C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763867513;
	bh=zjIorGFQoaT7LUp1XodZtgHhf0M9/rjB9xIjJnBt7QQ=;
	h=To:Subject:From:Date:From;
	b=KPFLFHap13H67/lkCnTNPzsQgJK1X+Hw46dLI3qOKpou/Zk6XLZ/jQNCpHKmF7uq0
	 JvAgM4p9prKmkileGZeyPW9ei41DPVGofTbxgmqeWSqRaiQ7wVlj704hwcY5GaP7VN
	 uQhbnnBJkftbVGkvSPzMAlhOmX0oXvI+7Xi4nu0QuqDqhqoatnG27Gjz6mPtyFrE30
	 BZe/k+bRCKVATmmpNFrDGb4kHhhiac+P6HaUrWdauXG/mbTJOLD5Gu1S5Q2rsMoE7+
	 bqHt3fQqcYJ7gWLNHOJ1TTgj+rr4GlGU0OfBPYBoQdC5gZJgAEPF0HcOxkocjJ+1Ka
	 lJBd4OKnFX1fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B5CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386751358.24374.12522213539134683410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047cad4fddc74b5af94f5e2a6e18dcebc4fe0c5b2b34d0d6ec1d9b0bde467fc0
Date: Sun, 23 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763867513
