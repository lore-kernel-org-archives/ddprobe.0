Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182FF23EAB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777297054; cv=none; b=DVMHbnvyQV6Az9cCm4oygV6hTOy/EcNVuDtMSoyKSmrFg1eX9ZuDHKFcsf3mlNIl5/aDewHPPfyUxZEWQ3ci4AKXpXrFxwlB3WSsyGxXEeaxDCsfvlqi7sWfGmhzd6PNk2UqSVUHVum5HBjP6HY0Bd4jl4j0YRQzD8v05xPb12g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777297054; c=relaxed/simple;
	bh=H5N8FdedbvOqBDm1H58zeZOn8ofEuER7n+FudNExdHQ=;
	h=To:Subject:From:Message-Id:Date; b=JlmL3RuEJRIQyMhotu6zGdIk46PJ8GUQ2Cnor7OHob4iB8nVYCv0kvZUhlHHALk/XcNFXhwuC6IhT1ELRGzn9zQTlG9M0jSocQcuY2JLdGYurWLQMNFRl1xxXbKz+JJJvlrYA9gcr7MyhD+eVmktFZR6jvfR1+3MmjR+pmdT9Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4y4YFVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4y4YFVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC117C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777297053;
	bh=H5N8FdedbvOqBDm1H58zeZOn8ofEuER7n+FudNExdHQ=;
	h=To:Subject:From:Date:From;
	b=d4y4YFVSKPQp522s/cdqnki6+mwqIYDSfwd/xZVbqZCAdLCtttVSx91OjJ2k8Qhfh
	 kYo3X3XN0rq5nlQ1E7r1iNTNfp26c1pP5HSAU38tOkIRg3FMSRf/2t2rsST5G9YQlG
	 dnZvSIt7ulj9fByD/p6IACP2BN4GDaPVealrSRol4OGQ1GOSn/mfOdrPNtirVhLAiO
	 tzk3QXQspCspao48NJje7lEbuBslIvGtn+7pIDxhX6GEm9NAppIRzx1mCT5RuWTGvD
	 S9HU3+ncZhTAQLRAv2jEWT8c5RfVneBl95zOBcEeyqSd2VNKFvW2JCz3RJguC1rZz8
	 xZNGwenoMTBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEFFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729705368.1766.8966598590263978019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa41f6fd1a2363d0402fe65749e49d2f3972b325c36e8e410035895ad55da7f
Date: Mon, 27 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777297053
