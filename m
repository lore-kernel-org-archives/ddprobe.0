Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4CE544894
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792078234; cv=none; b=mAkapkm450j6cwpZpEI65mMZ12ZyD7xoO/QsKOmfVYhHRhdINy4OQP+FmSO/Bn0LLufwWoF31yC/W4CaRszxYeScAKPTK4beo92evqqzfxOHJaWzz5rvqp/nCLgtPNy30RL0eI3SiQjLiyqL15tXppzNB7stzeXZb//gIY28T4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792078234; c=relaxed/simple;
	bh=B+MFCMgzyn00FEO8WTyFSuWPl/UwCrWq6YVqGypBLN8=;
	h=To:Subject:From:Message-Id:Date; b=SZBEAXqirATqPSK2J1ePzHJ1XE3FVCaoXrDXngjKhKlqXw7OjRi3/oNTx4cpPDKGBibGBMZ4nxg6i3TM7fVdrdLCV9+Vnsh8NxOiSf7yZtNlwNILSv8Ep95ZnvPzBXK6dXtWYiVvSdgoaYRQCG9JJa6LtfBFcIWo+iBzDkgT0Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efVnNhBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efVnNhBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94E5C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792078233;
	bh=B+MFCMgzyn00FEO8WTyFSuWPl/UwCrWq6YVqGypBLN8=;
	h=To:Subject:From:Date:From;
	b=efVnNhBJt+QlPt+58ZotNLKIhQyRQ6jsnkJibNjG1Gys4oUHPO6INPg5iAkal29Mm
	 Lv5bGIi242+cPQpQBU2OPcJOBVUMq7lZ8Wt+ZgQjPzS+qulRTheKTmp9Jy3FBVhPun
	 ymZQ53vxuu0F7sDcbRd2XgOUo2k2WL/CpGqUfkJWVFPw/mHFoeTgS+en0vSTBX2NWS
	 0lIxGLqlv7g2vrU2i7twM/UjPUgvnem0XgHAkBG1hl5WnakOvidm0U39UcDevB5RSY
	 SVsisPudNPy0cFyjHT4/BcxCs5IO2qGQxJWOg4X0dv8bemiWHiRTpqcesRoyag1WY4
	 g+Ffjt/ry6oIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B625CCC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207823373.3843.11565814051728054900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90711249f95f7ed7937fbdf1df17643eb1358b1b9e4608ac24b8f42733c9bef
Date: Thu, 15 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792078233
