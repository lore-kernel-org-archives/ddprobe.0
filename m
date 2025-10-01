Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED9F31328D
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759359594; cv=none; b=bR8igZK0GxsATRq0Yi92WWGzH5zcepV18uc7atyoffuvb82T4sjAq2XQ43FmEPXA7GY2pMsbw8iuIuOZx4q+XLmg6iKdcPU8kQ4Kz51ot2qOLIuDrOav1WwplnBGFH9skZI1QlG+Ixh0cU81ozeMi1Sq4sEEPyBXY+xnCfOIBAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759359594; c=relaxed/simple;
	bh=rjSsjvRm2Y5xKb5n4OKn8Yw8j8UPHuI5ieNiKMDNdgQ=;
	h=To:Subject:From:Message-Id:Date; b=cN7zdpDqB40FA1rhCckVrFFplj5gwvtwtcybOjfy/ibQZ/DQByoIVEApwRdtRlGTZLxY618gmWam/uCo6KkqlrOqxmmqC2BFmHwN6Z7wLql1943d56iueKMDxzZZ2uyRM9bmXLIT4ad89Sd1QOYn5jK5ncAhgZFy2lRYC9BdD2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5aKniBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5aKniBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AEBC4CEFA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759359593;
	bh=rjSsjvRm2Y5xKb5n4OKn8Yw8j8UPHuI5ieNiKMDNdgQ=;
	h=To:Subject:From:Date:From;
	b=n5aKniBz11F5BMRZjfwZc9A91bLVh7zbGaTHRQCs/VFJLrZKaAZl3LKct/KNqGkYD
	 mY/7VMU+b1CR1ncuqSnqLH1DMDQHm/tOxELEzHQJJEfKXdp4OGRvptwvT8r3VnPffz
	 sg1QhlQVDfNGOePRiT4V5v9yDz3Y7t+mgl0jIxAsRXM3jAAhp53CO8uBG7Q7Ltpjju
	 LCdOiSy++JmPByspvMzvEIIqyZ2iTv7zS7SUHJ2bkVNyvJXykSHtg++CywpBdcCulF
	 ygjUB93pa9OdDMjc9+Ebq8gb9bhcY8WzSk8lYLaaBaibwOLH1+UZVMqfq1XtuQP2Oa
	 q6SQWPEweyTXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95852CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935959358.4259.9231986120705905473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4d04dc4d14545652357e7e06804801c2ae92536d6321173ef71d1f80972bcd
Date: Wed, 01 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759359593
