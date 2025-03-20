Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D0722576E
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742492394; cv=none; b=Q+CrgiuhdXmFPpwZuFvqkC/zW8+OtwY8AmQOHHzrbAcefO7q6J4/7ntZFE2ZwRtYw99wt0RYXH0DbNUhn+dJnivtQM/ATtFa5plPAhVPTFpoamEA/rUTy+M4Uu+ERouCf9SwQqMeo5AGuPbIUlUpP6kJ95r2DdH+2Kj8807uSsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742492394; c=relaxed/simple;
	bh=SGtvnE4KijDDuBv2TJGeCDZKdlgPnYKc236RcMHSv2o=;
	h=To:Subject:From:Message-Id:Date; b=E/p+snksqbcPs1b6JtDXtNgahmb+ch4gGGwJP3qF10u/edn2vs4u9zrwbVBUYVnN4lITz0mLPxeUcFdAb3T69KLj/7/YaDyNlZyNkCN8oBFh23g93LIEIhI6UZmK72yrSjNKtch99B8rQqcGbD/mCgQMfwjkRT+wSAn/YmhYsek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khWDBbj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khWDBbj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC886C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742492393;
	bh=SGtvnE4KijDDuBv2TJGeCDZKdlgPnYKc236RcMHSv2o=;
	h=To:Subject:From:Date:From;
	b=khWDBbj4sjEbqkVaarKHRphTiJ6IEUE8Nkath8wrhT4ogTNqzy94stfyLwAxpfL5W
	 wmOD0XgYJzCAFSFBQlB6zQ86/KTx9VtPInDGCtgFqRu3fFcP93T0x4+50aa8MLD1Oa
	 j7uHEF5szEOy/4wv/6rcfVrb5dJTwrCeHJ8hha406xqltWBbLoOv402skLHAjNs56F
	 +ozepIpICrn65BMQ5fwBB0O3x4sYKNxDWV/gFuOh0kLwUZbx2iKaycjUawtO+NiitA
	 3hUdILdwqXWJQa8axvH6FRRlUhW8ziH2Q2kyWlgeJMMT8OTSfsnO2+rODz2I5osjYl
	 WblO2Jn01NPQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43C6C35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249239365.22050.12731431868867091526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bc653cb72083988f8a556cfbb260f7692e17f36bbdef1753553dc9ab2ff3b2
Date: Thu, 20 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742492393
