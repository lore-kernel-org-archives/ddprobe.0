Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EDA7E1
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716601403; cv=none; b=MHhY6bk93S4BxszDeGGAy/NRhiybVoTEG68d+Xa/7n3mJWQ/UmIXHiU9wwFv7bjQEqUYWDFR7RprC6pV0GFGbjmBkAjJzkkBQXrGqXg076rk/2oFbEwM5ZafN33kl3X2g+rh9hyc9Ajvctl3EJPBfIYzc8r4FWe+Gj8LdxYYy6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716601403; c=relaxed/simple;
	bh=KoR4oTrOQtH8I4FhsIzEKqKMiWPT0tBMJmetRzHIr94=;
	h=To:Subject:From:Message-Id:Date; b=HBKWWTDEJq/x1SpcoljTE/VBjUa2w6Kxt9yrP0Wf6r2Jo09MJywxOagVm9pXlNN3cyIHa03SfghS6ZDybyrEFfhdCPWWfxXbIXeIFVU2Esu0OzHXx/1wnq+SiUgzlx49cioeTfSzqTAYfpzEN2zvbhuWY6Ml6OtvAaQalEZ39sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnS4Y7Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnS4Y7Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F1EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716601402;
	bh=KoR4oTrOQtH8I4FhsIzEKqKMiWPT0tBMJmetRzHIr94=;
	h=To:Subject:From:Date:From;
	b=BnS4Y7LwH0aLAKyvt2EYGxBxdI4EVxeyaR3YEesC+gQldkvtvjCbWqcCFA2wROOwz
	 WL/5S1c7u3z8QoEj/9yrPztgg8ll+r+bjBklKfNxproL8lCj4cBqKjnxXho7W/4qxW
	 HBNTXejhhjtj9ar/O7vx0ueD3T+wiiVu9qwRnmXuCVp4vJ+4Qec5u5r30OJxvod/qQ
	 +B2kDvW9Ltr36duid7vOPaHjzJ8EY9xNd3AUGJOacc1Agfm4BzfHM8gF06Nv3XBpGc
	 /ebwWQUZJT/QHkxFShKqrwuSqwW8IwThLtRfNxQHGLuhWtQGyZ7JaNKZsZGvtJCAaO
	 n6dKYraWasTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5DFC25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660140277.12896.2965952131968495901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c860a89289b3967bb09c3d3f31b7aa0f860958c7087f41ffc6660985c05f64a7
Date: Sat, 25 May 2024 01:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716601402
