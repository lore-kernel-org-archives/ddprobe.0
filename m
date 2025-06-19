Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8D7221DBA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750327794; cv=none; b=bYgKGoqPEJoZ88zzVFGF4etKHo5/HfiHe14a3Dk3OCboy0OpwRK3Y9LIyBypSnkbuj5oB9yhZ3kPasOE50Gvw4/DFM9dM2xe3Ua7yt56sAc+SKKgtGLrjSBV4oHOyi17/8jC24NNIyCnmlI0Alj2eSIhEuGd6ts8O/SQukNEF9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750327794; c=relaxed/simple;
	bh=QgD8YGFPA6RtBz4i9WKLgi49O/9BHnA28m4k49c3ujA=;
	h=To:Subject:From:Message-Id:Date; b=k4PWJuI/imZ/jWA59hWxxhyLz1bHGqbyOv/Uvwa5mNmNLS7QPbJitImZskAP94K7gI1g4/APxvoaHTBmYVHJ798C87aEWf/M+bpshsQDAWgv7RKbod1k8IOnc9vEKqUL+RIdIQM90WL0f9IN0e633mMQL3zgzCUOELhEGr6U7+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIoEWw9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIoEWw9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750327793;
	bh=QgD8YGFPA6RtBz4i9WKLgi49O/9BHnA28m4k49c3ujA=;
	h=To:Subject:From:Date:From;
	b=EIoEWw9z7/KXR3izi9PG1NgFOBeOCEJcS09VXOmDsSoOha3s4uZ2gzQHVOyYpq1PJ
	 wa2wj5JGZ+ldaY+v+34I2tEU8G1RASa2sPhxbcPpnuHI/SD3e++NOSAMHptsODxXsX
	 FqC1YavJ4ZVcaA5qjAgnMTnNNP7+nePHdGjCzJX3Ons25UOl4Cqmbk7UkKD0eP7HdV
	 ofFmpE/z1L4R4NV8afO+ErmvTHME9IdQWUET9U07C8jQw+5oihsCNOwURibDyd5ZD0
	 16yemPQih/+xt8HmhcL9ickqTLdp2t1ez4JAhk2RkI/vpKX5hDyMSOEHGH8WGNaPAc
	 +ND+emw2vQ7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145FC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032779358.9042.2742299231344476533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b55254663dca11329b3c701a2a99ee23f2893500f8db275e5a82e7a588d491
Date: Thu, 19 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750327793
