Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45244200BB4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742722194; cv=none; b=hwKhdWjKuLHn/Gw3XSR6utNA2ardCi7JyzStc1JDhIAreEKLuw30coiRuCcij7s46wEFf1BR9jWB9Z7H57bgmA+HJ/OrFk2ekJLTcVk1qjVtY4SPSgu1UFV6hBZEep09DvtnpBREL/yXk1xQUDHsC3vGBHsoRwAbuyaxFK7T3G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742722194; c=relaxed/simple;
	bh=C9HgIpzQRrzHb7vu3Io5hU16bhab7SEdo20Ifmi+Zg0=;
	h=To:Subject:From:Message-Id:Date; b=olS4X8MaCZya/1HYOQzS7jDj71Ci++sPrQcyisA7+luLUOPmBGiu+J4FzKKQERZKET4sBFwjYagYQUtTJvC4zq0A0T+bOjLhI7te69wouJtCqHyzAYKCphwYDF5t3wM7y2vatPuZHZ9aP/iS9iwN4xK4oDc6TiPS1Cf7QilowfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVTDQ3KX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVTDQ3KX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B403EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742722193;
	bh=C9HgIpzQRrzHb7vu3Io5hU16bhab7SEdo20Ifmi+Zg0=;
	h=To:Subject:From:Date:From;
	b=LVTDQ3KX+2zpfxobgGdjzsJFDx80wKTc2FeSfo8pFroAgAkSiis2/NuoEILx7rV0r
	 t1rsxnBr6ARAyTHZFcG/ZtKaOclWkm+/GLcdUKja6l4ZcKoGYf46vup3eZUBRWhd1F
	 LlC9qPRi8Gplz2roUUadnwgKFNZP3IdRYxdluTGvIPFduWEwK5GSfZkiDqf7DBQPNW
	 rdcquwV8pcgHYap0Hpa3OvviK1DfVam/4+zxkmkn1te3eASvPsoeM9Bdor6/hHZdoB
	 IpbrxeQBTgZEVqmxy+rRIY/zwljceQyiFPYoEgQ0f/gSBhTAPa+uLDs664avxeB8MD
	 XJV6g2WuG1Qdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B68C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272219359.6743.14476907336700830525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d6438d7542572d6b0d7f98b9ccf87ae37cd740b5cd08e808dfa8210918f408
Date: Sun, 23 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742722193
