Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590CB21B192
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787118634; cv=none; b=pfEhxzrIMoRrxcyFRSgzV503clsjMaCGqntZnH14PtxfdFV4ezJY3hbolhKE5n9TneiB6b4KdWkipJDyGXAQS+H70WNPl0IdNHYZil3tD0g85sj86m7OVOCimBKtzTNZmh30h5mO7QjeHtTfi/Vwq0ggTYfw/o5hdBNVH1w9J04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787118634; c=relaxed/simple;
	bh=GCBaNiKEcY35hamnmzEa8RIc8/7NHjAnP6KjR41fC3c=;
	h=To:Subject:From:Message-Id:Date; b=Av7dn19QYIbo338U+V5fW/cLKV8j/eimt2Qs2+V+fEuNXgvwMJw31ZhcZNve+TuTjbE29pqUlEpPfI4E412DYoqgnpQT24MoeyFo3Oa5cNkhtw0hkZHC20CQsaVgOjqTZsfpS6GVWlQ4FehZxhCiRHX/3JoY5kjIKWOSYNthw1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4fCqseW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4fCqseW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D076DC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787118633;
	bh=GCBaNiKEcY35hamnmzEa8RIc8/7NHjAnP6KjR41fC3c=;
	h=To:Subject:From:Date:From;
	b=P4fCqseW40XhdUSibRFdgLJy3FWubpEeVwe3K7R/v+W4j22I2zlEeNfYwlm8BusiV
	 kY5BDEWihlyt1+PwpOwBP+L679+oizVUaLM61pSagZ5rQGgpITVrhPYxNCAl23OdEv
	 hH8LsjdYb7exaBSZzjphekXBmlYlf4F7ACEdGMhVoIXtiCLVn61oJ9nMKcaPDRnh8F
	 s0GVBwiChJ0C5NNPSiQ7ije1PmodawgWby5uugIYMTuJ4r1j5HKkm4x659C+GkYgXU
	 DqoOXj+c/cEUiwXN2v2HAvvTPdSdaE+ROn4WPH8bnpvt8c/r23UrqU/X9okz3RGhvG
	 0Df7H7nHk2W3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA0C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711863368.20296.1795479816578745328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0bec3e659cce66cf2b859358763d5aea1e00d6f105a2c07f086c8938bb7b16
Date: Wed, 19 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787118633
