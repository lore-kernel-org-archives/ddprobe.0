Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B662868B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758486594; cv=none; b=Lc+NfXf7onKGGrHvxlGOJwbBaVqbXFDhdH+AGkQ3Ss2u8rZKNwXbx8mxHEagDafxd2AobWSmu+pGItzqbZR+hou4c7W6vSWnLdtcBrJy1xKk8wc3twmOz4og3NTN1fcOI6nMa5ic45dQJ5o3oFhKTxJCtdMGbVDAprbE4jR4yu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758486594; c=relaxed/simple;
	bh=+75ok9ZLqhZ74WNlQ9Yjm2e7ZLHxy+FbMSMdfEmy9sM=;
	h=To:Subject:From:Message-Id:Date; b=gkwbOsse59q54Jyadwh96MVcqSKP7+c5L6a3+sutJ1g/NFiGgRO76/unWvl/eAcwL7VAhpe24rT4lasS7qlSbkm8T06ynlkKzl7v3ZjpyfDByBlhfgOChoseYxFVXkySU/j0NtcTLdz/yD5gDsNbDAmpVsIWHG2tLgwnaf6HzJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0Oj19nU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0Oj19nU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B21C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758486593;
	bh=+75ok9ZLqhZ74WNlQ9Yjm2e7ZLHxy+FbMSMdfEmy9sM=;
	h=To:Subject:From:Date:From;
	b=U0Oj19nUiQV3PpFWOtuEjf9UEKgYC/c7qk5pqiiwcI9UZCipa0ryzR9xHBcwq0zdk
	 7Jei8HDyJi/b2NehWW9VccMvmvyqPESTJZ0umrAbNLADrzJPa2ZmdXwk52iIDvuN80
	 2Wgp433d6KA1DDp2n2GlMuFtTXbMIYaqIEDWQj1uBZv+nxJ8Gj9AWTZyvTmlsURXUU
	 pVHk1XEGOo1Zcg7ZEn9kuZCPqZx6/AB3LdRcvwx8Sig+/u5XdvOKFMjjLrCOKEKaNd
	 R1SLPbrY8kb3X1e9GqTtYmCZEglAfPCuCSDAkKyFLgkdHZlqrHrlgJwtyRt6BtmueJ
	 ZZHMdVsfNX0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D2DCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848659359.28022.15175352309853362583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbcd0037d3f15da90929b82a15509d553e2a69f099c4c2c71497748130b58ba
Date: Sun, 21 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758486593
