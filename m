Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34646253F17
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747414794; cv=none; b=uIogaj+Ds4bu1FVOclVJybbAraCR4oR1Wd1q3Qlv2V7k9DK0KVQ1m3i8iTjYMy5G3CgD4QmPk4cZGQw+XUx257RrKrE0zNEdBeWW1bmW1SM8A2yw+k4d8bl+x8L/K4i7SrHJsCmcLs9Xt1kvtW8wy3y1ghBEyx7/C6y5n8EjYyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747414794; c=relaxed/simple;
	bh=QyUjywfENwApyOEFNF6+KYMuYqj36sY0ut14lg1Lb2c=;
	h=To:Subject:From:Message-Id:Date; b=Ymia9AK0IL2F/Phop+3b7Sl46CF7nmWIMaAn745gOYeB00fq9Ya/PqZaCiFw1/oznyZF+qNNYsZumUpKY+O3NAYeZ78awkohGe03eqzN/v7SG8WrWav5Np31fUiqq8DiBBA2qPDivKkxiKV4Mgmf5ajo27ThLUWQgSJPSxBqIOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdJCijcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdJCijcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4014C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747414793;
	bh=QyUjywfENwApyOEFNF6+KYMuYqj36sY0ut14lg1Lb2c=;
	h=To:Subject:From:Date:From;
	b=XdJCijcQlqPcXia8qcmlmjIQOxDLrbHBgpAbUhe8M7I8eLmTFsT71JqPCsjq+VOJH
	 tlNlUZetDiByf86jmKYNFKsZhCq46UUO7PjDHXr/KdQxlJflVsMAFLWzSf3rtwkrql
	 c/tvdlepRMzLA6cS8F8yimVTHYB6ONtVi0oUrP20eIaOfiS4kfKiaxnReGkbk41MrO
	 iSZG217gc4wyNT8yEPOzj9YZgIg2b0uHhsxxupfvBDVP4knOu8UgOBu8d2HAcO6ao1
	 t+JKM9foFcd4oymNblS94bgIpU1kp1ujmQNGolNaL8fxIYn+xnJWEFcjnbGwsxqThr
	 SuGEWIoev4d0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741479358.22007.288115828366374509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e2f1650df3ccfb2d96bffb57e46211c42fc4f2d62f2c026cadc71a98686553
Date: Fri, 16 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747414793
