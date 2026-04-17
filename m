Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921F2342CB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776412054; cv=none; b=P6n7FaXM/msgIwgfziXfMcjqHuF3Evj/Q46r31v3eJughGgWnPZ8YLvnsxLfaknKTR6LztCmz46N5NaG/4JMyr7V4TpxbJtwbpmbovksLzvjFF8k25yOIrheLk66bBDn3+L7+Aka7Y5aIruynK3zgS5UeV87Udgo1gAQUHH/A+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776412054; c=relaxed/simple;
	bh=22msrUA32LBRvN16Pxi25MbBERSndyATa4HOAgnaeVU=;
	h=To:Subject:From:Message-Id:Date; b=uxomwq5+6t1I3w7A64lyRb54HUo2+3y2KMEk8XFMyp7lf0N7fSpekOp/BYrsSYIlM80niG9pwXkBAkiqDtKeam+DtVO2asdZaHeCTlKUCuZeaHWA+jvYal2UfIH52OBNHjOeFQrMlOyDq8gflBSksJ5u6JeQfIx8LNWgKadP1Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIUTE0jQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIUTE0jQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE59C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776412053;
	bh=22msrUA32LBRvN16Pxi25MbBERSndyATa4HOAgnaeVU=;
	h=To:Subject:From:Date:From;
	b=GIUTE0jQ7Po88+oLEyjIBQ7O37arckrji8phI/8X3SZG5UCJxheOcOaZIa3Echenl
	 sGqcHh+h4aTT2GfoCWjecDpgDG7JnhHdWfQhksDhfXYChy+XyM4MkpZfnJ0j0Jv/Bl
	 dBvtHh2DxLLVeSqV95lJ3R3OOQP9HKt4LbtvHZ3nBHA/ZRQiKA10g/qAwqKqGdu+Kk
	 Ue5VaOR0w63EeAnL6xscQTkXiOdDgbQKbazdSrfsKhwF8HluAgOpQQ81meNFNTFsFo
	 EtECkMTolm6LEFsa30jPJkfYlQTqli+PLE8GgZXtwzoK5VE5pN6lsStMQii0m/oUIX
	 xUkpUOPe9C+zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9313F8E4B8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641205368.19498.1170403083035979304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce74b955f04d186c49136528906d52481fa7670b84c562b751b552d4bfa281f3
Date: Fri, 17 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776412053
