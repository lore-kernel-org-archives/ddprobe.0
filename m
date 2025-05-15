Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBC24B1E64
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747277994; cv=none; b=Q7iu2ild1NTJ1uFsehx/a7bIfxfFvr60oZYkh873f4wvWOd4nuQ2lGT0ykTnABzTPTU4sKB2catjNDmZ9DdwRMlemCOb6cYzRKb8V4wA46F1PPDbYTfxR57OMZXcyf5YEx146UaEtL5s6+JQ/wsdFSHm+DXNz6Af/WK6wHl3s98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747277994; c=relaxed/simple;
	bh=HhC8ILF2K635sIZpdR76WkYURWulba0pXneYW1WMNPc=;
	h=To:Subject:From:Message-Id:Date; b=fcAcC9qtoBL1nRb1GuwTRGTiBGnnpdlt7hAO5E6z5pyoO6MuYRXBluwnQZCSFD/3FrFREvN6W5HrlSGUw8xF9gUSD5jebzbrfPGwX+Zky6ZxbDxvdpRTMQnIR9F7D9tFHFJ0zUi5GMH7/D0XtFXcVmwWcfVZnwlRYN7Y+fnWzGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KympXLBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KympXLBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C2C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747277993;
	bh=HhC8ILF2K635sIZpdR76WkYURWulba0pXneYW1WMNPc=;
	h=To:Subject:From:Date:From;
	b=KympXLBNwVctUjl/lOSkCvPiIShMjjY2B3SpiNGzu1O1pNb0b5OEiAyncEojminKz
	 8uSl2Itph1K+T2mIhUEp5WLuancO348u1TkG9vc/tgFyqGXIGY557GJ+cS9ZRKaAiQ
	 1RhhsxkrUm4oS1RMLtcDnNuAaHbWZlTjio+3o+6XMGjEU0yXZYPwbcsWJDXSM10MEk
	 RP3h/IiCcHGfqXncjlLSR39liN88oxhK4ByN0i1imuiiyOwARSfDiG2PLcTPr9sA4R
	 QhFbqwodDIeMMYv+fezfCVmpE68EGnZC12+MDYOPBKhRfUYwUJowtph3KSTzwEm183
	 I53gZrYlJvmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B0C3ABDA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727799357.19068.12291116185369480419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d42b49cdd81b1abbfe8963ccfedb507fc3d8d85219c32d648ee2431e2726ed
Date: Thu, 15 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747277993
