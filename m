Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B53258EE9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759929594; cv=none; b=fZ3gPd+AOUmJqdQNj8bWryEKAZrYdjae0Wby7VnFFc+Xjxf58HuSU4LbV5NY3utcEBY7Bfh9BcYCLvmQqPpm9DZlmCgtA5P+YLu10lD02nxLs70N2YscTAjmZIUeg2OTtLdoaaiOhJisLQB2B0vjGlJXFzCQiKki8tLx5IBUGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759929594; c=relaxed/simple;
	bh=PSvLF3PLMcf9ayYXk/HEXZjGV6ZWfnA6VIrY/wK/Jmk=;
	h=To:Subject:From:Message-Id:Date; b=XpPPOOADhpO0lbMmQuu9zIRwjU2mm32Zg4ufKYKRsFLM2++/vmePqi67zO/n8q43/aPKTKxGOMhEJy429LFBCWXuBtopQlbiYhg8d4LjSZOkS121qDfeK3cSgin27HQ0c0tHaS8Watp/CmXL/PQ2tCbib4Fd8ARqTI1JCvATKOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4FoO7XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4FoO7XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA7C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759929593;
	bh=PSvLF3PLMcf9ayYXk/HEXZjGV6ZWfnA6VIrY/wK/Jmk=;
	h=To:Subject:From:Date:From;
	b=B4FoO7XIZ1ME4UeGtJaU5I5uPyhqHH8o0s5BgXa3tDuW3G4gEfwuMsrcWUeZ1QYj6
	 9ePuiKUSxtBAN7gIi2ZVacyHukrW6DUn9AH+jAnd5DsT+pjbIvHOBPmD5fwj2MXTSL
	 e53kzN1y7ujCUUWnc6nhmOqhNGDVSsGq/Fw3n38x4AwkqpiiXfkLgEXchPhG5jrwc+
	 +IjaEZgaUNQ6dShKuALtcm6GzBsEOOv78k5ZxUVsNoOuJGeJTcB6AbNOLb3rmivxAT
	 L/tzW0i3ZWadjuoI8og6YslmycMkcWivy5uari7RdaFlYRc0C3JmgqWqBPC37S79d8
	 l2CXf67TO8Oiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90559CCA472
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992959358.30975.4889704287634742092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd198b1a12283e8cf0575146f9b00745502012ff1d91229dbd3b3847771ed92
Date: Wed, 08 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759929593
