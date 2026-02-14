Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335D42248AF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771112694; cv=none; b=ehCZQU9biUVWkk3kXG8qbp5e8ahFp+TT8YD0MS7/uNfn8jttD6vDydIqKFUPhBwd5rh7V3xezrSUX7e/Ji9v5HpZ+2jtAbPdwXkikuZP7JfvuBE4pL94L3dfb9OMUxign6ql3ilw/b0M7MLAkREbNNDwQOHsq0jkWnL+RHG4imU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771112694; c=relaxed/simple;
	bh=TxniieuPxkHQIbLNtd44whY0YjvQ4purwp4oKuIQxNs=;
	h=To:Subject:From:Message-Id:Date; b=KFWw+KvNhaaLhzoe66iKx1upwB67OcTk2Pe0TINnCamwyyO1HGRZ+obMb5+m6/W48HuQVf2YRfDEa5jKmfgghYzvgkMPA96jSFCV+QpubEjr5hjPGnyG4f+8Nhn0mAStA8omNXOTFk6/+QLLR5aHYeh0VgYS6rPNI6lGx9LBSvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilZCKj1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilZCKj1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9707C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771112693;
	bh=TxniieuPxkHQIbLNtd44whY0YjvQ4purwp4oKuIQxNs=;
	h=To:Subject:From:Date:From;
	b=ilZCKj1URQp0lTMFq3s/PIAc2mshXcsx992vaMY3DK82DYamBkOBTBIJra/15FAGo
	 HF4rwO7eRNXFVyz6RdXTXoDP85YeBzg8rQonSkcB6AIDCag8hm2QZ4zaUQff/1AEsu
	 08SRu0kOXlqWGXLGMxQsko+QoOno/uFbfxoDCpLG+cm1XJpoMNybgtLMFfWIqUOoWE
	 chE5pqw46VjTkc/T+TK5TJo/x0EjSyufCyoxXJbSYD+JK3fYLQTCZUl/rbnznsJ8z2
	 +BZ9Ec78BtDuXaDyN3zy6dViGQtNEntkq69JC/w7siwhBAreewrM1Wm0Rybcf72Bsr
	 qqL6bMsVZ+zgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29A3EF5858
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111269361.28534.10671459035339686573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf60ef91f2de913f6cb01e058531fbe7b01f7761de3cb05573822c5a2f6111c
Date: Sat, 14 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771112693
