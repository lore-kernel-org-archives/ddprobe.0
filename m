Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793A631BCAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792390234; cv=none; b=YF19wPo0M7VXA2g43vY6cPfxyVOngbIUgxJtik19aCC36kRl15KKfs4l7k8BVR4jdhnShZ6Gmq9IiTVyu7Vbl6MlVOvOP/z4C43khX3t7NpO+irFl/0RQs9k+mtjDf6JqIixIGnZ46sFrSMWS/qeWbSY7GyBlpncPydT3CFEj6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792390234; c=relaxed/simple;
	bh=jgURvlPAI+dX41bJvHyaCSAqd/6RbyODbIkAD4Gx5mA=;
	h=To:Subject:From:Message-Id:Date; b=p8NUjHdu3j6EbYQseYj1IO4GOydUes08y/vwcc92VZwBivAt8RjADGm9YHaUDuuJ9TzkEBykLJGHdSLc54DuFvtGqaU3Pii0WVWKHRVzOnLDrsy00bCje3gUjAbh9P9lxlhOOaRnCrA1Y9PIRpt0lbwikpqrixTEz00PuDlg1tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKWEdLty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKWEdLty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3A8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792390233;
	bh=jgURvlPAI+dX41bJvHyaCSAqd/6RbyODbIkAD4Gx5mA=;
	h=To:Subject:From:Date:From;
	b=fKWEdLty6ZSwA8v7hWmtSXW0cE/5gaavOITwNv7wANfXSmTC/YvFitsNkZDKhEdXo
	 Q2mwaeqatAuBkXdqJ49eTrgX9+UA1mkVd6BB0P9l/Y7jBc3kZ/cAR3kbKMIa/bMymD
	 6hpuyquxaSD2StLchqEYU3VIAN2p4Ipm8yj3CbsAqvY7NqEHG/9nw9uBBIuUFS9XD3
	 2Ykp68HPowl5RKw2KoWffGgA7v22ajuOUjfjy6tn1+xcC22yqg3GSZrHjIFq4edW43
	 cjOxcaxSu8SkByjJkZwTA4PjdfHae/zrkZQ8nOLAVOllwKZ7CPcALmHiYE5g3+QYon
	 bFkkaUWjALI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8522CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239023374.20741.4266558272186272419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ea3f4bb97d297156ac3c9bc35f97cedce985ba371b9606a529f46d11f42e8f
Date: Mon, 19 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792390233
