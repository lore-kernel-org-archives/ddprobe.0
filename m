Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C207DF59
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741319334; cv=none; b=sTKj2Xu8T2P/BJvMBlnYYTVxRs0V8fRhgqOlifn5JHs5lmg361FIfAXkYjqVbFOEc0kZ+cFi541ElzIdssMEozgG0S3KDj14yvklfoKkosuF1W03E9TUwI4yjAlONclR9NKmYWXqEu6ReUTD8T98DCF2oP78ngffvtO6KJGjmRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741319334; c=relaxed/simple;
	bh=W3YxYOzmyS7CFr0GqDWnxW89qxq4lpphz9gn72Df9Uo=;
	h=To:Subject:From:Message-Id:Date; b=GRh25N/BXVA7Tl9GJzKqg++Rr8dul/GO23EjRcGSqw3/rk1+BQcAoj9LdMT8m9hHTHeyQcl9ZKte6viZzBbMBrtomaS+4e3UFSUp7Q1+74LSjBvT/K8HNQ1WHVaDMlyQILEYkAVDVP8y5JBRYOtmijuhNbfYrf14QVxP2cNq3QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjNFgmPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjNFgmPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8EFC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741319333;
	bh=W3YxYOzmyS7CFr0GqDWnxW89qxq4lpphz9gn72Df9Uo=;
	h=To:Subject:From:Date:From;
	b=tjNFgmPKb5h870P4dripAyCg8PJcQZdFpUnI5Ghe4foevTvTJ2iGXbEOWEHrp8nwE
	 A1NEmQlw3GpYz6h+KDQGNxYq4pb5llxbvY7AaHF96FfbJ58ZNfQzsGyZR+ufKqYHFj
	 LrYnXdnz8GNrNzt794DRMplnqjFoGzGhgW3hLO9K0QQtxyXuNPiVbChb6EzGKeDie1
	 Ik9wPYvy3goz+79uNs87DwUNPqZ63j2HWhs2EUIepKagjiNw6bGwqmv5wuAcQbVG5L
	 z/0UD0/DHjIloqEt9cow+pbNHwVIHkuJT7rW1SAtQK0sk8Qmd0t3lgBOaVlIjumUV6
	 eT5UJsr5azRpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACCDC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131933361.19123.3652183629736032462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e691f06e9a6dc5e35bbddbb4c8229a74bd469dde4b0a75dba2d889f6688b04a3
Date: Fri, 07 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741319333
