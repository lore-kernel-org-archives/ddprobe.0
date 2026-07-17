Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5499E384235
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784320714; cv=none; b=Ps8I0MiZMoGzFjuU4M8CFtT3xGJJ7SP64hgdmZmabAI+0hc21CcXd7DSBygpNVa9S10PaLiaUMRpubiRtk+hEnQZfhF25t0ATU6V5hK9P0owebJF9/CljeV1ZuDzS/trbycgJPvy9+6fsL0mkWZjIX5pIf+dKzRxfgq+H5T1tn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784320714; c=relaxed/simple;
	bh=GKK7QFKp012m6xAQ8aCre07k49S+DtBsXcxYneJzxoc=;
	h=To:Subject:From:Message-Id:Date; b=Aki50DnFJLp5PL3BCGsaE6URcPK/tg8qsZ6atvP5CDqiwvNf4Ee4GJApxZUYxz181ug30uhJTYO/vDBG/eE/JC9U2MbcaZGRVSlgGWnb9SVEYQXcEObJ0MeoIhV+qmdaxkzQuu3PScyo4tbeAiSmOzu0A7+RyWhyjo0PnVj+Wj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEPlfm8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEPlfm8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784320713;
	bh=GKK7QFKp012m6xAQ8aCre07k49S+DtBsXcxYneJzxoc=;
	h=To:Subject:From:Date:From;
	b=rEPlfm8vfUQgTqqqv1VLIaj1bZWQflJ/KXw4Fo37IC2o/YGFxvo+9YmtcvpjeRFWD
	 sqsWjUo2+FykhQRPHqIyidPuNWz2nUE6u/wKad7edqdCAcDRS0rwuoUAu634H1M8Vb
	 mo7im00D33rE+doOatOzxXtYWMwft2XONiL80Lobcg7857ENlD6cCGhNWGkoCU7XlZ
	 TZlMpq2b6QomIZYPsFlopOVPecPL9JTiGn8nnGF7NXMhs3XfF8cimhfxjjI0takygr
	 BuXWWL6wlkEhFFUm4lobPzmHKIphecsSR6gVF6/IZBjESVmNUI7j5PERJxSZW4CHrS
	 hYBmFtEBJ6k7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF7AC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432071369.5032.8534422110813730724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffaae66eef59c1483811e37e0913f5588306de9a85642ffd9f7fdae2281fe49
Date: Fri, 17 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784320713
