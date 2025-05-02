Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F811F426C
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746173994; cv=none; b=IzOXcjNRn/8oYdDosMXCGJXtooS3mulQOclXcCKLPnEBqENi47G1c4PKAAJQ/+Y+ACAHkgDUMhiULuAo4AfVK+shdRf0TDY8v5tVwEWxezhNKefQBB/DGmaHY2UJWzDW9/j2V+AWWintNZYXgwkvzuhAgb+8ii8De7HQ2B/TkSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746173994; c=relaxed/simple;
	bh=ob0I0fZt1BZe+L8djV2vk7cTvrVoupt3qQwa26af9DQ=;
	h=To:Subject:From:Message-Id:Date; b=VAuKUI9J0M+C6ctvvPvbNJT7dRQcCCELVOO8k3mtfgeX1SjV3X/SKCFZM8S/+Sz1WtGdI782JwvLSAZZkA+UeAiqG6qggp+dwlLRY31MkFv4BndF2sZncFYomolZwtcltDRB84E+FLFfBJJXGlrA0qsIG7WT+18AMyAWlUZUrVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ln0cUkKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ln0cUkKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2EEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746173993;
	bh=ob0I0fZt1BZe+L8djV2vk7cTvrVoupt3qQwa26af9DQ=;
	h=To:Subject:From:Date:From;
	b=Ln0cUkKMqGBb/zgtl6yqLJsQHB5oFyK10zB0LTrlSRgaOOz9mkho+EpjFbFhrAMEQ
	 5TV/92uZs9bxuBIqtN/pPNpPHodSg6c0mZw+au7B/JsMunC4zVXEPnPAFyiso4GBXn
	 t81zRHL+72shmv/nkFXX/N8VHt+fEoGJPaS9+rzNIytz8fM5XMg7YVXBLB4TjTnBU2
	 VpHgLKguXQw7VF+ciEmV+qoQ8m4/C8Z6LlXCOPIppzSFSI6a54s9Yru0uQI8dr4sE6
	 pTqb3hupa8iPGo3evAhgVDCKKcGWh7+SnttmimDVofYRvgnJklrjmyKAw/itUlx/hg
	 hFyEdaRUjsjEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BBC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617399357.1921.10451774824039340203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5baa9a34fb50c69f8171e8950d6583f768e2bd45151f7b9a2372752e77ec35
Date: Fri, 02 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746173993
