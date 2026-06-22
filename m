Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887C635028D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782134194; cv=none; b=p0qnTkoIwXsbK2c6MeDysFTxKvAhAnAL3WXnF6DNyHDhsQaWIbxmtf0KBHWu9ctAhFVVGfoV2DiOAXQzzO/TFYX6+msDvl5PB9OPuECyIDA9Y0ueXhFwbMu0dWLIQO+HrionHMT6W+7LkFp4g3WmUB2IYrofghmByauQy+aa0hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782134194; c=relaxed/simple;
	bh=4/TtHp3M/UApTRC3EUO4RW/NO8zzXzXg1Z+1Hp7ShxY=;
	h=To:Subject:From:Message-Id:Date; b=ZHHg9x+YhPCzkviGMJJ5OtpLC8hg+iR3Q7jd9W9kAQm2Wt3OBN5LxIhLjRiTDl39xRHk8nk3t1XMCmun/MvRGpF85O3mTZ9rQ6SfdzUSZdfLKSyB+XiBUMfmJm+q4Xmw6w6kktmmC4fAgGh9MwoT565TrmFunkHpxKqyiUMbUgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6PTbnbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6PTbnbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FFB5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782134194;
	bh=4/TtHp3M/UApTRC3EUO4RW/NO8zzXzXg1Z+1Hp7ShxY=;
	h=To:Subject:From:Date:From;
	b=V6PTbnbWNpXgI84Mi3QoWYJ6Gc0WjwYBgqxL0mUtw7BuWj+YDcjsa2zv5ohYhlz/6
	 PVT22LlDaBLYdzyFonruGcb+XZfyAeWjv01wowqR7XgcvmQeRisyye5jGAZ6Q1jfdO
	 ADY9bYxxF0dXpBVIpe+D+pe7VFwEd4+eV3dbhFiuG15eXKkR9ajY5/fKRDO4OgQ/w+
	 DE8Qc/P2hmTMFi54oqkyJorEj4mLx+H0DjwneVU0ABsvndgqLRkvXaMO3GoHeO8zNy
	 Ego27DJqX/lLxtJVyGeT4g4pVlYteRKWKeLFspw0f6XczzMW9ATWQcUi8dBEcpmydp
	 nmQQNmCbVxy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0677CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213419380.22296.3777163534036402215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07b719d81ba285a3939fe8840e5d5ee6eaf574d90b04172fa66a845f25074a4
Date: Mon, 22 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782134193
