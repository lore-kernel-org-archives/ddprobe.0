Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3007B28EA6E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752690594; cv=none; b=U6RIbj7dZSPmxE9YahsFRZlUbcLblL95HeQP7Bz0ybuzQfNIoSDacW5xg0GlmEvnFZvF+T62wKfSxxC2pwDz4ZuNoeOphCxiGstdysuVnIQeCadWaKGyEqiHrpLoVRn3zfuc4rbU2WCfSBqUSqOKlyOY5VatNotiTk1N7A8qAoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752690594; c=relaxed/simple;
	bh=gl7Ou7EjQflZ9aoXtygKgyvhWJ/RJ1GcObVq2b5E6mo=;
	h=To:Subject:From:Message-Id:Date; b=lYRfDYWIhJWEXh3FecBNyEXxUKPPnH0kMIIUrrKgATz8vDgEp0EpsF/v7dD+hQQrc1n0FsrYBuxqfRQNplpjfs5IFWeRVm6HU5nOJfSYeRa7PczXyVON67MCA582T+Y7DTeyl9tyFcncD02CIihrxYGATtjHVWl7G9GuxdDrNzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzAYSaQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzAYSaQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5DCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752690593;
	bh=gl7Ou7EjQflZ9aoXtygKgyvhWJ/RJ1GcObVq2b5E6mo=;
	h=To:Subject:From:Date:From;
	b=AzAYSaQvrCCY/PqJsq8lVcrtM6OLbOTjnlnFhnAS3ee0jBJ3Po4gWDeOU1GzyY2tq
	 qOJvH2EIkAx00jj5PT5rTX97Pcg1N+vb9AE/KhquSBXOV5Z/8mfgd9rMDhhVLCfIJR
	 se2BYaAncCHXtOzlDg9DWo0mk/14ko+i+iZGg0wt4XvpbXPx0h9c0ijj5/GslzU25a
	 yGRQ+zBL0OZ7MbjHwW3KTetzLHGpwRvITwM8qKG7gkkwAX3mrI0ah/qopsRuDbM8OZ
	 Wj3To0wxXpnqmc0HETpvMBz74LJe6DI2lF/LFhKC0f4qei6KCIQSCECJAPNi6L4hUS
	 gjzwcgyPFTMAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFEAC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269059363.16771.10425970323683208496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa34d69efa685ec6d4d3b069eb20aeb24450256ee557bec614e1e4a5a44609d
Date: Wed, 16 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752690593
