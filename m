Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77A03A16A0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775672734; cv=none; b=LCi4wUBon62wPUDtz8GwJd8uxWNeUC+ODEcWBVomyIDtG3tA69xKJCGD/5SU8p4ZZgJsBKmmk+mrnUDQ0lv5NndZZB/815j8rQMsznc5voMIMMMq96TCfCqZcTCUgbAV99GhlyH9TNteSlzpxF2XviHCFBAgRmhDeGAXGLw1MJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775672734; c=relaxed/simple;
	bh=lC6sr9skaitGZUaZyw261LCUAxwLbhE69MZM53UqkmU=;
	h=To:Subject:From:Message-Id:Date; b=nvUpek4mmQXSwFRpAUm5yjKeVG0l6ycdXfmsX7p24O/8XNAggocuBT1/yR5NTjWP4JEvFdsGc5jKZSv7Jlp+u9y40JiRt1NPnaCHhRG+GqE60d21Gr79vQEX/HQ+2TDjV3SuZt/aQM97QgBCRlf8Dlbl3530ELKKUaLhGRtaBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+eMX9Ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+eMX9Ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88C3C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775672733;
	bh=lC6sr9skaitGZUaZyw261LCUAxwLbhE69MZM53UqkmU=;
	h=To:Subject:From:Date:From;
	b=E+eMX9HtlkUZ6e3+jyorN6Sa8frPUDYuPParhCnjyPgx/xHqiem/jItt/1cL0HJQY
	 cAWjsCXEOU5RPCDg5qayXN4Fis1IYIh7LwxbqvtZg+WOCP5VeOa2fYFmzT/CVWm/sj
	 IZYO3OS16N33REcp6uIgIFwbTFdGoubLiyXUI2nD9U29Rt9alV8BM1ReIyfPMYBq8b
	 vaO0K92o3rq2M9W3hsqStL5SOEoLWmC5EswYS1EYZX+/cN97u8nfplHccUJlK1xQev
	 69uH25Jg6QjZtKfoqa5YKz1D1U/lWpjikilfzbjFD+tViOLAUrDUSGBNEoZmBvv9jK
	 WP61eMDV6Oq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C910F996A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567273368.14616.3678479963899128231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08406a1e86bd30124c52f872cb800ad3cbc66d981caec3affc731e713d32dbbf
Date: Wed, 08 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775672733
