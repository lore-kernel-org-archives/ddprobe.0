Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B284309EF9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769234; cv=none; b=XiwlzfkNTAzL44mRB6zsjUflkVwYu7XC28HW2DGM70h6xaaO1ucS8KzuSrUZHRwJOWD5eSQiTXy4zYwzS1eJCibbPMCmK9cpReT5YmwDwA4chYPFubQBolOdNnw2XJGZmtvI9QX2Y15KW3m8qEC9kj233T9VN4EO84IJnktDLTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769234; c=relaxed/simple;
	bh=kf3vngN2J5hgQUQzwkYfGkQK8ByTejmJ7bX6/9R1yW0=;
	h=To:Subject:From:Message-Id:Date; b=CoFT8EQL5H+cWCb6AuofOgvNZcARblHJFTJXAuhubapbGIUkjvzXmdROA8bxX6GZrIyugVIJLND4XluNISsewVh2teOdsABLNXKuzUJH5iRjknA/wPS2Zu/wYw6D6476JecPEp7R2rLdmtbnD70IpaEB/gFzpOnfxGLK/yO8XZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtFd1vlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtFd1vlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98D7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769769233;
	bh=kf3vngN2J5hgQUQzwkYfGkQK8ByTejmJ7bX6/9R1yW0=;
	h=To:Subject:From:Date:From;
	b=RtFd1vlgdLyKB5PIxelNR2beBl8ii93SkbIaTd8vQC40rGQ4HUZ/w9Ku7FPDkmrZG
	 V+hVmrG8GdEsMH7mLRRneSRpJRu6MqfsPhYBwSyDH4Y0R3errMyY8awYH0qcoLBz04
	 pBbpDDx4tqL2ruRfuxrWJbpaxi3M+Rf031ELbdKUOsyvrWROSA/xjUkz4BgHySfatq
	 sck4FVT3LuqsoVRFtFTjfLg5nySHb+QSVtzrsoFWRKVMd1nVJ4UK/ezBVaiidXm5MN
	 svvvHKE4aMfrzVaCtxovWW0fQbJ7v5dW/D2kd8te2/fldj08DyeVmhttlIF0EZhy3l
	 XlCC/QQemFjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC32D49C9C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976923358.14516.9947849177399071323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1172fd8187f5f41daaaaf661852ff5115c82c72b369df0988a5beffd599d2234
Date: Fri, 30 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769769233
