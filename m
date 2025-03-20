Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FCA111AD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742496593; cv=none; b=Th84RTShIY/wsZGqa2qhipIC2SXA3ZxHI1crSIxkkaeb896zUSDkxhPGHMRwbaaQDClibovNmNKYX/Ccg1HV/DDmJJTXknUFXUQ1QkRs85n8vJTSnls6HjbRAtz8L+5FzTxDDiPN/DdURSdpliEWncCoBnEkgUO+n9+LLraPn4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742496593; c=relaxed/simple;
	bh=mQaTgLDiN4zuq4Xqh69D7Qm8sYAEDtMGW2V5ZH+ix0s=;
	h=To:Subject:From:Message-Id:Date; b=knet3G8DsxXn72C+UvOOMADo3PoQM9nQ277Nvgv5bS6s/NEFm9SRjI9GhhtUjJfo4dHoVsbmBAp5mDlfqQjRTFHUSsN9X8jIJm3sk1y22GhK7QkhcxHkfUI0jeZu2EkUxKqDYxPfzYgXc0GGl4sQPEb+jcH3Lo24YTprdviv72g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFDoLV6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFDoLV6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2385C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742496593;
	bh=mQaTgLDiN4zuq4Xqh69D7Qm8sYAEDtMGW2V5ZH+ix0s=;
	h=To:Subject:From:Date:From;
	b=BFDoLV6u6U1+ski2drmv2wO6X61oAnRtptqkZM25k0HwV/u7LLOvKxqF5A9BVwuQb
	 Acg2+dzC65bWfb6NwSJBxBBqsYXyytqjObXlVdHpADLNr+Tq4o2PYO7L+mEKpz3UAO
	 eFfE5MgDsFH3aO++T2UaPTNR0cXP0YpfEtjht/WJ3tK9Y+UmMGJmfQxrRMozIaWGhx
	 1qu58nm5MENWSUz6JZRnfyp3vtP/YwYIXzEoo8vuPIfDlRH3RLmNbjfrveFNnPwRm5
	 SdTCgThlDr1XQfLjlciJ1oH++bVriNTrPZa6IYaCNxP+Ca2nq1NS5JWdHuZBEFvgT8
	 AenTF6xstxn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD66C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249659363.21412.15184406124871707866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0614cd35b7f6d494157da778281a5889a48bb9a2f76c27284c2e77284d70fd6a
Date: Thu, 20 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742496593
