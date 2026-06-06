Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280DD27A462
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780777474; cv=none; b=NhAtGxVw+0KYC/jEGdKGZQkJql2wwRpngx7ePtiUoC2QPpaPt1lltylex7tAHLaw8Nzt5ypbEWDWPfC78olFIwwdQBov2/r71PimVK0K42iMd2NlDOnrex9gmNSFEaTzM4TZnrxsa76Z70DBABWksDxKtzRciaHWjbi7c+6ERTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780777474; c=relaxed/simple;
	bh=fLfVdp8f637WawmlMsg1laHWtFxcZry1rWzVWrU9kPg=;
	h=To:Subject:From:Message-Id:Date; b=a8HeXqQ82uSHBKXie5m3CHxNqLNHdDzt6i8xsahsRl1XfWLDwvxp5vm+D3HvPMnBwqT34kceCW7y3D6BYXLAHsie5tcwn1Qok/bhhrxaaBAqeqO9JHD1rUOCDhBOAZR/kiA2gIhTbgqSUuZDUqBKbyjKc0Djl6AO801ZPUZkd2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HszyVR+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HszyVR+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AB2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780777473;
	bh=fLfVdp8f637WawmlMsg1laHWtFxcZry1rWzVWrU9kPg=;
	h=To:Subject:From:Date:From;
	b=HszyVR+sYfKPHMMoKj30X5lbinXNZRTmkjWsI0iUg8AuMooZg74sEpDWXZyC41fpD
	 FZySS0L53tjPfKPU6Tt2qgIVPEkutM+6m/8hJXf5HEP3g6mvJJUhZrWwVY230kE8sv
	 +/+Wh3ZKFv/H0uK+G82wDecx9LJpbtOD3ZGbbnMFV7iXwsfIWTrmUUtautXmpTTQ/W
	 0W44oXt8V54A2c/nbk8WPvf81A4bTM6R+/nixxIxIFFMNaj1tyBq+bxSdYBuUU616K
	 n1auYA611PKgB9je7PIA+rYd9zgQsUI55+/mNLaY/NyU0hCSFKETusLV8FIvuWavnQ
	 XSLUHwq2a5cpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2CDCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 20:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077747368.16377.16536555619638272129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46148f2279ff42d5e2fdd2cbd93784d79d696bacb88a8d151ac7a135ee5ab437
Date: Sat, 06 Jun 2026 20:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780777473
