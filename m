Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B862F3617
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757323794; cv=none; b=ro++ocWA7r+hA6fhvs8InVZ5xXM0x6c9gVmpIeStjj9XexB8/0+zZ43FgWshngYU4LSwDiUByuzxJFSsskdEL+jA/B0gOi0r9RzKBMDF1zU62Wt7h6TQsPuS0/fzV6DAq5M+Tle+wlo6MHroRDeNa+R/oJ9i/VXnh+3jmgrVfho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757323794; c=relaxed/simple;
	bh=K/0YtTKpIBZ7tJrLMQ4xhqnMLJNvGAEpx4HbogfiwZ4=;
	h=To:Subject:From:Message-Id:Date; b=q2sfrC/Pvf/nF7veOD3MdgIfZYdGm0GfdYh8I5SHZPSjQMXW4BEs2i5VajrI2/or0514R8TCh50YOekbJsWP2fo5EU98GqHYF6IyzjwTid7/TBZ9HanKnGA9w7U+eHHnahFSJ7pbXYK7qa7ot9SbmcXokYe9LqI/cN9CqJ5m0eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1IvsA2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1IvsA2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757323793;
	bh=K/0YtTKpIBZ7tJrLMQ4xhqnMLJNvGAEpx4HbogfiwZ4=;
	h=To:Subject:From:Date:From;
	b=s1IvsA2qoW3M1/cJ6gTlhIsSQCsKEj3cE/FlWsis7DRP/STimmipDjyoIMw0Q3fiq
	 tQbxMaXQUhs3O2KX/qhB0UtEswaSYgMc9z6kVhOxyAhdrwiAx6hXgGo6TaregH2CSg
	 FRChM1l0rZzXVm3AIV7P6rI7Ao9c1668KZFTEin3XjQJunxMQKD26FtUZRwL4qFOLb
	 CFUl3dTXxEdYp+XgEzUIHe6b/xM8m0PDyv0pBMXlB3IMe+oSESDCBThMagmbk4FL2i
	 XXavjHF3+NfbZ/LrrO3wCxpB66zgmFW3XP1g4FnAeCPU7R8KNvPawfTIkz8yFwf/GU
	 he876nZjmAYbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA65CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732379357.5670.1514733778304707857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab52bc6ea33d3095765c31dfd4d991edf1969e069fa7a01e600670939456bc1c
Date: Mon, 08 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757323793
