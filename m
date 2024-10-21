Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220EF137750
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729550154; cv=none; b=QMb+EGYVPdhKccCM9IFK15eaAJn2BXkdanK3wFcEuyfkWNOoQmRpPJNOYfUS/uePmD4mRNXkpmdTp49r15rL/kCosY1hQpWhGBJjIPPj9UMePoNmLbc1AfLQo7ZZ2uSsmfl9VB2xPyoYGE+c5I5rnRUFnd3bM68ZCR/QTXy5RNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729550154; c=relaxed/simple;
	bh=m7w8rJkV/BBON4n6qEMW/S3uHwEzuJsrLm1sCNjOilY=;
	h=To:Subject:From:Message-Id:Date; b=qKUwrEisBGPL8tp6reSzTrnGwCuVysBh5Ks7Zv+7GURuEHq9Hcw7tbNWL28bw3dICeAFXpYTuZ0Eni7CaJl2MU7uQx435eu+4NlKBslso8ykFyymv5zD2OA/4EVdSBrd7dYvqkjVA/1WLrzuBHU1Gh/7P65ZjnfkeI4/ckDFc10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyCZ64ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyCZ64ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2628C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729550153;
	bh=m7w8rJkV/BBON4n6qEMW/S3uHwEzuJsrLm1sCNjOilY=;
	h=To:Subject:From:Date:From;
	b=tyCZ64ueRMJmBB+nijEeD4sllb9fWVRY8WghGWt6fG0Wl8RQFzUuTBlemzk3aXG1J
	 jEMK4U9+RlDsKNzXPOqVQD4TJ4zX2tWlHkCrOMkmKqP6v+O0WMzTVf5LCEJwe5L0n8
	 OHJs8hGDY6IqwOxvszILTegYE70M0cNUcgVVoTgedt+p+3n5tljM1E3cYbs42Lz+xc
	 EqiYhNkXEpJsjOA9yVcibZk/i1iTQXOxq1K8gNzn2RS4g8ciAMvUGNf2mbP1OK2fQ6
	 pKzeX3UoFKWdhghhDkhJUpdz6FxCKtGiORBG2ci29caABLpAh/eZ+h00C5W0PmNdJe
	 CPrR8gFazKDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E96D17142
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955015360.8910.15879743805647038839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f435e269c7313b4fdb3a9d88f8dd0e4f882e542ce60a3e47f3d72ee6d01bb127
Date: Mon, 21 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729550153
