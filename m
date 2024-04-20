Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C90738C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713571823; cv=none; b=fG6ureN90/vIbGJN8hloMylh5wV5YrryL81UIFxKuzcq5zR58+pbHzpVhKNEBpxACzO2fO7SJsBcV2NLh88+toQMfckP85lmgrlldW44e56yQ7e985hWqCI35nD+laA5lAbF3thu3uqKA8p33pw1FbR4RMRzOl/j9FuLUUeUH3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713571823; c=relaxed/simple;
	bh=GgfVPlVTKnZzG/IKp0JAwI+8tC0Y7HWmV2joM9dxIHc=;
	h=To:Subject:From:Message-Id:Date; b=Dw8c7y7Azbv5neXmgW3EYW8poHI1+lCgiWYxiEtWujeAN8fgTWITTQJuibm/dn6qL63OpI+WIivb+0SJpfVK18Gyk5pOWSboOpbFuuuRdzIiOE590ZVTAyJZC/dNpYXNMthfDm0ntzbReMsgvVv5rW+9WELSk59xFGPOTizAems=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqMuVDm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqMuVDm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82CFC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713571822;
	bh=GgfVPlVTKnZzG/IKp0JAwI+8tC0Y7HWmV2joM9dxIHc=;
	h=To:Subject:From:Date:From;
	b=jqMuVDm75feNa1EwNbYj5KSAhuqCjFwl84AgcDPFf+NweRuYgEZ7vsInb/YpYxuAS
	 6PwAFkytoUcv5oJOh/Ran9msqD0MkR4ZCO7Nfcf/qSDgwa/WXJwpC1I7SauGC2k+EJ
	 wgOeC2CyzA01F6S/mmE2PUmlPClUw8kkwlh0ohN2jqQXcko09tPkmRu5j9Dy3UI1Nw
	 JV3aQ9O5IEebhnJ2ietUN+G//Fb9Sfej5dXeRyd55EUpPH6zMn3cbY3Q+wcgtxAQF0
	 mn/j97QsBPl3U9Ytete/hoRdBTy082EW5GFoO/az2aVEmzxZixuaBirs6xectYyvNU
	 UhVwSOhvSP7PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB12C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357182276.3887.2340518203666025234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba9ac2ba7d58279961fec330d80f9b24db664e32ada89f3f1c89999c2751bfc
Date: Sat, 20 Apr 2024 00:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713571822
