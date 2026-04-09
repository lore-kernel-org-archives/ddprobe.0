Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2ED393DDB
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775730334; cv=none; b=aGdkwm92R4Qk8XUvakWnLghG74j15+1aOhmnEqbcaXtKJYPrxbzF+J6V8IgmL6vhgqJUUKAlGXccymahOqUjHxwUSbX7MSgFCyF6mZOhdlS7cwheO0WKwEvtvmLm1+PydGhSqru4dPX1myfd578PWx5CC1GJYrYSCH555yrSX14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775730334; c=relaxed/simple;
	bh=GSEoU1/N7zmaYDJhU1xJMOh1MLm/etZwqbqkFBb2LQo=;
	h=To:Subject:From:Message-Id:Date; b=XVtCx4lXP5vCwuFTzRLDXXu4c9CnVGMhJVwKITPYsXmlA+xgbXqLQPEUDfzjsrpP2hZmsLaDIK8+Ebs+fazufMNJSe/vMLQOGCVnsxtXaVpe5RNE8jASGJz6lJ0MEA3rWm7qXOWcyV2K/SQEsYeobkplKHx3Xh4MgNdezbcZJJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpIQDH0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpIQDH0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD74CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775730333;
	bh=GSEoU1/N7zmaYDJhU1xJMOh1MLm/etZwqbqkFBb2LQo=;
	h=To:Subject:From:Date:From;
	b=DpIQDH0ZXvE4w7VZJp110heYFczn2tDaufQdtjUGUxTnwDriUZdynSW0UOKPnyQaM
	 7Yp4McThHktDr9eouTPU/QREOCOjeeObQndMi+ovwjQsWG3WmaIoRZ4znS1zRvu48N
	 f2MR4s0jft2222Jsxe4GEUiW7ImtQmjdQVvkJgjYaHU+gydDu5KXJIAT1QLolnlExv
	 tMMIgxtWI207Hjg5MJt96l5vYhtzoVKzcFEiSxRvGQ/3rrijouhF2ObCIGVOX8vJx8
	 djHIy7eXQN6gNmNBE0UXII90Iqy0YcBg1nXM1pRZyc0P12lNcIYmRIom0wzFEmM158
	 6TXRJUjsnnAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF046EA3C23
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573033376.23850.8947355014158156512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc01bb46953c2d02b312953b81629be73e01e93d690dd8e12663ec673ce564f4
Date: Thu, 09 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775730333
