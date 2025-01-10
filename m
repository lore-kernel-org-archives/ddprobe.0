Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11359A2D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736469354; cv=none; b=lR4f1HgfgvRjVs3+otfXSNrUDACNj47Anw2njRbnkEteuNAfP/d+WuY/+RtFnpG9wfr5rwyQyoU2c+MZBfv1WPWmfbZBX2AsYFWsCuFB9GcAspwFJSgPNb6cVrcAAluwAkXw4nVWCr4CPHUt/xxlhXcjUFS1q5lDauCrbkDbnug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736469354; c=relaxed/simple;
	bh=Sa0PKznol3O9kcjNmIt3P8kCjAKzEvrYIURmRTRdBcI=;
	h=To:Subject:From:Message-Id:Date; b=k3EDvS7nYz9wGFF0dr0GZoTmprWU0NTqa+oFOiIbgFkRKAilOqFkFsthtQjEUqBWxtvOIq82OpRf6ObH2G/RBpvD04XoVOdJhd7YxrnlGif1oK14KQmBkk5EwJ5+I64O4U6EaqDyb6Q4opF65qxGEVcJUPIfa2PC4n/ChQCncc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ/s0Sdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ/s0Sdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8567C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736469353;
	bh=Sa0PKznol3O9kcjNmIt3P8kCjAKzEvrYIURmRTRdBcI=;
	h=To:Subject:From:Date:From;
	b=QZ/s0Sdg/2Exsdi8KXIFZiD9XeQ1W2gUdqwt+C1HtC6E1BTP8MQVFi8dTgMTO7veS
	 3gWN/ERma5ozsWZTFrjsmhxOJ7vFrwFJOY2gNAi+5zifckzr3n5VSAqrBWzj+pEHVL
	 eChvVmlnjrJ9Siqidq1fviMwhdS39xSwr0hZ1Uv6mkczvbvaKKe3N5dFXiL9kpWaqq
	 PQ/x+Gk0Q4RwL5Zo3PItMBdVVv/3yoEzki6+lC409Pu573o0NDGrIjFqZQX780es7S
	 xZgib8zUu5NMrSQhLeSDNZ67aC4fEcijk37D/75+KCpY0HtabuvuX/uplZkb249QdG
	 Ne7/VdnFWOJcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8B1E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646935361.23731.1013491145267415934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a868c43a3249e426caa2c0c960eed142f2162c38c91c0f9167676d7c549ade86
Date: Fri, 10 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736469353
