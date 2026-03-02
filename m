Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2227D3FD12C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772462094; cv=none; b=lyfUoIBR/eUeYIK/Tz/5OEQxUN4ETpuvYG9VdZAx1B6z+JC0BBPnmgDwhsTjUa6IQak1Uz22ZrZK7eCIJNivdffGNH+EX9a7VowowENTRJBOMybEVa/b9TKg4uRq6qTNYKlbyjFKa0mgzl9mK/CDHZny56ADSMuEgksjrbe3XCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772462094; c=relaxed/simple;
	bh=Hq4MtZbpuqbA5wsmgRCHvuZIigaELGOPfcANpfFa5/U=;
	h=To:Subject:From:Message-Id:Date; b=GHJwtYSj1tdmxX0Cv9h0i+X4oGMJT1yeDzXXYPg29lzjwRVUabMeGFwYF4jgbtIQxz1adRhuTIYpqbqFGn6U1lFWUbstIu1+SsZTLgY2aAKkLFH25NDayCjn/J7ggeQ7H2OfbMmhk2Sif6msccHAxe6s/nPdJQxiMwx9c3JiA28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Znw245v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Znw245v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1F6C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772462093;
	bh=Hq4MtZbpuqbA5wsmgRCHvuZIigaELGOPfcANpfFa5/U=;
	h=To:Subject:From:Date:From;
	b=Znw245v9+yhODa2OWevLDlJGNH7qdKEBV91nUetRuT5jkARC5fHrJXXREdyTM8i4D
	 1NmbAyAL6rBMIKEWCzXU69LoDYJ1GRkDj80QZlpPCknf+eklx5o73a+L0bvl3j122O
	 bfuR29RpXL0l7+W93k/dtmxWdDw22R04pyBBLxu+t1TTjx18TJD/zkT5riyg0g0OJ1
	 SOwBvDe1Z+Dgv5yJJKMHYEJQAZkFF6glDhLD/t0UW5q9Z60WFMI9ULhlKVnbq4LpFm
	 qlb8TSiIhK7GOcJPJk7xdzVGk99ZE2DqKImlf6jgA8zcbM5E/jLTJu8dH4kskBf/tl
	 W3s1KinJJdfjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CDEEA4E09
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246209365.15720.14960891185341295879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebc516ec1090009666d30f67e61b3d7cf4250b273f3799f5aba24fa5711fc94
Date: Mon, 02 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772462093
