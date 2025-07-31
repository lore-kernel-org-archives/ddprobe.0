Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5952A2376EB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753928394; cv=none; b=o/g4iFC3r1kdXb8/Nsgwj9q0OTeiUZSNbxg2nE5LVG7NgBPDDvXemMS+rngY7IlQC2GNk0rVYLax2KJQO1LQtUEZawaxWnmBKanwkrCZOvEsuk6W+2TtLwK7AINk7dZ6Hkktu0KuQL/jCpRs29nxD9sNo2jYHFRp/KSe9MMCp+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753928394; c=relaxed/simple;
	bh=a0EjBjFNzTOeXw4WU+JXiitdL3K1bFvwYwc5wVHWvMM=;
	h=To:Subject:From:Message-Id:Date; b=hHevEe/PC9m956zXNAh11z4SHgLMi6NQDXZrOSLNCnG9myAw8zYu98pm7igfG1+/QaNxmaU1jwuM2euvQzZJfD5xNiHHNmH/vxoQfJosXenfAMs72+lVbSVGFfovztK4cfc04j9ZhKXSj7qqgfJ1XjD6uRqLxtVchAISQrf3XOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kP+DbM3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kP+DbM3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3502C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753928393;
	bh=a0EjBjFNzTOeXw4WU+JXiitdL3K1bFvwYwc5wVHWvMM=;
	h=To:Subject:From:Date:From;
	b=kP+DbM3PevQqG44O3tusK6XW1YkdV1ZkarFQ5rwQZ7JF1SoRW5zZdyGLoYWHkVFhe
	 97X7N6Hox+QfRzwroHbMz5tlUJN+I+rlnDh2NzepyZe9lafQj7Tp2stcTEltFO+0f0
	 94elgHwhWG+KWWl4BhvYvn3l3ymbA02NQ6uWlSem/wux1WxZMKaSBV8plyskI6fgLY
	 gXAQJKzpHO9K+GNGGl8caT+FWFqtnXAunSf7VLwhdCzTMlAiZoBov/fwSq015DZus7
	 g5EDx+yJqK6l5jbBWdarrrnNmBn6M6bJpKwyzhbS/UMaVwflJgGRiAh4H4mmwoJP9u
	 dmkJsLI/tpaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C7C87FCB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392839357.19674.1800052374005757018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4811cbc62a794ba5d9a96b8dd9a819f4a9fb1a1086f0063199a01f1ed868231
Date: Thu, 31 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753928393
