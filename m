Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBCA2F1FF2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750893595; cv=none; b=XFEhYujEuCdO+TcSmw33A6hl7inbd6pjqGhx2+4Vhfes7Gz7RDMUk/V92zQxi82r0qhYUuhnOKn04jqdMBY3TusTRqB3ZSmlI5GkSGPhKne65AZYlcMYU4PMMsM9G5tulsc3amoZgWAb7vg9/P47YXxr1Xhzhd8j5/GhqSQph9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750893595; c=relaxed/simple;
	bh=jxSYGEXRegZq86nJ2twt7eRFmjYi3PDAT2oWTSYGMK0=;
	h=To:Subject:From:Message-Id:Date; b=DxMwW5OLVqOzTRURk/B8JZdtWx0MH3VDxIwjbFdkVMc66a2qPuEc+jzCwqeVoto6bS/IgjnXESKscBOXCVCLgNZCOM9xtoCsiT6E7soseI2h0u7fZUrBKz8soEuL+6n1MZVU77dfAbxpfId1pPodJ0G65nQrxgs8afVtN46HXA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M70VFCXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M70VFCXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF4DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750893594;
	bh=jxSYGEXRegZq86nJ2twt7eRFmjYi3PDAT2oWTSYGMK0=;
	h=To:Subject:From:Date:From;
	b=M70VFCXnkHJ2uW3/H+VRXLyvcoTrnwp37CaxNyQs5yPrvp/S7IPvkhc5NXpLYevDL
	 CgQtjzrsfnxBp4L5bA/2j8am97+QIO78HqjxrrBHVIl5vCdDy74fXpstcyFPy+DalT
	 K5JgtUbJ7SClyZo297kyViClkgRT0NyTNY1NKYUeI1n23RkoJrCLlnxx9Qu2ptYnSm
	 aw7EiMxlzoVrjEpHQbmocES/NlkubpCtTSCK8CrGI+k2784xAxw+S3pJ+XsPHpQShM
	 f7XkopBjTkAkZYIiby1ZESY6wflf+08rp2fDHQRjJ2UbEeUhmuMW+AP82jlNySMfow
	 8IYB3vDPR7i+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB39C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089359358.7129.6921954614399278869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35f914085945e35afa84abbf953b3bce445590d4c90b163a47e07fada920f97
Date: Wed, 25 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750893593
