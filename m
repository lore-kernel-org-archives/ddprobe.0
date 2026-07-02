Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D79DDA9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782967114; cv=none; b=f2g+hRMx05y3cQbp3EfLjC3eRzEKmCDdamD8DfGuXKE4tSPP/2flnFH1wGeLhl5ixu0g1VbBrascdPPjvkPX1JbqKGcE3aUHf0CctIF+HmECTbydWuJd8LxbH991u8VvIQqHhbpTR1a3gVLd+SeIhkHnKth4GA0yUOtBjUcNYPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782967114; c=relaxed/simple;
	bh=9YE2CwTjpZozMOUWLKHHJSqfsiaVFfrSoJXRPlpdIAg=;
	h=To:Subject:From:Message-Id:Date; b=Q8CM3USWLmgx94qF1lEF4ftHGcEkrxB7nwNNUenTL1j0jinGyfw/ZAgq5nMib9+UgGDCyj+ZDTmvN6UEi6e0n86r3j1mi98nDtTc2BaxZ+HM4iJb6D3Ojjoz/fcOXUfnJpkTHFFmrln9Fwn5xaDUN0POG1Ax6Rsp0leDU0er4i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k90n96gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k90n96gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B36C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782967113;
	bh=9YE2CwTjpZozMOUWLKHHJSqfsiaVFfrSoJXRPlpdIAg=;
	h=To:Subject:From:Date:From;
	b=k90n96gYMWq9JpHDaMqXebte0YAzzeYZfLhaA6M5TlJ2EtixsO1f2/kjNgKKyML28
	 aRamI61vaRcqZeVDotFMUohXI61MHL4RnK2CbsFrTBBXdSvitGl1S13R4FTQSgaiq+
	 TaadoZfcdCUkT8R0vF/AkfCbycMEiq6ugL2xRbiDQtHfowq5lq3Vb9EM1RlhSNgkmg
	 9/XEt75WJgd5RBFlHpH3+qWZ1augcWe3xnIEoPDeGFQspQ3H/T9eigqvFgUdsjeJ0N
	 DtnHx/WmZNtZekE1R8uZAXMSsaaeXDye7z7Rp6pYubBlehgsccDI0eI8O8r8sdF952
	 xTtOjZEFV/D8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DCCC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296711369.20718.15965865373129627979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0a53fbe7294417082d2504a60af0818ebd1f57151e2343096dc6fc1312e708
Date: Thu, 02 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782967113
