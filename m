Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300312D9ECA
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775918854; cv=none; b=g0IM5jV9n9dkdQ9MsgH5eVYqmfeWvtLOmx59lLw/F/TScxERItQCYL14p5K1tqHf3+T35rK4AdJ5h4ZOC7MdswKJhfAG9J5MKybq0fgf+uxNNznSVx7gvEKW6TkwhPbZlWC9upgH74na5M/V4sqVoa4omykbCCN3IeXHFULB6hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775918854; c=relaxed/simple;
	bh=Yvlf1NqaFePWcB77OH6v+JMhdfJC6fcd0wtEwZXUgi0=;
	h=To:Subject:From:Message-Id:Date; b=hYNFn8jJUmOnMz6xYjLL7ju+k1u6gr8lo4uWpdx0Neypuru0fDChZrVVB+NzdsNKyJs/Ur/awOc5DaDvA61kYLctU9+tMqVzEEKzWDgIxjVIiiz99QR/ZlpUkYqrB/rPDR8mUpYfpOm1YNCjY5itnQG8R8fkr8TneWduCLJSOlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azhKUxzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azhKUxzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C073FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775918853;
	bh=Yvlf1NqaFePWcB77OH6v+JMhdfJC6fcd0wtEwZXUgi0=;
	h=To:Subject:From:Date:From;
	b=azhKUxzgEW/b6UumMRdZH+gQ6RFN/264/CBphkRHqZ5BeIXlCOdmLBQZcEp+E831i
	 gTI3TbLhSllkRIx37gCvQE4m94lq/SaWZJMQZAzIvekhwH/2AWvIC9XCoL2bsWxLvz
	 VTcwu8OJvbdQoFz6hC/BrHJbbyQWDv1nqqh8Nubk+qb3mDl+gttPW50nQRiE/eyAAk
	 1wz64ZjzVfEmu79tM+cb36EWGB/0CMSgStDHlJrQvEMmkFyEliK8saE+p3Ic/ks0qi
	 SqHuElA2nH1owWzg9wq8HCo0npyXK3zSqmw0hjMT11Ea2cGZoJierD6zDjgIPAXXGk
	 kEqRI9B7RoQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD70F3ED4F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591885368.3173.16814281670279169083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe53f98e2b1a0e6d8db8c5641d597101af0fcc09ce32f3c9170ba650f06f253
Date: Sat, 11 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775918853
