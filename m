Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BB738422F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325315; cv=none; b=RiMPddSiCG7HwOC4+RPmVZvUevqXaSYUWPsmKgiBQVoKKySCprZFn6u5gNiUxSZqF5ql+FyPcxjc2iNAOi7Cm+lqX2nDfiwuM/wo4x7D03xO/eBgJE6lNzooFpqTfJD2wXoGpF9+d2n3xYqyAQB9A9Q/S8WvFzXIwyh1/89DSdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325315; c=relaxed/simple;
	bh=VBGUBCCYCQE2NruiRNrOAZBP/yRfEaHJ4yLP2TWlFzs=;
	h=To:Subject:From:Message-Id:Date; b=q0FNFp61KhhwlhINW8rjjym3OLYLVtnBo3zzKchCP3g2v6R51mrZRi5UU5iOmyC8haHyigjnEhdOiujylawA1+EG9YgWWjTt6zFGXkMeGQJLRmoSJroCx/1jbBmqhxo00YqpfuDtEFPlUa4wxfCdIvkLOV9j97mgFUJRmSorUTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQEBZpar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQEBZpar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9A2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783325313;
	bh=VBGUBCCYCQE2NruiRNrOAZBP/yRfEaHJ4yLP2TWlFzs=;
	h=To:Subject:From:Date:From;
	b=dQEBZparQZKkT3Jn+5ojLbs584qX8kgvWbQrilDA47v6CvU/f+oZ7J0Cc9B2pynPa
	 OV9AT3IbZuVz6hQXkwOYTOkS2vIxkUScJVb8ASG8dcidfMO90Gl044qxr9e2vGdyrm
	 HvW4K6n2lpiF5ZumLFXPuiq7rmkjyX7QoWxwsUtlTrs1Uy9qHsjpJt019Ka14wlLnJ
	 H7DklRKnDeWyz/xT8PiesMsx7y7WqKNdCs/k28RvK9g4YRhIBcifFqYWeN+6dZCbR3
	 nP6RnicpyUqMCNG76KxPugjykbI/CFrya7TISvNrUIoY9zHukuE2q9SaR7hf6SrTc8
	 3CGGtQC7xfT/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B5C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332531368.7123.391055358731168812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd9104d12a41acf4e51a9436072c303ae23a2abf3dea4dbeade6acc556ca932
Date: Mon, 06 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783325313
