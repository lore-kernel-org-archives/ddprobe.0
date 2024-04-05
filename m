Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED99171E6F
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712341097; cv=none; b=EqDpA8cUB+7JafniZVVwucnrrzd04YWBst/LTzayg304srReUZ713nBLaPf89TnNkHPEyK7nR2pF3+7D+wautsPhpBfyoGunY6x1hwoEX3OHJ9mrc2jfFXxBbdl3HOYfh1ymEnZj63HTrj3yuvE0we65ma3px0bttQee0fzZEow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712341097; c=relaxed/simple;
	bh=3abStsjJjGAzEZQE3q9/ffT2r4WzQnjx/BkrRuVmG0M=;
	h=To:Subject:From:Message-Id:Date; b=gT6DPZRwbFwLB3Cna2KaVBDsyo1uIhrLwQIqwh/9EbCx+8lC3wbx5T89de8VyW5VjQm5n3yr3ffLvZsxiG1S6gDCCq3NRDUAW9EiwxCCjpTKa4dSDsSEvAflMw79chsixQlvJlwWWNORmACwTYzZA78ljVFtOyNcVdrJwbAAwoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrUtxVLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrUtxVLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F9B4C433A6
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712341096;
	bh=3abStsjJjGAzEZQE3q9/ffT2r4WzQnjx/BkrRuVmG0M=;
	h=To:Subject:From:Date:From;
	b=IrUtxVLclEjE9mcyVYftvKX8ZYfe54Yysszn6RqjFpfdM6SFbugpZXTwNJp/i/Y3k
	 XSo8kNSHlJoyGwmt/UgprzJjvo3mnYJqBJ8i80YshXjavTOOIZMI7asXJdZjPD7REU
	 B+bf+eQ7rfSLLDCF0Q4BpFCEuiUKhx01cIRw6SOpP2n6pxm9Htb/SoBdHy9hCYT1Nv
	 /o5u/ZUpAkScBxmQhtadPI1kvIvr4bUSbi6DMF86cFi5JyLYEA8p/ySApgxK+yalp8
	 lCrNipfnLSBMxd3YpnppudlsR0qrnS+syhI4CoWxU4hFaodigc9EF4l1xSwmtFBUFH
	 6F5Am8fnWRipg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709B2CD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171234109645.26529.8317869034991856515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7867c7255a6f8d61fc07e2bfc4bb99f7336be2c8518b59f48362645b59d016c7
Date: Fri, 05 Apr 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712341096
