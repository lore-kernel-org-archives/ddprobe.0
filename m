Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C420AF69
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743521395; cv=none; b=LpCZHUwBKojMsQI8fVEutyfZ9BC0jCZc394OkHXVHrPb+1JSMeMswUPnhvTI7F2Dey8I6ySQnJrYl90573eP58MAK9OdUIBehgSFA0ZWGI3tsMTtK8+ukIdVUyZHY8COC7UFdzvtqPY+wNMahYZKRboFbTVurXxU+FBvMFpmV2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743521395; c=relaxed/simple;
	bh=nMFYQeDUMihm75XunIVa5QNQWNWErEb6ZhFKFl6bfDg=;
	h=To:Subject:From:Message-Id:Date; b=emOCFtrMtGehuD9/wAMBCkIw6s7gpwUV/jb9B6Y++GVYrAz2INvXsJnYdC4IzxzuPyPr+cdQlkPm5WYq3QmIIwZfxGXlcsTJzSWdBc/NKEzcvN0aP6uBY3bJmXsOcsFYzZCcNwKCYBxXWQGrH0AE0dMtMmTQjcVVHZMM10Ikimc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deiPEMZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deiPEMZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F5FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743521393;
	bh=nMFYQeDUMihm75XunIVa5QNQWNWErEb6ZhFKFl6bfDg=;
	h=To:Subject:From:Date:From;
	b=deiPEMZls1tLk8zYm82tFd6G+eijUXTyE/DSIskukjI6L6M0WWv66bnXY7vpWot9G
	 ImD8/QgHpIF9ahHpMDUn1pnGiuuCfZGYQQy17KKRaOHt0kPR7MXmY4VD7UeLT5pCcz
	 WruBAj57szGH+mtQpFlY5lpSohfBeuJ0awI4knFJJxteCc6mP6UClMwHk7ilaSfexx
	 XApEqFSMAieU0eTg3RKgNmJYIJw7G0ORVcgbhCRCc7hXD8CNsiHpxwQJgbd7C1rc3q
	 MeLV7vkV9l+IKV7pI5mmX/JWcsyB+qQJVARKpB2G8fxK2aXvRHIkED6tXneO4KYbOR
	 vru5l/UBa1Z/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93382C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352139359.10531.2737302614511367602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c4373e9002f7ebb44defdf233f2b264a7001743e96e0b85e99cccb9be26d65
Date: Tue, 01 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743521393
