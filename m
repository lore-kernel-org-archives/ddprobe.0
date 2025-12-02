Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F275B29E11A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764668574; cv=none; b=XS3OjEvRqNpma2LfHiGTItXluXBeGOlDuPUWvFGTmhLayh4uUWqHK883V9vm/a6R43mzvDPzeN66yqVcrXzPMcY/5fBEGU1fgP+3kDIP5EJFIz+jm98ZXMP2xCSLkfMQAuMzLdEPMz9/WGfLL1jNF2JXhn4nduEFnuRz3ek5s7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764668574; c=relaxed/simple;
	bh=pNzdZtJxjxkyAPxQHXGkRfThTgx4H/wf/D0By2Jo2AE=;
	h=To:Subject:From:Message-Id:Date; b=CxKTz0Ka4XmV+C1zRG5wxBTjCuHrIe1dw6XtadmyxQFWqqsseCT2MiP6RullCprYSTgd9kfW3J9W2F+agUiZnGYdnodcNGvQt/5a6fejLMKn32iGyG2I19F6802rvFWmmyPykPcAKIIQV6cltvFP9+0RLXHJ/dfLF2a5oyOF7iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tikVWzTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tikVWzTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764668573;
	bh=pNzdZtJxjxkyAPxQHXGkRfThTgx4H/wf/D0By2Jo2AE=;
	h=To:Subject:From:Date:From;
	b=tikVWzTaaYFCbfmweMRfmLXHeLPITXpFp7nEDVuaT2usAIYISsGHmbMxo23LkDUpa
	 yXMl2GMJmX9KH1L9GWQMizpQ5142i7PbgFVFgQPHHdWuPjGsytLTPJwzU1OEfgvMzC
	 jbvQSxu+bdQwSrt3AgPWlaG5ccEFvlhByJl01jC7uljZLMX6Vuq3rbfGLGXlas+agm
	 5xac7Babs6rL21EBQoYMg7pLmznMCzfMaTmja2FrAi1VwzXO9sQaF7D1NjeNjaZ/jC
	 gE+ukyCjet3cfAiGPFr1IQnJBOTQwYsbXZZ8M1ssOPNOcaubGn/Tv9KcSFcVRYBBIz
	 6xSfEQwHPxz/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91245CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466857358.16798.6429922599983634149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8633bb83bceec68665b2477039ce6e8f804c08389bced05e5aa8d8dc248d7f9
Date: Tue, 02 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764668573
