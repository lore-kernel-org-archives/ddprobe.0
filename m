Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F684334680
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760641194; cv=none; b=ZvNh4+x4Bf8uHWAwuyjIpZBxWOk4NtCQltSDFn4MqEggDXDahnrpt/w8mzgauOwsUsQgFYYcdmCgbn0iB3TbfF9EJzjE63WC1efDDIJFPo7F2/pjhBRC9dHNqM4TIwwWMfyWPqJ5ABAfkTZp6bFCmjXeNAQ6jVhIIUnHRpiyc5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760641194; c=relaxed/simple;
	bh=+O4y9YUODbJ9nmWUd93ReYP6YiNvq5ZtjaR9gpqEn54=;
	h=To:Subject:From:Message-Id:Date; b=iNF3BmCO4Y2sUI5Hc/vFJ9ZjNaVOBh2RS1ni1P9HQts6lc0Ol+tAlbcopK51/zT+7gUBbr0y3KD9yCalq8a0SdtiOiDroJLb3RAolGNR89IM4JtbbjxAxb49gW+svwlhLf+JS6U7EXCnsJgJcxVP68o5Jg1UdSOLX47jISOK4QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDskMxwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDskMxwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC9FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760641193;
	bh=+O4y9YUODbJ9nmWUd93ReYP6YiNvq5ZtjaR9gpqEn54=;
	h=To:Subject:From:Date:From;
	b=jDskMxwxtnlEtnqVBHQxHg6Kin7lvWZxXEBku/ZzOz+UJh9QWUYMiWpzfH37ynZMM
	 /gU2uTUUp1JzDGAKW//KZy8zx5RKPB81Mww+GSiyvrvJRnzNh1EjRgGpMFy4RbMkYY
	 DR1AhtCNd92kaZckHnzGJD9KUA/Aulu2lDiIVqcRAFjfQyjOppX9N/Qn9drDVfNByH
	 mlN6TP6S2sqbav3FxiBeYYAxW8fJBsMK5Y4lguLbAakDWp5R3MI2Gtw025ITWlbiWK
	 Ak6XlzmrmnrLaYSTnFjZAuCockTNk3GY9KWK+/8OEt+CQzvvooktw7Dk20qiYm3i2v
	 Mjtg201A85krQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E793CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064119357.647.10547706454052935872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35aaa368a9f39f1d4f6e0d1424316f424b79006bbbdb3d2b2734a2d7cc8818a7
Date: Thu, 16 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760641193
