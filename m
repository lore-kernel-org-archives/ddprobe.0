Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F513282F26
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789884034; cv=none; b=sgGNpi0/YmgutrBcwKQdFEFUSylWbRLjC/pAZyFV5VYTJ/NbA4pMY/JCN9I5phBwZQfzT8qua/Kj1LBfZxul0Pif27BsUHgWwJisEP6wlvNv1eIAO95KuqU3NtXFbu4K/xyKxLwNFna16E65vQ+rThyQYHrw99zOYRBPNmFGL90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789884034; c=relaxed/simple;
	bh=euvYLXb3LyUJyI/EaN6W4aj6h0OX9FFfRZ+w4Rz3Cjg=;
	h=To:Subject:From:Message-Id:Date; b=sZYrXZcrP4yOTR3UBPRhy91Orcme5gHIoNxr9R0eTt1EoKHMLa5Q2lVm0UB+Xt2uiC06ET6tjDsS9eNiiEoX/I1SvFYyZ2m0GYKe6Na0dA2rGGmMErf/1gTgwdrJVhBFUiCg5uGJb0fRkCIM+RBQEkd/qvjUmJeReewHB38QmBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG1zz+Jv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG1zz+Jv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CCAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789884033;
	bh=euvYLXb3LyUJyI/EaN6W4aj6h0OX9FFfRZ+w4Rz3Cjg=;
	h=To:Subject:From:Date:From;
	b=tG1zz+Jvq9AG+QSGWXMfFWkTDRYniBDzk5XpCX7SxzeHO6vlQniAM/bqegYexxIGC
	 9fg4JW0taUUN/xORihltMTRoJboofkUVZlVNXPpO1qQKcSPiiEBC10scBytoYUF2SK
	 Ont0jWrgKvLv+EKqnxiB/Mcwc5IbuFrU/Y1GBXSkdcrVFOOOEM3Q1zLVnzJ4MJKvPu
	 dAAL6q5i3G6ZZNSvBlvZoiU1v0Oh0JDfbZ+inUmW7EId+Ag8fgZurQVPOV2pK092e2
	 4ZQjXIWxvJQMPruNP9tbrqiN+jlgbh3g+r8mSARN5mNHqxIGaby3WRdpGqqjrgUeLw
	 3K4ujPcQcAqhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E63C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988403369.2183.15936581954144815645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8462e988bfd813e87511993430e7836a74b348af97c2cf1e50fedd15d1ef06a3
Date: Sun, 20 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789884033
