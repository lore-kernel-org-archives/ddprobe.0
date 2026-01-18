Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D154B67E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768764834; cv=none; b=CRYu4ok8Wm8HC+S4N4lFpuW95F87nArg988fVpUd615PrSdn3SjV5bEbQTQN0MtRisrJTfaYSpbUuimIRXCUuPQoPIGbokqFS3nN9bPUfZGlkTxYBj+R8+hmkPKxJYMjYAlm+OpiFwhDlQzIPm5nh9YEu5lKs00MQna24Zs7lVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768764834; c=relaxed/simple;
	bh=FaRWM5FzNcHkRTyqm+z1jIKhJ1dekoRWSMv7yM7XcHs=;
	h=To:Subject:From:Message-Id:Date; b=ah3ZBhl4ZTA26UwcUjDN5X08KIdmyf4lNpQZyT8kCtuL439etElUwj5Fm2agmn6J0dDuiB1H+yTUTsT6BUH91RLlBa8Y8245n9S3unn92ACm3ss6jLuduMt1MlOG+EyPjyppozRua2KavyWRMHFKN+AC5gTi9M9/AYnVJ05baN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fytr0uMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fytr0uMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB7AC19423
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768764833;
	bh=FaRWM5FzNcHkRTyqm+z1jIKhJ1dekoRWSMv7yM7XcHs=;
	h=To:Subject:From:Date:From;
	b=fytr0uMIs3CSc8A2OnwzgfhR8c+gDHpz7Veeut9E1ApoFK1mLlqDiaDlUw/Be0hFr
	 +umdwdh4fRrkKmMUCFJM1iMB584boEcyGfOV81xhMZTeQuzbLlzIrn2p8zU/dFncqG
	 wMKOu9VKXE0FKzmlgmkeEa5raddIiMGxXpHSljN0Ml9XkkAZR1mF90H4Cufw4GjmeI
	 55Pl9rkongbq63FNoWqOxjV102iyOvpBL5mhtm+WKB1xT7AcF9PY5Zkms1AvhhH2k8
	 Solo5b313OY9NR7sYMvDfbLcNj9U4HfaRCSBx4afJx7p4u8zLhsviG6UQG5acq6E9e
	 Jmto5DNgLDwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F122C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876483357.29199.12847196234058342604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cd3e3aae34afac01841d63c61f76ecfd2ac71386ebb1ba0349c7ae027543ff
Date: Sun, 18 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768764833
