Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272C3382
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753045794; cv=none; b=YBsPYdMSOMrxyTiDZ/QwmwZ77YwprkTPsiuNExg5fQO4uwbR13mza6UADhqqgwLbZNHFyV19rrpWeBhL10CTy+Do3GfSMV+FTuE5oAEkVJodF9p0SPC2cq1T6VeFwB2qYP3cszz7ME8zcXOdi+lAkhLfwqSlvV+nkww/AE/ERE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753045794; c=relaxed/simple;
	bh=8WQVUzGoFmxUlbysmk0jB7oCRfOQCUalcgmwGZj2yW0=;
	h=To:Subject:From:Message-Id:Date; b=Ur8uWjI2C0KantBDFB7Hlm5cRFhwvkm+1icpuh/ai1vbR2O77L0oUo65DR8i/m09ljvVnVDM8mU/xbx8Bxn52DT6bn3Ig1XxN+e9Day+Rf8AyiD59/o9PTNZC/znV9bvIemgJX+WTjDG8N6Y797fSZ2buTFzh5Zi9Gv8ad7uhTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9hJlcOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9hJlcOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7328C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753045793;
	bh=8WQVUzGoFmxUlbysmk0jB7oCRfOQCUalcgmwGZj2yW0=;
	h=To:Subject:From:Date:From;
	b=h9hJlcOq76O5OyGJc12T8smcyVt3cyqzH2Jecgns2x135g9GoPFVpubWocE+6wCsz
	 t6+vVj9N0HOmKG3zUVR0ymbkDgsvXrJGftDOi3jGXFnLlsSIBUn4eWnO3C7JKnBNRH
	 3DoTltSsgC/PbS1M7P9vR/bvCbIaSe40CAQQGyX/DWi46VGD89tQkHQmJ8vNCv/kL2
	 h1h1n5Bq/pND9FN2RAQKSOU/MTwekYYyGhyEHy1KyUpd275lCpchW1rCzFuXhyb7s6
	 MNtBA5W3G6h9dqbq3LALQVHraXN+NrPNolc1ZoAE3dLpTpCQ1fnsV6/6vbYYIJdVcc
	 Qjo1fjvVBxVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F8C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304579358.14043.7590063747967353706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1dbe5047803cad14ab928d53702d188863a560b79c117f6dedec5ad936fd58
Date: Sun, 20 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753045793
