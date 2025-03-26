Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1751F758F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743020994; cv=none; b=hSGsx083Huu/5zTWjfvVvyuS8TX9cdIvX+g0ZI+ddcSO1isn6ZNY2yEIzFCqd3/x44qbgVnFErp3rl0hs8XlIpzU/Fgi43m0R8ZvUPmza5FetYs2Yzm+Yludaab+mds7Nvq7699wbpTVV94Ayn0yhRqxD5eMZL4P4IqvPCVH8Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743020994; c=relaxed/simple;
	bh=FWKymqtFWrddBgRaqMUNN8VSVUgDh36KJhFsyzoXc9c=;
	h=To:Subject:From:Message-Id:Date; b=nA5FEGWmRuyFuLx6UD1nkj6ie38dCeFvkBBYbfGvgJs4pJY7d+x/x+byJyzgxtreQByDlbjGVjq2eDnZzPops+xWoRaqHKaK85nBPFrVghVD+cruGbTGnffVVN+aUIS5vyLJRhIP/GkJ9W2REEWsHACymjveUKSUqQtmmYQp9lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KML0cvz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KML0cvz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6FBC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743020993;
	bh=FWKymqtFWrddBgRaqMUNN8VSVUgDh36KJhFsyzoXc9c=;
	h=To:Subject:From:Date:From;
	b=KML0cvz38bhzhuz+vIUztJjXbTs8+OmmdQEpuOWmLfhg5SESh8Imnh9D+3T9YN8dN
	 JWpnvYVB/Qls3u75Z3zeZ5NR8G8uxyRCpwTboqiJQr08/aJsLna63/d7eKjWtYvuAZ
	 234xsYJS3LO87KUE+lgoojIr3/Sw25N7X0setKAykSlIdLmhdkHIWOCWZWMXsBcN6/
	 AtN4ZVo5O6r2KRG3WbD9hqs42ZVzDhy+xJFOxJ2Bo7BjexadfkuHTzBvnQ7XbBBAnP
	 WfIxzNGyHvGWFcO28FZYw84FQUiKzhsdCvET4NHFPnNLBHj3B9QGj5SAYnGlvCp1+P
	 sxXWriFloiJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66DEC36012
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302099366.20516.10302301488291083676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56aaeafea1e274e474bd5ae38bb8a5ecd0aaded41784c204ce0e5c9fe9fc60c4
Date: Wed, 26 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743020993
