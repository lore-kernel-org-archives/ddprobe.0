Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1784831B10B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781354194; cv=none; b=syRz9uc8HEHTqXH78eqpMs+S8qljw22GgQofoRGdeSNH4EJfdGsz+wsjtiwdPCUcf249ileyAEYSmdwOteHRzI714wX4Ev51zux0w6epSFvODucEPjLQsQnZETFK7ddDBAk8Z0r/xVy5u3Ah7j1OWF/ADCacRllNQXfdDvdIPCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781354194; c=relaxed/simple;
	bh=G2ylbInOw1Swa2+Tg9q1P0k7il4/QxdBCiNy8QfkUqg=;
	h=To:Subject:From:Message-Id:Date; b=gmKIsUpg4qa7O9++UyQLSw0AX/a8xTK0hAkOTI25MOB+MTAfimIBcF9BqavN5rKsEmNXqtSd/DHVUMJluo5F3IU9/ngRMzIOhRuuF5SehuqQ7QbWZaGkhqZC86DFGOBBE1a9tE2dH40AkGUoMHH7zyHuMVAOO6ohNnh6VLZh77I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb1QTj7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb1QTj7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C0BC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781354193;
	bh=G2ylbInOw1Swa2+Tg9q1P0k7il4/QxdBCiNy8QfkUqg=;
	h=To:Subject:From:Date:From;
	b=Cb1QTj7oECjUoBBLLosAqxlw3hNfC0uQGIzlaS9J8y2/4XZ6rDqHczgQN+PeWCjE+
	 oDXhY+sWd1Zh4bcYsxLlcocpf/a/1Od+AV+uVuIABfx9vAIPbudHmdC4KcaVyFj2vA
	 /4Mto0qnWC2K0eZx1FoFdxKssQT9LLjPyrDvobW0U1Y6Fsr3Iw7mDsCVc+XGbpDznH
	 lbqvlxWHVmTSSbdEsxLWdVlIyYtbYo0iMsQFXAGq3Xsrq/GC2MrwJpUkSuiNNbRHX9
	 mvcx03ErL6dLXZIXmZR2790YtUgQEtrfLVhR/HFfx4Fo6D8YdN8ndxH5rtVcGKEiDF
	 PsXpTnOnS4IIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB714CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135419369.31128.8812018324817639609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb76c5c70bbcc2f2337788051b9a4f42ae7b90e9b9af24b66b5e62bd2fba8f0
Date: Sat, 13 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781354193
