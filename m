Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178163D9E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722275754; cv=none; b=TrjlpA4E0a+J7e3n3SgGWURUrM3eyjZbIRNRm0+mOo7Li/0DAMGyz2zzlfgAN0tIrW3PmRku5lUtQuW7eNuxLGmElu8LhjCqZXY7oA8bOJTjRSUzqWJsRSAgqwSrS300bqXJm4wFh21rxvprr9unatUDihj//OIfhX72424G10o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722275754; c=relaxed/simple;
	bh=y0dAFkPBAmQpaPUC2IB9xdn555bUuto+Mmg7hE5fViM=;
	h=To:Subject:From:Message-Id:Date; b=FfqeHpmte+jOCAZoQB3C4+wBC8B+tdQg8g4GsAI5tNTxaebdg/jLQvgThMj2XQ5nms5/jMhkUKGU8GXETtgzkGg6b9GJEoDrzV82zoL9R7Uifow8SwZKzVfNoDnhSote1fDUKl2zHP5lVLODuXcZ7EEmpC+v6+zvWkZhZtklTOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXX6p07f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXX6p07f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2AC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722275753;
	bh=y0dAFkPBAmQpaPUC2IB9xdn555bUuto+Mmg7hE5fViM=;
	h=To:Subject:From:Date:From;
	b=MXX6p07fuz96JgeCDNc/eK0/a2pYTEvpXtk+H0MGbbb4DQWw2XXvbrMULHZn8GKjH
	 odg98q4yTAeE0i/7EoTmfmH+jnN/xTsPfzKGb/7hiaVn2Y3U7sJvaK8h3XMCCR9pYK
	 4sgxJUjrFkvhM0D5QJQex/dG/bFgUCb9VzHcWuyyoLNGz4Szhk/VtafKVYUVTLhy+v
	 M8aSLvoOfY/dLp57zG11UnNqZzYqeBiaKnYtjuMvBjsXvxdVyOkDrQ/uvgkSyLF/PL
	 s2PQuy4oigbXrs8BICLM7BUXWDqCsvV9fS4vMiPBdL9ctrYIayq9iu85afz9804jTU
	 8mRiY3HO+2Y9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CFBC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172227575359.2550.9444929521342788626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6c2224c30e38ea41ec783ecc33f4f0e89d5bf1459380b47b0d7f31fd3fd225
Date: Mon, 29 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722275753
