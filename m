Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20511343D85
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786018834; cv=none; b=TiNNoF9gwRlQYAF/BGwSfDaZJdd/NGsu4CH1KDrudv1SpgWZ9egLpgIGIJV0TN0jVbQpH6zgOvCR0zt1QSLbZvi9tfsP6hBv3eX1Q3HebOZFlWoEB4f8/+wBgd6Oz92uip0Jqu8LK1B1Q99MJmMdBPBBX/qTNYRc6n9B3044Wuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786018834; c=relaxed/simple;
	bh=6eaD8fJRcJknl+LrJcgLu5uRG9OjswHLRhPwiTMQXpk=;
	h=To:Subject:From:Message-Id:Date; b=JNLInhndYrm/eSDhb4gdq3J660n5w7zScpsClxPwaFo8IIQfMCnJvOj02FMRS4qwfsPbxwxyfKj+S8cv8/V3Xh620eNColEQqQ6voZ/x+t7lC1sfTTcwvoCNYOUGDlJAGqEdNHcF/qYdQrjxeNjWRcU51YwiO9mINKT4jCCkJBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIgbobFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIgbobFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5B0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786018833;
	bh=6eaD8fJRcJknl+LrJcgLu5uRG9OjswHLRhPwiTMQXpk=;
	h=To:Subject:From:Date:From;
	b=iIgbobFtoz0R3RKSICgw+dyM0Wz7lmgUy4pRNWU+Lxy0DK0iQgANRNfsKCN+swAfo
	 fcHPYgykvX9mGkLvAQmOicIYK7quaK4s94hDp5NoPDXPEsA+ZApO4mGSOKXlWoxPYS
	 JO+8MUuZlVh9xYpt+hLg0kiGE0gOPh2o08SZSwtN0A147f3hqUFCutNAiSi6En1BOD
	 yuYxGaNKzxSc+98MjLaZ4xLZZGGNlSMVXTBQT31TEFPC8h48SzSuRHOf9zhdMem7RV
	 cRWnoVvJ9HhtKpB5BrLHrHqkJLKvyO84hUg3Gbuxv7igl7a/SCRZRGLKCuNl7IDZtW
	 dzJdr+zR/zt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5152C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601883373.19790.15726347131909047874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9a48e89c665ed9b0fd347928f2c6d689bf5b6b9970ad8259abc3bc8f83583e
Date: Thu, 06 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786018833
