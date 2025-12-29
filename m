Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191142882B2
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766978634; cv=none; b=PU+c6tIOtCvcCydipY8IEBvLL793VSzhHdPMI+rv5mtMW5hWpWtVw8jWt4rRX160LtapNgrJhjNXtwtzrLqasDLq6vEtjOT9Zsrf130KK0nhyfOMM6JjfIOI5QVedOS3IIiIyeFJ1+KFSZQ5fpGaI87CHks1Fr+b7TE1EulKP5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766978634; c=relaxed/simple;
	bh=69HaepEjXrRlivoRPyJ6mXRJV8RFBlrdg17G+fkWm/A=;
	h=To:Subject:From:Message-Id:Date; b=C1EZusMurOzgl5buW8MHg/4kxkOND7BOU4K/Z2Tp08zxgtYt9B2V3YgHOUGlKkTGDbQyjvnWzGd+Kpt5eVE87ICRzPjSP68Uc7bF3PpBlsXa/+xZos0pzQL93MJ+7+cqXJ5+ucnXdtz5JgU50JVSMOElaQ4ZHf7G8q07EAfGxhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSkKEgzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSkKEgzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5954C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766978633;
	bh=69HaepEjXrRlivoRPyJ6mXRJV8RFBlrdg17G+fkWm/A=;
	h=To:Subject:From:Date:From;
	b=BSkKEgzm27VlBDqbhsonq1yGdIFbhJs2DlzmPGyKfz1qwinMcYbQ4FavLS7gljF1n
	 YcU+2z2w30ZOFdvTZRAFVENyiOzxXR5nb1ln+OVC01inyEwzO3+50zozUGi8F7Nem4
	 S+Ya1JujGGsxXGmSnir3eHbznpUinbY1TFRum/8hw44ACZ8+wMvkLSUfmZa3Uok8pA
	 GOiWpLXhpRYAwLSm25AmgkoxpH/eI4vn+8DTUb1ThwZ4N+jJLfjOsxnePRbHJXwAo3
	 lgHfdw0Hx2eTpQX5Q/qHAPEJOyEY0jtVPnsuSjOGpykK56saVN4bnGg/9IztA8nWXg
	 Aqt15Gmbz1cWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448DE784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697863359.20783.17663007685769522553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec03152b80567479d4bc6d51f0769b3a2a1dc83d54092923eeb0ad761cad27b2
Date: Mon, 29 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766978633
