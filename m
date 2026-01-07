Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1551830497C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767786234; cv=none; b=IJ4H8NC0X3bIJG6tp8A5Lr7+U/f7rYDx6vWt9FQeElCC3UgzvNkzckcOAQ8dQGpCcKoX7oJt9shxl671bt6WSI5uZ4EIz/GcyrHSvam0YH37tXJ0VHSYo4fMTROhnGmRMVlYhWAb/AKG/R8YbqRrzGkNoEsbZhYY93gMKWoKSwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767786234; c=relaxed/simple;
	bh=4mknJ6XhfxSLB7feGM1yEaNPzQhtN7/lRVoF4Q4/yAg=;
	h=To:Subject:From:Message-Id:Date; b=CnqCEsR3PQ6PutFS7m5/pRW40pgE9mj7qmOd+O4xk6M/dYhxPUeQ38qnFk61SXNI4WpDfP40o7Jyt/DxlRDrODvVv/kodmSji9LVErnxiK8KG/0o07PbOl5PYKygK00i1ANJvT5Sd3KVD6hgiOGMAqle3J8fOMRcn3G4Z1rBfO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwDF63m8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwDF63m8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F891C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767786233;
	bh=4mknJ6XhfxSLB7feGM1yEaNPzQhtN7/lRVoF4Q4/yAg=;
	h=To:Subject:From:Date:From;
	b=nwDF63m8gTvgnHhoiDpC4vXmQ5NFihePIBfrCoMwqqJFqNS7o6EcnRav+jTFZjONc
	 zaVjQvkQfU+ReS239eARczfnmTl7+IUwoxtuuAtIgfvaoQYbH5KXIS+lzElcGb6Ykj
	 CMrntG/uNvqbqUUM9D0P/EdM3u7oYU0S3yQMHPpIvvPPiPQF/hrPl86TecQcJHs5qb
	 7B1O0PRydEmCX2s7lekIqFi845+5nAKRTvgH1Jo9LoEn1eUuTv86vjkWLrYEUspNNu
	 DwZ5cerJ6SaEjYY/uuYhsMfpsR6WRPSCxK6o+K1TL79uB+mRBvFKcPlhErAxoSZxLW
	 v4Cso63h0vLjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8FCD585A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778623357.30830.16523470847964975239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb1b0bef31f40d27be4f23e937ccf66b4db1cbe5aff97b6b3ce5887958bed85
Date: Wed, 07 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767786233
