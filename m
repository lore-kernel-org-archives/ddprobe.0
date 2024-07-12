Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E83129AF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720750643; cv=none; b=ZaOsqXRlslCB+K4//1FRNI86cTBG12a73Z+6xBq4d2bhVA3vzzOxK/QPMDit5uOfDGgMyqDsIUOmw7MDMkZcmJaQz//azMtS2dV1/jZRCzOX6HzxFH/ygauPZnPoHuLVU2KQ9xR6pwIPjetax4Kp0J/jCysc89Uo8Nv7Ri3GfIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720750643; c=relaxed/simple;
	bh=RlwM7rda9edzB5dtRNk4e07N+I9gLUGQmzu7trvBfaU=;
	h=To:Subject:From:Message-Id:Date; b=uqgd220iLQL+l42tg8DPQ1z7xkZ4+n0iUqm+98ZdoIZQ20MVOUb1orIYu6Igj/v0ju4vgIUhpU4nghEBx/ZHuzluCxfYjnjKOLCRGrL/Z14so9rJncyllYYgY/QQlV0u6lfp6mea/Rc64voYSGNLTP6UBh8ed96/OsA3VObx8Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nf/tMalC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nf/tMalC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F70C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720750642;
	bh=RlwM7rda9edzB5dtRNk4e07N+I9gLUGQmzu7trvBfaU=;
	h=To:Subject:From:Date:From;
	b=Nf/tMalCawrrvuuEazA3CFRC9REjDHB+6SzdXsMm+o5653oAHJqPXMLHQ7YSgU8t2
	 DpnhzHztDqrOKMIG8kzo1YA0rzcIcVonbl0AbSWtJ18HgKI+CYY1kY8WarEPV1ke04
	 la7jljHxHuEGdgrhl/cCs8tbeWlhnnUbgaioVt1FYwQg8fdYDuEzgnZPpLQ3QL4V3l
	 EZPqu7xJ4rgvHsGaS2VSAT4xS32KFHWJVXGR6U/SVZrLlstclFqtMzkV7M362G+fCX
	 JqoMAsXE+8mql+OpAA4kkhXh9Q4V/QWUYdbqLsYM8PspFkbndXgWoW5b4PoXiW1Ipr
	 W01t3KhPavonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0515C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075064276.25020.3798285969264853727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f780c611f2ba5a609d173bac8a176f2d943f119cdfc9da2b05466b39777c535
Date: Fri, 12 Jul 2024 02:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720750642
