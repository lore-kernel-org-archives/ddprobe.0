Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24056CA6F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756091994; cv=none; b=pA2n31cyI2ITmqz0AU9CHQmAn2OVK4qibHu3bX72kOm8WFSmwkaKfGLuBXxW7cDrxBdEdS+M0q0BEB8rSHMTwZamqAuAvMtUq4+RlH/YyThND3G7pB9b5LH8RVXTnGdLHjvAv/bbt3XPtklzFRQ4Ugz+0ff+MWiJbtJ6JcfqOH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756091994; c=relaxed/simple;
	bh=aXTznbS8b/DTD3EVqe/1zrkQgt5ETIfUchqpFcVH02g=;
	h=To:Subject:From:Message-Id:Date; b=GDYdivKL710LhFcudUnqILGjjOGA7j+A4+7gEnDh5fz54dKwMfkWak4SPuENF2e4HRRXEMGfpgVLH+uHYt1sUXu1SD42od8G6EOyDWbRhBiZZ7nrycoMNN8J9fSQ7LO0oXXP4igu+UUnJ8jp+d9khuJ75VrtlNs3/bxh7zTffyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjZOGjhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjZOGjhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E706C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756091993;
	bh=aXTznbS8b/DTD3EVqe/1zrkQgt5ETIfUchqpFcVH02g=;
	h=To:Subject:From:Date:From;
	b=PjZOGjhR81EwQRGgSVQ/Fz3idUmm1YwPwik/sYYvEXDjHEG0cnFm7UQ9FGHHal+1u
	 6KNYUDszUCzJfQYO7hDtTpV26Wf4cx9lVPET9CIpDylGLh98dicE2lK5JK13LXtmUr
	 IHcQPJeyVYwZhnTa7KpY2Q2TBc/KMy2s/1GWkeWYibi9hoUufPp71TRLEp4V6G4JVe
	 UAEZFszGRlBBK9V07sPZRNBzyNSEvALcMKnoYlfShEOrl5qhkw+q884WzDG9S4216B
	 IqTGWmZm+Y7lHcy9OmjZIPd2kDhO590WbtaJAk8UsZ1DOdivi+2ZEtVGBWsV5X6DL+
	 b+WEih6a5o/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F934CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609199358.29557.5599099222383361508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e663b7fae78db2e080c35775646f3a9296fee0927a801f4e857bc0777574b38
Date: Mon, 25 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756091993
