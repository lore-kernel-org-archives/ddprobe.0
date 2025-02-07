Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A8208A0
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738937154; cv=none; b=VmjOaGnA6sFsMCv8SHa03NNBRMsZ0WKx+aQnI/W7FiUQPfGBYtMZHukClM2JkxM+9s7IK4vsEMWm4F+szXCL0qxr1oSgTKoZQhwZAxlhlQZHVsY9qB/b6Qtx5zWlXsw0w50eAKA1qlLG9Y9jSAaeWqe+PC8vBTF03heuBnWbvgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738937154; c=relaxed/simple;
	bh=q6S6VuByC3Ww78e9eig/EpS4kl78K11WD64Ou8btScQ=;
	h=To:Subject:From:Message-Id:Date; b=aFnK2RJqAOrdnthAosZ6E3O7jxaQT9QKHHdI583LKmXNf4hYUCAoy722CpTe5gqwDl2DdF/0e2xdwbFT6MJCBgn0LBGfKkzGla8BGL8Bu5gqUHdiupmCLiwzVfarIk8uRRO+tXyoGZsR6GQbK1u98yuF3/vBuZRN71p/JabBuCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQRqtBRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQRqtBRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B216FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738937153;
	bh=q6S6VuByC3Ww78e9eig/EpS4kl78K11WD64Ou8btScQ=;
	h=To:Subject:From:Date:From;
	b=rQRqtBRlBFoJiTepHuV8Zx7MsxxL5y5G8Uj2DxS99vdKCHLJmjMXunAGGzGscMpbW
	 KC4/yJly2QBTErlrx4zHrLif1e4J8wKCrnDYMf3rISDg6j+btJj18ITZlyAbQj5P87
	 XALvCJf4Il2rTVPt8AgOIQRMo1PYvDM/h4ZcbYVQbRn74yeU+8NhktAM6yTd+94C3b
	 OYRf6wiEvDSXjY60glD0UWgKEuFTyNkuh3BVc0F3F8D/HHPXjLM7ARwYvKP/ofUC7E
	 HnpFQLx1ftM+SUt8Ul0hPlwpmREqbBaffm9Quy3e4EdcP+Q8p/Lc3fggcA4pYDB8qU
	 BHee8HEkIe7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9CEC02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893715362.7417.10210555208843940111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77af7d953ec3456d27fb1f7ddabf4addb95a0d8928882047a56542fa92d10c4
Date: Fri, 07 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738937153
