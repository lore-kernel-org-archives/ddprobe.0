Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C7F2E229C
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759319394; cv=none; b=nbRXRxuBmA1nMCRDdpNepRRqyMovKGRsObs7xdw3HNux9uU97gF2qGPIepo0Bh1IotvISIuK/996IZG/gr2XfR3XgCQnmMZmF7P3mnHD+aKJz0yWrYanSfIS+ak/OKdzgUkityPjvRw5akk5Xt/q4O0xqoGLvFcHjMVma1R8h5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759319394; c=relaxed/simple;
	bh=lzXzJJ+5DhjCf140qDsaAcn2OwQWyey0G5D6s8I17v4=;
	h=To:Subject:From:Message-Id:Date; b=n3kQeao+B6wn2KrmDP8/7pTqIT2229PIzVtKc16tudiT3gBiuAZ+tBA6igdHyIS7EWh3OpX+Jzi/bWGTtrhA7iKSpEgcz0C7TNeAIVN7i1dbMsFp5pd3ITpFgcFUW1+OoyIMHYpzWuO+gvkz15Dxtf6pZ9PYTeuFURjOOULWMus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPG3cFJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPG3cFJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07114C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759319394;
	bh=lzXzJJ+5DhjCf140qDsaAcn2OwQWyey0G5D6s8I17v4=;
	h=To:Subject:From:Date:From;
	b=VPG3cFJrKxzOAinM74GajPa2CBXSHl61TCk+rmuaW1ljkO1vuBOWOPtzjM4SIBCoS
	 pr2bk3yIyAkdEp5JGMRIRFhn2lDcbSDX2A6RSriE1Uc6gnkZ0+ciuOe6SjTAjDBjMq
	 DF2rSX9dE4EMDbd52IDY6/bdBJHWT0NH8vUVWCpRmcNJsY8rVY88jbVHAUnvqcHAv5
	 /Awkc4Jch5WwM9JQqThU7irtAswcdYxYWpb8B19+lYMri1WMnGjVRVLC1m4Fg0Zo7p
	 0Fbi+axFL4O4ZS7p0Mf13kD8va68RZJmPPXv694JNzV+WP1pyhnTzVrhPH2b1+jULS
	 wJP78WSKen08Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC222CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931939381.20466.6868712862781296135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674d568b39f7d56b8c6933e3233d335a0bf06522c4f749177806943d23c529d9
Date: Wed, 01 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759319393
