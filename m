Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E282C21C5
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781958394; cv=none; b=ZyzPp77khuSB4hA+l/YgJhXx8M+rXH4wO5P/lll5gnOHL7VzA/Go1cANTV9X0OlJH3viAVUYtoNaI+knQ/HDT8ltjEls1NsdzltlZfaOLwCdpt/KzlT8MdmrTKJ0JGyOB9HI7RMqn2SKwCgI8G/frPoLBJg5lFPFc/ZRlob+Qvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781958394; c=relaxed/simple;
	bh=sbWB2nSXF9XD/sZ1sejeZ1z0gGMPjt8+TlXW9EOoaw8=;
	h=To:Subject:From:Message-Id:Date; b=SGcA8X+Dqz3jfvEGvfBqCbVLr4zpC8BxMiTsa+ECN2mPAfVT0k4Jy/wUlCE/B8fe+oLSZ/5rMbDH90CjI1cVeqGTvYIk7n81jkxohpgNuXpHx+zPgtRyIU1Ko68junQVm2DMvKt7sMjxS2SFQVPkOZtjSHSC7SjogmzaS+LodNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8Z5lmO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8Z5lmO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9F4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781958393;
	bh=sbWB2nSXF9XD/sZ1sejeZ1z0gGMPjt8+TlXW9EOoaw8=;
	h=To:Subject:From:Date:From;
	b=k8Z5lmO7GUiNPV0W0s3DPIXf9fu0wf3UKn2YrWAij9EcNnGcXtfzp9pKsg71N7okK
	 Rw2oDDqqxTQk/9TkU9oaYmdjCJSe7NjOU2OPQFdNoUn6nXT19z3P994SsqkjUIKo9d
	 Sw/R7E/FASI67o4Bo29c7MYjpHc97l3ewfmsnlq/1gx3c+EH/P6F5Dxk5o+MDHilOK
	 p8zBPv3S0as8GLmnI/mQtfmp+zFAzx1XxaiAvSakn0plBTK3dG1nSKx9f+G07z11Kw
	 lk8ao5lHfvS2+S5mPZ97pbZdi4R+CwFerWfZ+THRzm/sobzNt84TlkoKtLgUwGOGMC
	 Cgqx/cnq/p/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26EACD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195839368.2217.15169748206027810088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108ae22942384ec62607d85451d1c5eae054eb7cf83e60655211a457ab6aa2e5
Date: Sat, 20 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781958393
