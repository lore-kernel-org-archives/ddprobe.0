Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF65143C54
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721334954; cv=none; b=PrWhdQlN9JczLaMJPY54JlLHtUTq8gZ2k0AS19kE40JLeE5j+G8c7zKw7C0vmD4e4eN7UKM9+rNxPPLcj7CV/jpSQyMX1+ued53mmC/Bdqf53l/+2skeVADDA4+AMOS4fnqRekuYW+38t85OIoCf8qzyl0T/aHWb2VXtQe/85og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721334954; c=relaxed/simple;
	bh=oDa5q2OULuoOH2OPjNcm5sCp+cmGxB5e2KNUuQy51f0=;
	h=To:Subject:From:Message-Id:Date; b=j5kLCNAalvE37X57bO+QeWOEKmGcyuBs34pluVTZgv4C0DI2Pkz208uYd1I5IoLoPAEoNINa/FHaspt2UK35m3ESz9flau7qVT8Ioet/bXKfoymyblH7+yCypNI+81ib5les/qCzA87rzAGlFkvOQYvKFQQvopyqC9olveABSwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi/cwFhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi/cwFhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B786CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721334953;
	bh=oDa5q2OULuoOH2OPjNcm5sCp+cmGxB5e2KNUuQy51f0=;
	h=To:Subject:From:Date:From;
	b=oi/cwFhNrgISR1zEQOMHBxqpzf0VqlUJwbFe3ROWN5dBrwVqWcglfXSFHkPigbcuw
	 bsiY6tLbuBekl2Zrigf9E7SRt1bZU/Am9yz56VvFE+1rRddWL5a+7kKj9ZN6qzoJGH
	 Rbj0EfEA7aj6gHjy2yN0v8OIUWSUB2oUIzAtwslQqJO68sMyEeASytYvxC6/xzk625
	 yQztbHVITlmFMBRgjavcKnFIkCOD9iUVL63xpAK5Dbj4OR1aMbn+jCemebGQYCmF/X
	 6w8FdfGkLcYXVKjklVr0JjK/v6fkMbxJs5XtLCz+lfkQaL78ALPdGuQF+VRJoVAElG
	 53BsgM8UBC3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0523C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133495361.28934.13253843244503488757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7c4771981ca85828e1e843eb67adea5efaa18cc47ebcc4a3f00b6ea70618a8
Date: Thu, 18 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721334953
