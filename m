Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AC21DD539
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745451594; cv=none; b=DbZg44zxjIR6bzQW3sxSOtY15tb7RPouyDRKwBaD7pqU05w2VR5DPwix9RsaryX6mk4dbqggpeTeg6Uq0gFe6RTf4W2OyNzKxIZYJQeukxDEM9OidHBbb7MGbnswCa3d271z2wgO6I+54CEyyzNykYXPT0J+tmqO7mwVBYGj4+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745451594; c=relaxed/simple;
	bh=9RC59NbRaLKxKIeKgC1+BFOD7+6RTAs1DfhWfECH9H0=;
	h=To:Subject:From:Message-Id:Date; b=dVVKhtU/jdcS77JrVJDXYqrg7dz1BS6Em3QB/RqUU07mtOu40kpK2i1yugFIX+lwvqqgvoqFMiO3Z4vKYhdos6R0Y1WZj2EBJ02w+XodICQNkZebW8bWoqeFgwkfRxdri7Bx5CwxiyHoTZMrtQNXgINkQqOzUBa9mVtjX+UCa2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM3kLesa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM3kLesa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745451593;
	bh=9RC59NbRaLKxKIeKgC1+BFOD7+6RTAs1DfhWfECH9H0=;
	h=To:Subject:From:Date:From;
	b=RM3kLesaGbZ6h3QoA7H4yUQI2/GAwQSEIo443kPkwdirzY+p1KUtAREs2Z3+5S7mA
	 DZYHjDsinwfw5UbFVPi4vuCA1xh2QHzUPZiPotCb/B1GFFNEvwg6RHY16riJZadesm
	 9Mn7Kzkgjp4doJceSpMaPY9vX3kQ1unSByP+8NGJ5KPLlEtGh46boiHWg7wX/3+vUj
	 p06l1ZIf+uimth4ki6LkEGDozpRIY3m1L1YTWgXGISuSVjYLFR7XsxNGUU1BcyW8LX
	 Egjoh4e3yMhn0HgyGoWpDuZ4FHWcYY1M2ZniVTEIyLC1knQxSSJW3HoEEKjcmgfUO7
	 12F/AbCuKhM0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D0CC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545159357.6587.15650310388445751332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37254b4feb27f18264e9cc3b737d2b45ed58610bdfcd1165985aebbdc46a4d7
Date: Wed, 23 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745451593
