Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB37280CF6
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767471234; cv=none; b=RB8XjGNCBYYIv1WtrRAEEMKQpyVFmfuPJSjYdiiPPX+5soZ9yc65HmJ3sdAOZ+jOSZjQ4jpvf/RT5LJjK0oCh720qQxmWEwSeMOlbarxYrPOwZq3rtEg3G+LOuYLLo8E31oldpBem0IyH2qniWdreMDs9+QifPBbILP6JFYiwiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767471234; c=relaxed/simple;
	bh=PvOpztNy1r7Y/KUOvmgWqiVV46UIb8HSQ0iDnMbkyQQ=;
	h=To:Subject:From:Message-Id:Date; b=MFxw2G9SN1pNqNAGiKZM2ROPfu0vwnedF/Ze/0y/tx/CAdzamB2osfgHz43OqKNi/ooWzYxYWBI53g8CGDf39eV76OulwOCoqPacKPnj/PZw8kl/Pu7EICuDB9o3teAu4y+pB/ZFXLhmheofq1PNfIHh7jtmC5sxpeUWpYZdvak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVUVvJXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVUVvJXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD65C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767471233;
	bh=PvOpztNy1r7Y/KUOvmgWqiVV46UIb8HSQ0iDnMbkyQQ=;
	h=To:Subject:From:Date:From;
	b=mVUVvJXabUpNDkRw7OSInm89tQ95YLG/mMbdjNaT5Vi+njrmHc/NCZyWOTyAqohY8
	 bUhNOxb6NZyZU4yVo5LaNMF7CVG6BsF9er77U8OQBOsmnRFOYZxfRZoOIFWvcIeRl4
	 Eb92j0FH7Fu7VmzWSzFLigooFGJS1tBtPZ2IYgpEXHFEGkAaWJzH9CH1/X3JUxD7dx
	 W5osY4hIkxa9lcnaYbYQ2H2v45rQhS3JO7qHHNVUeg6z27QqofSZgItmZeut3MNuc9
	 la6TvW0RCcrcGqM79XGglU6fEgT6c4Df9A+A/BnXatfsrV1e8sE37vUqwu/htZv0vP
	 3ZBfm/I12lcdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EEAFC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747123358.16245.1780855263804797815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6eedbad7083cc32ec0191f1fc88061bab4f6ee0b75e800d23cf98438dddce0f
Date: Sat, 03 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767471233
