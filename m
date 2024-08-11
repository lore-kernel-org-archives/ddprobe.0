Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB6B200CB
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723412754; cv=none; b=a3V46e5pnD61AbdhTirWjydM+tAoFrLdTkm6NmrGMnTKtdN1PzS0KY89tlokshzcPxk+hx/Gm1GlXK5JgsxIvRvtIxDfmheUCMFWq0MJBu2YknHgGQXlTX695Q09MfdyF6K/m/Mk3SqH9FzYCHGOUExYo5a92XjzXkuQcVFDJJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723412754; c=relaxed/simple;
	bh=Ng1wgK1yLPcBDUbiGSaMAn23+OwdboH1HzmVoKnNwJg=;
	h=To:Subject:From:Message-Id:Date; b=KVgloXs6fZ9RIMlxWnPyx+ir9mVhLfXwAe9Bgs3MDhROqFn4uQgH5LDtXNWR2RxrPhfIrQ+C9CovffLhf/EyZjTvtCd2zCwhMb8JL45woksS3idAigbrSZcNMbFyzjwDjV6tN0alhZq/9geDPmMzTkkSqHJ9HMlK7pfm9hxtEug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfqUB2PD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfqUB2PD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D26C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723412753;
	bh=Ng1wgK1yLPcBDUbiGSaMAn23+OwdboH1HzmVoKnNwJg=;
	h=To:Subject:From:Date:From;
	b=GfqUB2PDz5K1X6bchkobYA1IrQI6U7HZogpcE4Irw7FzCr7yOak46JHcyIausRmPW
	 +2PmnjMJo/VjRRyWE3NdU1EsQTex8SFeox7spMSws4OHKPDxycglPEpq5chynka9Ey
	 h8Sek+AXDubfbpPYTlRnv516obFvEiapiITJTpazLTKKVJDhaXNoY6OTueocHz5zcq
	 ARJodUJx8o1VBZl6VGW25epzRd6Byt+LMjuSdhUj4iLvJAlihk9p9N6L2iQNkDuBRV
	 +jC+TwYvOF8oRYeEwTGbcJglqzDMeAaIO3/iQ2c3U6I7p2ANcZbgLiGu4WFf/b1qjW
	 Xfham1lkjMi2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B749C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341275359.28790.10777386181141502763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ce85faa43b4fd92672756ea459e4961db1add6cc56fcb48b536c8b4d42c1ec
Date: Sun, 11 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723412753
