Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F6AA932
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759785594; cv=none; b=WCvVPI163KnwJ6WqbwbhYKk4Mgx68SzGaik+UzoaAMwpCFz8IZDWRwB2Z8xsTIG/k+RPJhayBMHklw+LOS1nqdJ7ddT4d8OMmh7+jnlLwPHx4qsriijW9JtRPYNmNFFGoUZK+Czp/+5hYyoH3p3hoXOYNooFMtG77oPpP4Z69fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759785594; c=relaxed/simple;
	bh=yPeNNiCogaIECUTewPyGqLK3/qlSW7VaqtsiA8kwX98=;
	h=To:Subject:From:Message-Id:Date; b=AAib4YS30hWzfQbd30b9y1Kv+KSZrlZtPM/bH4lyG3faKgJuK8zyU7yKBiypm2fRQH+RqM33ANlUTHwQkVx1qagj50ELQkTX581F+3AUBNGk4REmpCHK923BXZXCGISbFnyomjGIMdxno5Gn6RgdIalNxlX6gz8YxZoL0owabwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUroz4lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUroz4lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7658C4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759785593;
	bh=yPeNNiCogaIECUTewPyGqLK3/qlSW7VaqtsiA8kwX98=;
	h=To:Subject:From:Date:From;
	b=gUroz4lzHhzFLU9jYOnimcnvjyUm8nVd9j5r4XJ/CCT1KobR/QJ/bNfwivHBkXhA6
	 c/tgToM3IOvnUgO1kg/Vis9Emsn+RErhTcuiw7LrUIP6kLaIU36AHWC1gQ6s5mnJIj
	 clyVgYDWQiYPacIsOVXw10vvJgxpZeydQdTB68g5eb7OeiilAew/uP+ljczl9+TzH5
	 5GqorN7J+1dBlncgVatzO5LIjG1LBubTYbatWBVTTMBQE1tgZ+UVu5J6PCkSAeITua
	 36jKVTNm8GpUMcV8bRWhRoX14agu1zdOqFp5nc+2E0ps1rjIJSHbliKwstPDqqqQao
	 OyN3u1korylGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688BCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978559358.15198.5679370171302152918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b94fadcaffc08532848b4fa51ea45eb6bc8e2b596b9dac280baf2d146371d9
Date: Mon, 06 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759785593
