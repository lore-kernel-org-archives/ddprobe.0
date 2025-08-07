Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB9F264605
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754590195; cv=none; b=J2H/9aJJOwuSuO+ZIEb26fZOXd4AEboDv2w1opCbk417HcPZfR9orP5YVYNohOCkkgMM7OziEre86NYF3aJ91fUpjgQfi0L0ZDSvGqZYfvXAYkO/l+sgj7dBJ8yqZEiOowRVGu8cxuJv9jZc8Mr5DYZYKQzLGXxcdO9qlM88bDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754590195; c=relaxed/simple;
	bh=Iqq8Vyhk+JKEQaYNKmtLNtriWL9UNLC+fKXBjAP8t4Y=;
	h=To:Subject:From:Message-Id:Date; b=DBD28EvoIq2nCUhn5RI+qDjgaRw0wWfcIrwOMJ9i/1EtbpV/dgm+E/aWnvlNdALHzhRBXM/Qh8/b9vNGVz73eceNfUWY+ySLxb5Wq+Ced+dQ6HxzH/R1XQvSgTV9bcpQE99j4CrXha4Ad5QMkpbK8O7IJR8R4hkeXqZBx+vbidY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZqyNVTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZqyNVTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F23BEC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754590194;
	bh=Iqq8Vyhk+JKEQaYNKmtLNtriWL9UNLC+fKXBjAP8t4Y=;
	h=To:Subject:From:Date:From;
	b=kZqyNVTl24a9qibU4PfoggtnsaBQtwNuxJ8Rx1P7l99HFVsLVsKiZ1c3vrAdpcdKS
	 FNNr505819BrMyYCEyia/H3o9rHvNnYisi71YHqXwaY2G34Zw4yclZMdmnjJ1AMH3+
	 sTqxuCnlGTR+3isyS8kIMYPNMFrKTzYhHU6+7AofBsbH1wfNpX4hHpj6z7ls9rm8lS
	 CMK52i2AecEk/hZDt4QMYvZ6p/dqy9U3biqmL7ywQO3R1hTTyrmA3AwB8ciFVEiaMJ
	 QPoGgSyFroiFcwGf7tgdsn5F1H2S3mHxeJ0Ii35L0gJi8Cm31jOSuaIzZdo8QS5xe0
	 L4DiqG04fzHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C488BC87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459019376.17231.7350579660300053002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b118196c757a2acb7f47f4c25f6d73f46665ef93b84e21b39795a1fae32dff
Date: Thu, 07 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754590193
