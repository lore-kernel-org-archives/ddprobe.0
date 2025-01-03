Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313A2DDC1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735886154; cv=none; b=SR+8qO05dfZ52+hJFvoBKpng+Nbuptyx+iCl9CP4VkV2eXf3aVHY2Qitudpgpl4v7Bck/QmDTDBt9x/h6B6V0w+QPHMzTKEPLEm1rxFnAAAhOa/jmfDxHc6bGSp1S39CjbXvFDHrzq84g00V+r6n4WDIVUyQz9EqF6RXfvHK9/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735886154; c=relaxed/simple;
	bh=YRFuJMyqb1Z70Y3dhtYK1FzYzYY8CTYAl8WNFc3XM8s=;
	h=To:Subject:From:Message-Id:Date; b=cHJ98+eLLgMPRLY9y005uFGc4cA5lSnxdeaAyOzfkE/a/5ZcfUrQUyCk8dxTNQIFSOXd4LvDqUBfOyMd8Z69jPKs6HpZ97kDgjh9EVoUHmu/Ci8zAwoDgq9kpH+9QJO6UIr4hlNVxmoLvxA+nSRZ+0ieroMDQzCNISjhdyqYeD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJjbOTar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJjbOTar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAD4C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735886153;
	bh=YRFuJMyqb1Z70Y3dhtYK1FzYzYY8CTYAl8WNFc3XM8s=;
	h=To:Subject:From:Date:From;
	b=IJjbOTarS/Pt6awMacbvTfqyuRxqahtnEz6uV8PwaxQNnVHPuTd9L70WKuXuFoIyi
	 bH4mz4t5AcGIXkrJFBhoXVb6hVee1X+9Q2C+Xjk3xyfg+YN9LNUuQPagYjuXZZHWsH
	 hhWJUtKCxKl+67RkOdwFNAZJyRTTn6LqKT2gMSQE9jUTYwucIH2Czj1zXWwC9di+rf
	 liOossdcP2XEMunYC+1QbojPF/GQMQlVOvbX4WyyMkayk2Bn6i4rLKaNJZxAdN6C+s
	 uc+X8KTqi2urIvWvaVlDSqgCFB5MZU7CKajNx8b+GsRFgYjmPY+xuMjtjng8jrq7GA
	 amKzj/jLmOwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E77E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588615358.27287.11757673330534189445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6330a1a77249378fe07f9d587c1e46a9537cb1a79aad782b75c965726467836b
Date: Fri, 03 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735886153
