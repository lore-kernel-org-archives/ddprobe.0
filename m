Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131F1DED40
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775423734; cv=none; b=ehcQFdUp+a4/zr9d/8pRYARGHY84TIg/ipVV58I6NwBPifSfaEIJJUC9AlkjEiOunzpUFydCTnxaSSc79VcxDAUAYwgWsmX2G0sOmXVv1IwwG7OpoMw08hsjnodAieFH2jao+Qb/gkf1mmE7CBrUJp2jR5kcHJdaq5R9Gifo6uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775423734; c=relaxed/simple;
	bh=zL13hn/ox5WczCdMCo8EsciSzWzB3YkLJ6L6gpWTDFg=;
	h=To:Subject:From:Message-Id:Date; b=VKJg3RmK/SKV3TeudR4M/o5kfLoCbzi+5BEb0dSKvcRYaAu6GTeVsWizP4Gm5J2/vCGa2KUL9Strmdo8VUp3CmMvcvvsPxfBkS+K3wdi4eGjEll2l8aQtGC99Zb8xpEq7XZ1hmbRG1otD6JQMOalaKLGVjoM5eVQdd3HSnJ6sDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHLzThKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHLzThKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBFFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775423733;
	bh=zL13hn/ox5WczCdMCo8EsciSzWzB3YkLJ6L6gpWTDFg=;
	h=To:Subject:From:Date:From;
	b=cHLzThKx50flnfRpngenOnMRvhaUNB8yh30KcELIfJSDyqAITK5cpoqyAdPn8ptku
	 4foX3hM1+yUgIgDkGqqqoJnoAgF+k0dEeyfeblgcMRu1nNbqOWwCWL9uzPwP8SYAGk
	 yL19i4OyZQUNYV5gZ9cDED5VaMDggwt2phkNBldVqtjlpuhgf8jjyBE8E7hynoW/0K
	 omffvqRYac7SxfGG1OkJ2CnGx5/u5h1ghYaRIO3bniuipdknrqK1fXO2j/ARBVqu/k
	 DY6qf9qVoH3f/nGGwb2SQNmg/c6MvIGPXpX0tusCvdFSHLuv6/4tkevGGmHEG3iYdR
	 AO5mTDWqhL+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99CDE9D820
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542373368.9572.14582655721919641191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be914e7cd70665dacc0b24ec8f25d163d77ea2a7ad695f1547b834e1550b2483
Date: Sun, 05 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775423733
