Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A350266EE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786451434; cv=none; b=DAAJMynR+TAYCh/rm0Rp+B9ceQONXgDsAzX/Dhb1hDdAg4W4F1DNkYadbf+DwOqQHpscf9QI3ONAIdm21NT94owu35QlTTQhiqRJUazUCP1vjS//D7jL5yOGUC6UVe8C7xdSCszvYbV8Duotoliy9EBumbsko/xCFC7jyAZUx3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786451434; c=relaxed/simple;
	bh=Gq/W6jkCi9MgJXNXmM+CVLMyev+vaKhmtePg7Gl4QWQ=;
	h=To:Subject:From:Message-Id:Date; b=k4xhUQ7cnZah7k28qQmx4DE8mbSJLAocd4HFxZ/Cl6VDCmSE4q8N8Bmlp1iOT6StaAAN4TweP96mYPIf1Sm5XpwG929ldnuiaYEMK9mIR8Q0vLlUrsyz75VT6NVUD8hR8+fYYK2ssNbXavrKP1Ik4TQBlG001MkVLJxfKPX0XEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1mRmsPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1mRmsPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A16C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786451433;
	bh=Gq/W6jkCi9MgJXNXmM+CVLMyev+vaKhmtePg7Gl4QWQ=;
	h=To:Subject:From:Date:From;
	b=V1mRmsPJ6iJbKRoelVaJZD4bzgmtaq0+iL8lpWwC5O+irC8Zc7hichGdUcVsqwDVn
	 CSr06m42F3a6/gyNeRKVQJoll8B0ec9I9rSy9TmwSW2C5Z7hgA4cydWz1hpWfz+EJy
	 gkckdUe7KFCkM9IExVPRZCxgEVCnAyjnJ7tgikPd0x4Ko1iZV4TJL2kNxkP29CePqB
	 ty98RiGhKumjdLXJq/SxxnT54I3EPKYUvUW3ImTAFW9yA+8hCfN4KlzCtN8qFJ787/
	 bdjb+DRyvs12r1X+TtKFkH0SDYpaLti5TgM5yWw3j+JCtHPxhufgMVvJNseDdQDdEb
	 /3FWHyd9tPYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16B4C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645143370.17868.13042053445375778407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1745d838e984f06646cb69d2cb3b8cc962f5fae7e79bb2abea7f7c8febd908c4
Date: Tue, 11 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786451433
