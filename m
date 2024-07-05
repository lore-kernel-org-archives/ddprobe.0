Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FB317995
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720161323; cv=none; b=CQnBcxwJ1UcJkc/oX005jTXcpOsW7eLESxjl/0sUR5i3fetTF6TP03xaiG4E2tRJIfQcq59uPlVEavws/LuRTqJaGXYRwe7+XuTuuYE3/oPaBOr26pPCry4twPFiP0Ekm+r1P1CsLD3NnrGjabRpsSzXMcmjh9g2h2CcXkE2r90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720161323; c=relaxed/simple;
	bh=O+zSi9x24Pq/BSxrzfRY9y9WoP8JGgLtpu4hEnYv3yM=;
	h=To:Subject:From:Message-Id:Date; b=OSVL/zah3wKP0sbxo74xH75Hw/0ygErxmGp3FAQGP4v6JMHbHeov0D45XzyFnAk5pDkGn0RcS5dRhBkgelUZMVCpCUwn7gKNu4WiSr90UfNnXoiwBTqUP7EFT64VCjIVg8vHV0UfwgAg35rrOnmofSXiszu/xIf56pWg/i+MyYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbCVgAui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbCVgAui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C7EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720161322;
	bh=O+zSi9x24Pq/BSxrzfRY9y9WoP8JGgLtpu4hEnYv3yM=;
	h=To:Subject:From:Date:From;
	b=XbCVgAuiHFEfisLEtJRNH3eDmiHbCYI+DTEvccRPmD89pWJNSXrdRFcrOgO742MwD
	 p36Ao5TC6Zg7aTg1Y89u+FNYBK2aNv0OnG7pEk0LBHVeS2CydRN/B2Ph0OGNBhhHJ7
	 GfpAdp11obVi/Q+kBz+SsY1+9nQMVJ5kCCXdRvdLjEeEJxVCc9IOdAKkm1IXsrCVnZ
	 vj4cdyPRbB1KeEyG/9tGxBQmUSa4HmzRLMZQh7aWdJl9QwYrz00wCohOdUag76Il/D
	 g5VBv+1lldLXbWw7UoeqgnbN9jJ3BJS9xJFM89cpQz6OBkxw2dAxJLJO4eiY/JpiaE
	 /pgR8n7k+VIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5728C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016132276.3177.4268672801043882850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bb910cb76f648f56a357957e6d07d43da3a70f49274c70f3b130305249349b
Date: Fri, 05 Jul 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720161322
