Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9F18D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751245194; cv=none; b=KNsQtZT2NyrpingZa9v5yciw/rJpm4vH3tJT+vDiVgcWIhEpiOmjYHmKpz4WCybpoJxtSkI1zmEpQy5Oq5l0tYBOnsEu+EBHj7OWjQuIet+yHbGBMPuUBNwo4tayyKoCIAaefCXZaK/ld8jB6s44bFf0DJtBOAMdiZgqYckt0QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751245194; c=relaxed/simple;
	bh=c+LRggk91s3XoMfPF2TH0gH/NlpVDCj/Ra/h7ydtSyM=;
	h=To:Subject:From:Message-Id:Date; b=suh0vIZ0zUVQ4yykX9xeIaDLR4SpKd9wUztQ3UJTdz582QschxQqiMhMyW5klE73+GilKxJfM9NtqQ5TmmnuFNlC2R2xVJaSEA8Rsd7ZYg/mJQSgyPzqJ5/bLGn4krgJaPGivUOfVaPfgPSw26NHuptdC5eaQpY2zzX/gDD13Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ2T4PdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ2T4PdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751245193;
	bh=c+LRggk91s3XoMfPF2TH0gH/NlpVDCj/Ra/h7ydtSyM=;
	h=To:Subject:From:Date:From;
	b=kJ2T4PdIVFMLojvARj6pNAdUS8Tow5rA7BAnuT50q6WOW1qFj6mubrC4lK32oYsdl
	 6REVRT46tne2leaQHfc7MArnJwGIfgHjy8CF84ge/unyPkE57hU7H8HbPzndZmRHRB
	 K76AJcmYpmd8y4VytVwPqOKzd5Yn57Gba1cQGCyOs7H2wJQ6hAUrt2mPuT5t/kzML4
	 1QdU8dDYEVxNK4NMCXZbKl4SfoxEJM+29ABmGqYTrVFfzaFqfyIvPbCPzhgFTKU+mT
	 zM8fuMtPAJyj/rJnmfAV/c+FBEBrxREYMCSXh+hPOJtCNpgYUkba/pwoHhWnV0TNue
	 I/Gt5EF5Bv/Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E831C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124519357.7833.17936095323203418494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a87a1c0fb5b7ad9330f9c11bebba1ea025938a17ab5bda68ea14c80fd5595a
Date: Mon, 30 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751245193
