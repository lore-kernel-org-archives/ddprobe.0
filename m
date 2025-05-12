Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C20324888E
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747083594; cv=none; b=AFxh1yMDoF6gQE5NgIdeSfkSRCV899FGQBmnkhOcbElm6qHPufv641Ma9q59ID8d0bwXoM2qEIqbol9sMl/h40Q/i5gurGUSe5G343Cs7N6ftABy1zZKfbPjg/LqwyGftXryjEDniPMXiCOOjUi6RkBnG8VJsghiNlQ00S7t9SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747083594; c=relaxed/simple;
	bh=yxv0Tq4xbAsLq2X4fEj4W+3XqIfCqO257/m0kUFeldU=;
	h=To:Subject:From:Message-Id:Date; b=kGeOlW4uwrXM29fj0ddejzqZfFHmALo7t2Choabe/gthQWkb8m3en+JA60apbbBIAAgqS5bqVdFmD95wY+3KDTFxhHxpcLA8zR2u4a9Fb7YlyFTsdWw5rRi9UfLMp2klLjh8PRhOnqx9CtH6DhyLXPPHirVdJqbQng2ExndK3cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiEutJWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiEutJWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BE7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747083593;
	bh=yxv0Tq4xbAsLq2X4fEj4W+3XqIfCqO257/m0kUFeldU=;
	h=To:Subject:From:Date:From;
	b=RiEutJWwIlY6fOC/5s2SlNhs+g2MAEusSp11/WNEfpD8NeUS0bz4o5Mwxg/XrtAHb
	 drOyIcUc8ezX4g8MFCG3JufG8GGrgsHgGUdEbnXD2WCnJyiAUzJVBg9rkPFzXnVeSh
	 yJcQH7RkKmnqH6YurcNBxYfdi+LY40luqFPfqXrAqjSuT4p4Du6tYnUuMxlLJ0if1M
	 Q+bn7lmBjj9eOG8vRbGms3MjXzZe1IFjDbrJ7JleohLlM0OpXdxJDbSJVxKCMZ99nd
	 YRgaWXOXYC91SNZkp1M3Iepht4h1ebhYGBZqinwIupnLT3R4FmOyyoBi6Jom6Uw9an
	 zWJirISKFK04Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D0C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708359359.18721.44575279104235652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba6a2dd40346b5014e7400feb1efea31daa8f16e719c36a1cd108ae46f1aec5
Date: Mon, 12 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747083593
