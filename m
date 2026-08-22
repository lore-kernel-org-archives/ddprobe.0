Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553AB3A2569
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787393434; cv=none; b=fl9WjyPsFUQQXZPlI4dKbjNRI0jF+l4XuuQtHDzxVnGhuBoUfGnPioD0S+LDW3FwaWJpFLxhnX/AQ1gPXHd4MGCSkX+hxUjbDLU6uwco/tCHeuGGZ7+NVYSfvl81hu7kaGCas/8ASQTb2Vx+L/v8fniYgPAgPZBx2CRz9B7K5UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787393434; c=relaxed/simple;
	bh=qkPMU+snvaS7ZNmCv4shbjaY8IoGiihzM6hcBviIC4k=;
	h=To:Subject:From:Message-Id:Date; b=i+VQdSfms9h3cvWFHEm56RT3X3FX+wkbXBHKvVZnsu32OzfvcU0N0K8xLKgjLe8vKX9wGR07EHOYl2x7XIlYkeS+2FnAHwgslGwn2PDnrGnVGrqcO7KYZ4QXrgVhvAs6zqE+pEwygIrdoTYnlaZ38ygbtCcvin61q5Ls5ATog0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJzLe2Bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJzLe2Bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA6FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787393434;
	bh=qkPMU+snvaS7ZNmCv4shbjaY8IoGiihzM6hcBviIC4k=;
	h=To:Subject:From:Date:From;
	b=BJzLe2BsWaPTmleMJCGUdTFNVpbi1Zpw/Fow1oVPVNvjY7ExeOe5RC+0BSkRW5qj/
	 KHMhypwkuY3W0arAKXP73+bdoJIDcvRYUpAt+XGc9LphF7BvQZwEJebJVA/qhyYTN4
	 lxDiPJ8+weBsyq5TR66w888ocS1y2PAmetnrdsN+QDf0ZxVOBgcOuI4f9yNIphQ7l5
	 6w4kpdoETJfcVWiOpnXvGRuOemHBe1+ZxajhuEYttCbgKEFDhR6h4J8MH+GRI23Xf7
	 OpQHVzMoDA2XEJSWkPwtiiKnBovs+sa+6kZ48hGQaBlAw3ZJDkeqmjvFA+sChNJbvH
	 AfnMFohMDj5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE33C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739343369.21280.16589904800555401985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b5c08e5df7e715ce05104e872fc9301eda13e225e0c443285327852289399ea
Date: Sat, 22 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787393433
