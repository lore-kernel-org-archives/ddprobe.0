Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507F1346E63
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790802034; cv=none; b=p3WXPBPU4693pFZdvh47XRmRbX7ekC05hjK3F+SE4nY1rz9ZKOPtiheYOB/yAGeqewOn0749gz9CjEO1iKCaGiDbBHICk8cVkWjf2gntLrFJ234NW5FyDqBLUs2pZ6iuuJQctcjYMEwck+2wHfP8zI2Ghupsb2Vl5+I8xMwthlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790802034; c=relaxed/simple;
	bh=CE8h/fOP/PR84Z5isEoVn91G9Iq6SAoimHw8gLRNpn0=;
	h=To:Subject:From:Message-Id:Date; b=Zsh6CupUENu4I4/CxbQVnYgihyDDPC28qhzL/8/YS0fKRLfJzbR6u9wfVaMTLAfulPkN9XsH7wZ/0R3tp8sKLRb2j+/H3HEPPTWfJa8N9uUGejknOWaHubza2ErCgA4imNFnlwWhqq+YD/6FaX0n3ePsmdmUl6/LZwopjqiVmls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ngyuz2ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ngyuz2ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF61DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790802033;
	bh=CE8h/fOP/PR84Z5isEoVn91G9Iq6SAoimHw8gLRNpn0=;
	h=To:Subject:From:Date:From;
	b=Ngyuz2akUVEs3VgmOIlDnpq6AHYD8O2lMuzAvKHfeLAeMn1/222pDpOzo+ToM4zN2
	 gcKzu7mfOCK3bzbJS9Woz+maxz7V1do37b5D4ylVgEvjRphVYjDqzFWWr7eKsTm5Ih
	 Rk5GK2Aw+eksr12qdFi85aeQbaSSWeE09q6X/zMln/qCb5Io6dCZUUulnIpI8eqoLV
	 +vJ0d1b3BHeR+803dLr7lRmo0usZodGe5cAnt+DsuKNEQt7BEftZFPHhF/76s+CZ/H
	 l6ZLo9lgWFcQ3fL6JEpxesuVpcfAOKlwj0o3wrz1aYgJmR/kgQ7+23T9w//v0MrLPl
	 cHyJLva+Esepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C4CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080203369.17713.12742366100757572419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61976aca7bca85e326c8fb3fe21cfda532cee2e46841250b98ac8e71076f0171
Date: Wed, 30 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790802033
