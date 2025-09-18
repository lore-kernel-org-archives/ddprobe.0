Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227831F4181
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758168594; cv=none; b=LV2YLRIrLmhu0SQNLPRlMJZY5t/w9RegoIKKxryYI9DkVqRSBdGkjkHJxqS/5QHy/jN+vtF62pCoVbYzP0PAt0c4hWJtcO9pMHiwTqLVBT6Od9Vn20t/7wyXe4/EH7CK5HWwvSHxu6Hwr5dKuUU9EoNr1kji3AVUvQK8UfhrbmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758168594; c=relaxed/simple;
	bh=Fo76JTL7ORYR9kUNtDt9iOfaUlKvnlg2Q8ttKMglZsE=;
	h=To:Subject:From:Message-Id:Date; b=WdJOQL8nKXawrlwG0mnf37oAAI4gwPSG/LbPWWBP5bIvQaPhmzYUSdytXDSqS0o0qSkw1FkIXjoD9gj90JV2hQh9p5I++R3Up106EhjmBeD2R/6Fmt8YsU6kjjiPVZod2aQ/hTKrCTqTl+cEteF+oqLizuwiBBeCTi/+mkHYtdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALrsmoeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALrsmoeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1858C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758168593;
	bh=Fo76JTL7ORYR9kUNtDt9iOfaUlKvnlg2Q8ttKMglZsE=;
	h=To:Subject:From:Date:From;
	b=ALrsmoeNh5QgZlktLk9BvictloDPSfnGK6V7HUYPYrzS/0qdQ/DHtmMj35vdpN70q
	 wqbBgMYDTgchhZt76O8D4Bb3Bu/5jxIVa67zA9r0HeEV13cz+NBCmkcphMmbTR+8UH
	 +FeNh4aAEsExRrggsXGV7aU4QYDL6v5Xs0SSAL+57HqXNAVe4epSwNfaBNeB5K+hjl
	 TMzz3C+0pwuLMt3qDbDRxiUY6aD7AAPT+XmpogQiG8/JpzaG0IKuqN/iVmzwZLxm2c
	 kBw7V2/LXGXtnHlr+kQBddsg4TYkRYagq/avAOdkPo/L8tM6lOzc/WvJaswYKrBpp6
	 LzjwkRPNObaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94235CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816859359.28315.14417741400781284204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773b4f2484180a800c5381e5a8124576cf757c086912665331cc027c0421a979
Date: Thu, 18 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758168593
