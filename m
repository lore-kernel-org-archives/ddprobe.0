Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B103E411C
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790680234; cv=none; b=hLF3TwH3cQ0S4RpobdN217buFeri58kUWobLx+HMcJZrZ6A24KcbmQ4ngRRow5MwtbwaKEVF2RetJQvuy1cWZt7Nxb+80Wx/ty4cXGrMsVbN6dnR/mYDgRsY6lnFxtlm5EjzxWJl9RK0hs6y705CU6JTG/HDJBG8j2zVRHGYluE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790680234; c=relaxed/simple;
	bh=BWpWHbQpqn/KxAN/NnGl5VAB3EB6W+0+MvQZ/sbyQDA=;
	h=To:Subject:From:Message-Id:Date; b=gijYbbmgIQ1uw+ks7alE910qfyjGPeob9nGQYbalej+js3YhfGsVKNrHUK83JEK0Kh/BlzE/SEO1TYc1lhYn0FyRnS4AqDon1ZBHskPlTKdVxcsII+9PVIIps7QO+bfrtsaoaCYaji4v8jd6y/laGO5i0DeRr2sKdL1eocBZsgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1PUElEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1PUElEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE780C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790680233;
	bh=BWpWHbQpqn/KxAN/NnGl5VAB3EB6W+0+MvQZ/sbyQDA=;
	h=To:Subject:From:Date:From;
	b=E1PUElELkhcPMfcokGDixYEIMVCgJg+lPmYSz3oG0wupbRuiA7NlBN5uHa8WnXUNj
	 93TdoQRWHDz1judnibJIicfk5Upazb4kiHTUsfZHb5vBY/4uMXB1C38+JQ/bjOQ7Gt
	 wYJK8Px847gQ1fMiz0XnGR1PLaNCduaJ4eKRM94syiRfr9iNSxrgqgm18rgBF8GwOf
	 fwh7FbPtQKKKLDFljmKsyybOFhndzIWC6ySY/Bz1z+ldGRige1CO4I7MDg1w6atLAH
	 MfsL/7sTO2mAsjabpR+SCx3q+oqXoyQ1SHwa6bbn1N0ghKPdInV4HMgJF90S3ipGWN
	 qcrPr8VUmatNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94C4CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068023374.26267.7087226146852642433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d947f3a8eeafdbfc2a759488f816f86007e024b20d9903cdd1ade9453041de
Date: Tue, 29 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790680233
