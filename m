Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3839A19EEC2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767358434; cv=none; b=fy60MqfgZ+w9QAhvieaX396/asYSXGM05y4CbVrise0euS0joHhqbzNKIO/986pdVvU9vBcIhM4EmK274QAmrcPIEWSD/ko6jTUoSTNpqDYGw5w0lwsKRk04/bsiiQriF5PzFk34UtmekLovB8OXn1froPaQXEZke2Y9eubcrR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767358434; c=relaxed/simple;
	bh=9g7luE+oR/20fkDLQ62+g4rYhKwTi+dPEdcHGxcP0vA=;
	h=To:Subject:From:Message-Id:Date; b=UF6JTcxtAwYE5W4UWCRsPgl+6sui8EfbX4YpWOh8uEpI59aZp0onrI9Dnxvl4M8K0/bMvK/PlAyraeQG4j1z0ogIBIsFS++tRAz0N5KcdvoBe62TJCZcVNNSJDX/Nvr/okVmX3DbbPGcIDp07rEYkcJ3p6nFK4CZ9MvuTBajUtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4kZ181A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4kZ181A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B427AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767358433;
	bh=9g7luE+oR/20fkDLQ62+g4rYhKwTi+dPEdcHGxcP0vA=;
	h=To:Subject:From:Date:From;
	b=F4kZ181A6oAaKxzOIuaNP+SrXqmmUaJVnyIWouxaduGVGJ+3/UuheAqp7q4tVJtev
	 evpr/x6mws6EcN3OK6VeWl0YH3Cl90hOtUDEpidJLVMpqF+NFwbjEYkHdLv47I6A/Y
	 Nf5qZOpqLpV72qEXXxH76XaX9mBcZxaHcXrKqZtCcsl1b2svm1MKbcfwPk+73iYwvu
	 Vi/RDFMGdmDf7j0Et96zjz2vr51u9/RKFHVUlYgIa+7DWvz1nn03dqLbsv+GrRkf7J
	 zVzW8ifxRsBDwnSLnSEONQOJhmemtS+Z92c+v54MzryD/WMmUT6q2yMBpmwa3ZLn3C
	 QTOeCuU66xuTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BFEFA3744
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735843363.16576.2228328420090799956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecd5980f9af8e89c02bec9f00d49d4a8b120ff6be824e66a61b3ff0dd2246bf
Date: Fri, 02 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767358433
