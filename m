Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E3412D766
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727296554; cv=none; b=Vt/TdoMtVA9FW1y2oiODKFukGkwoJX3Ax6MvqKnHZC/iRGYe777QBdCHRLLk/tgLlgBZlSDSBF5R5nlfHtCfdrA8WAHuwrxNVjmb/X+qNiUwTkUQ5KMZT3GWsM83rQTp1w9M5g2WHp1s9DssoWlaDqSYotttj7YOZIR0q1vvFLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727296554; c=relaxed/simple;
	bh=MPzjePw6by74Y8ANI3aCYHMgVoc8akRVMa+uYn4jgXw=;
	h=To:Subject:From:Message-Id:Date; b=LmtJ9TF9Fg65QpV9BTMsYJoW79rNCmY7LMDg/ye00hAIAQWD9Txs2iBXy/0grbhWcGzBc7aLUYHS+FFFRFD0iNIzQyGXrVQj5U2nDw6Tni5flRBw+ZruzKpsDolDJ7ysXyHkiTyqCkVADF6ti6h+PPalha2y8pLUnJ7fj+HdAMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuKmkAKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuKmkAKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E10CC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727296553;
	bh=MPzjePw6by74Y8ANI3aCYHMgVoc8akRVMa+uYn4jgXw=;
	h=To:Subject:From:Date:From;
	b=QuKmkAKE5M2Yq0QW2Jd1FSEOmFaCdj+t4eDCBbQJNCD5mjsz2mzygXBQT4jpLlYJE
	 iwm6YrhGEIeyVXyzpw+Fy3W6T+4MzGFQhpPPjUEplrsf7Hc88yRwOG3W0PBfCrQEWO
	 cE4gPDSINtRANO10T8SwrotYMkIpCzQA+Srce7JmkeDIgllI9CsG5wpYhZfMTd7PT0
	 VRi3Xklz79yjoDnz8AZOlj/+IsYGXdcR3CLzjGGzX+38BIbsYrSs3/OooyJ8nDv3HC
	 lKUT84F1bCxtENTsPEYLZ4nYjCwl5ok91x1z6U5Bq6Xp6VQQCLHRmELKh68hilJo3r
	 RJO69safwj0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099BCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729655358.6196.10427371704314848357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4250f5beabd9ab259e9b07c56d2c210e96b3b5137693dcb5d01074d9f919ee
Date: Wed, 25 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727296553
