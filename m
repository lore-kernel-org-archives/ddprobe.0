Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE961C5486
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745684995; cv=none; b=G/qxkFAizdIVDDe6FaruuAB8W78mSzPQMso1t1ZFyloXNLEeErA3ddERvp8MLOlkkLqLUxEqWWrys/V9cfMhjmd5QvOjS2ycoBW0Th3cNr7T0JaIzZuFAhj7gy/63e40lI21HRjo7RyIYNLJcYRyWCX3BUtrA4OkicN0Wh/KnaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745684995; c=relaxed/simple;
	bh=0SSZugWeffgICgSMYALCmeywrfnjhIN4jR08ltB8srU=;
	h=To:Subject:From:Message-Id:Date; b=G+6c7E6kzATpGG4Ay1qfeQniIkoLSVcNe1U9ZTIMKJJfK/L80Ukpr6xBkM4lJW3NRX01vuhgpnFuwGt2dNjS7oJ3zWL7+lgE/Znc1SZit9g9EqT89Lzus5d46UuWsvwQBFd87INGzsXEqn5p7G3lR8f4OXA3IAMOhaXXHsxmtXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYdiPHrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYdiPHrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745684993;
	bh=0SSZugWeffgICgSMYALCmeywrfnjhIN4jR08ltB8srU=;
	h=To:Subject:From:Date:From;
	b=JYdiPHrdThkTabAiF7VqvdWg+0FiGcpjvC0msj/3c0Q1Yl5ijNgrxPRR0L0pFrrx/
	 jDF2rqkqciZFtGmKYrRgqcBzBP09PSZel1MiL2UfYteBf9ySaBk14G6CoJrT6jFkDP
	 wokWqYqk9V6MIIIg1gM0QJ6Y1DiE0q/ozDdAoOUSzu7Z+VdGGrKC+2bVbEVneAkX3o
	 TQV3mFzJLlDkrpRr4eH4BcCuDJtmMcMvBGP9sfObv56s06kQjsXpoS0npqbfe5cAAV
	 wpMVojlEfOT0UcQ68PvqdlADLzd5e96WtTe4TlYZFfEUDpbw3N0tBAlxCcYm0KhVQ9
	 sUdiHUA9oco4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B2C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568499357.11064.5320098933122105842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f8d07b30d094b8f85717e6b391fdd8e6c00af030744b08764fd5737d0ae849
Date: Sat, 26 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745684993
