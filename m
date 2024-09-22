Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E347DA83
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727007354; cv=none; b=R8fdQErJiYfN26TX78UibS320y/mjdFD+AUnwx8yRUrBg25x/InDCcaBUuU4WVBuRGYys6OHXjpWZBthIUHGXU4LfpOVj/vB4bl8/e1sbfrF9Yg5jGCvjsq1OWSVxxdbHQK/tu7fWLx0mNzSlu+kJ/KWxPyC3M+7yYsSmuxRzi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727007354; c=relaxed/simple;
	bh=KTQPnZI3Lzwqp5LjZyOA3Ufe1HG9msreSQK33jVEf3Y=;
	h=To:Subject:From:Message-Id:Date; b=H7Il3GJgp8mInv/VCQ/D3nYGmdaWcTbDZidzfwfztxQkSbYVqylyWeuTAV2ETTcTExgfaW2qKhvE9SyinApNOD+UQJujLqpdjTIQlC2InvNzx34AcOKxJhKlpODWlOlGXi2Zj/EAuPKwzELZAVkz5WfM3S1TipDbDkkbyLfXlhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er0gKX+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er0gKX+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35E2C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727007353;
	bh=KTQPnZI3Lzwqp5LjZyOA3Ufe1HG9msreSQK33jVEf3Y=;
	h=To:Subject:From:Date:From;
	b=Er0gKX+gxCSIwxdq5qe/nZIZ1mbmTHdS2rFy+gQn1nJavoZsf6ck1H6ksdztGVAYu
	 YHqM4JIQwttHRgJlfdEm+M/Cn4BAvaU1lKPvTYwv3MZ3CxhUbF11Um/WMO3TYfX1lw
	 aeSh+trD2aprjmf4V0WdEZL76UkMbWjVzPOPaLUZ3Gc/fFX6BPT7qiWPtKMhB9gLh1
	 0dTO6YH4y6s5IMD5knCEYiXSqpAw5GAK2SM2U+DaY61CXgWiawd/EqHaCVr275ux2m
	 0u50hdjrnj+EK07Q3/U0Pnf5r01Zlt9X03R9z/uVbxV8zEf0nYC9Uc4qCI1WrKmW/G
	 OwwjKmSP04Mog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5B7CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700735360.10824.13651311728126447739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206c03f87f8b6918e4a4ec959dd10edb55b351076898cb117c79d75e8ee73866
Date: Sun, 22 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727007353
