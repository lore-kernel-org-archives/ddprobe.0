Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E019B5B1
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731021354; cv=none; b=iUp7FSqJkBoWyIy/+OeoCiXHjzQEXsFX1u5mGrIEpE+7emVwgSG1uSqyqtQAPEa0J7MK9VblnUeI7ZoAxN5ydw0whQPucIj4e4Sg8OTx2QhOkt+Z+1lrno4+2c/hD8KH7G5DAedzuC/09yccACnWqJDyfjx5TOtF0PfTXhvPFZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731021354; c=relaxed/simple;
	bh=VDDsin1nUNIWzTwnnLTNbbv7UcHiiV3lpxsXM4CesHg=;
	h=To:Subject:From:Message-Id:Date; b=H1EffXkOfQIkZ8xel92VtTWJzXRbGaLJHGGFSvCCdmUS+KYg/+3XrvNfi2uSQ85/2zRusqtChGcQ6THZa2AHcY7hqcnBrw8N4Li4aS+1wbeeOOI9I5/ZPE5z2Y7xqVMsFhQBuRr3JaapleEom18zAJQWaMPyqaUlpKLt6MUOuuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh5/Jbo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh5/Jbo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5D4C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731021353;
	bh=VDDsin1nUNIWzTwnnLTNbbv7UcHiiV3lpxsXM4CesHg=;
	h=To:Subject:From:Date:From;
	b=lh5/Jbo0QLQDfu5xIMfgO88jBE4WvhlFDWY6inLe/loLIH47ZvM/zUyWkhNpBXjx3
	 mro43rAv1SDjVzGadhPntBOow4LE6B2Il4n3UtI1wwwnPZ3O+0JW6X22+odNuWkl/W
	 dwrGo+jBFuYHin1rAKT46Mj6yHHkciMJASW/rtXm1sjcxFToFryIkxhFLc3sP6E1Cl
	 o9R7pM20FfBy822gB1GClbTZa6ia0m93YdwOGBR8xXHq2refjyV4ykXxVkWXAEsbmK
	 l6znhSdr/XMIEbD03//7fidL2ODCiLN0HUWFOsJleGOhG+m2o09vA/CHCeB3XkqDF9
	 hU6BEDeAiPmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B545D5D699
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102135362.31270.7397303129740981436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb850466cfbed0bb40464379d4782d8ac2e80243edce850d9109c83330ebdcaa
Date: Thu, 07 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731021353
