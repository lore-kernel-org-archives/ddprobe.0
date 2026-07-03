Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDFC13D503
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783120714; cv=none; b=S0U2hSUG4VdO3BB/9r4IdZ9Aiu/h0ExI/zjglKjTP0H92OGW1Va6SPROXycjv0ZRJIiiWtf6fzLPF6C9c/oG8tqvSU+8hzps24sAS2M1qBUZEyVgAxS5BRzwtDRiDiZE/kSuT9dgJijKkphtYbl4ghkzkuYGOPt5t7xvjB98l98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783120714; c=relaxed/simple;
	bh=OejIocHzWSpm/whVfFcJ9dEe1/dP+GFsA6wGqFqlOOM=;
	h=To:Subject:From:Message-Id:Date; b=JfsMRigBu5TzWY+9GOUjwJTlk8ROnVd49fwiEJECaE7mCoYo5/zIHcmhC+/E/ihFoN1mqpLV3wlJEPIYgr65x6Rxy7shcyQs+h3URBHkRI0P3xkD8XI3qGnBLvXn006r/8mLc8vxRXd/y3CRrLkP7/Ij54qAyDxJWmjuRz2qBm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K76zr3Ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K76zr3Ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F85C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783120713;
	bh=OejIocHzWSpm/whVfFcJ9dEe1/dP+GFsA6wGqFqlOOM=;
	h=To:Subject:From:Date:From;
	b=K76zr3EyPIByopk7US13Tj1Y1dDKY3Z9BrySbvW6ttNI48pi1/IjKXN3ub7ZzFCee
	 A6iDTGHE3w6kpfr4QsDKxcdL+VAZONUdfuMpAKjmblkRGRi2qN6TjpNncp6X1rfcY5
	 8SqpF8SkxnNO82f+p54KNRY2aUzlw9fN3/VDwxc+pz7Vhfqkx9mEa2r49+ceMdumEV
	 b/rvb7MwfL050tJO3Of3EzKef5DvqnhWDaUSXJI59UvbOPrIoe2d6GeI5urL4vNTYI
	 rlquHNhR914hE9Zm0/GLCRJTNo/ZP80cG/Fnf3tGAwDmR9JwyRD7Idmgh5DTWDfNy7
	 J8FIuTngXB4YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6D1C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312071368.13018.13376729003203876514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf750eea8b6b0d05ca0d1e9c00af8b86df39e4efb92208bf0eb8f8cf5040a2e
Date: Fri, 03 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783120713
