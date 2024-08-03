Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429EDEEC3
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722725154; cv=none; b=Y1oKDXqisD8GxSEbe8zHh+czDF0iVjklBtMftAiJAY7AgDIOLellZdGLjvcQHyrzXkKmFt5yltkDRl5HMkFV2GbPFtAlkEYdftOEGRo/UUIgCLveqayeikusDvH1zO3mNaTKpLVQxS3y2azzSsWjnn3yo1fbE7WReCd71ikdgKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722725154; c=relaxed/simple;
	bh=JUiI0xWUI9FcgCBPswQwUfrKkOQ0sTIaeVLL5gQyNmg=;
	h=To:Subject:From:Message-Id:Date; b=LpJpJ1Z9oJgxkVPsuO/a0yNSLs19bx3JxJ6cxtq/52qBIl0JMT+no8h+kae0ivtPW5Y2YraZ7BcDgTE1+moNcH0J86SBHL1q9HGYeX744Xf9OzwafcDqWd/CgJlIiOSH0dOpJdfb+tNmKMePalslBmt8QfgWmNTMHbAdhYjrCjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjgJAIdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjgJAIdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9830C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722725153;
	bh=JUiI0xWUI9FcgCBPswQwUfrKkOQ0sTIaeVLL5gQyNmg=;
	h=To:Subject:From:Date:From;
	b=CjgJAIdhw5p/27ifSV+t5kFwxgKRfN0dA5J69gwZ3sA+ARjqAzaYnzhMehOeLK215
	 9IC8jwNfCGAlkmP/CWVByoE92Z2f6cu4bIez3PO6mu4oB/HpTKlTwKZmfPmJ8IbH0X
	 tk64ErCbCXdVYZGgiu+FQANRtKen7H2/HwKPE+kqfnhKd2ouc8mefwR1zPiQ+9AeXE
	 JFCFuaWHgWJKSB52mLdeeizf9oqwo+mwxPdWj82UWQ2Jvfs2xGfQ/UiK6C/g1SsS+H
	 OnircuFgZ+D1D/FNUttZWaexZ0pvQmSMZGlqoVzXR4dg5fYekedHHIqatCiN0KSr7d
	 2GUviud4t/FyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED5C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272515363.19229.5628797584312096428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21791da71687240c25c9c039780fd0e2b5c69a561a5fee410eafb9becc2dd7c9
Date: Sat, 03 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722725153
