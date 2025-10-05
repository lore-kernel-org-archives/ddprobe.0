Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E432A1CF
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759700994; cv=none; b=YfNnX0d71pdrtll+U7/2N7zqaOKsM5NAasllnexrZjyInjvTRL3TEZwXhCzcygMjUw2xcBZSwoaTsK6W0GZaolNdzewmsKYCV5sT9e9LfWekK5q6APQmJp7SrsPjLLFCsXI6s1T6o59a9jsqDhJv/Hj+lG76XsCvFYBEfXlukAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759700994; c=relaxed/simple;
	bh=W2d580hCch1gXHmjmrufE+IOYC4TyZfUTKg65exKNS4=;
	h=To:Subject:From:Message-Id:Date; b=JiiVYDz/FnnSSx9f0cdz4705PJfQcRqEzCeTpONZLaWG+yysULXw+QIqXlUpZ0Ah1IJP6v2pi/ghlRY9xlkTyq/9nFSPBp+RRL2s0ag7l6uDgvSSCF3w6AkLo5bzgR4hAaE9Cwocxo+ONAzwyafOrLumAJzSx1KcH/l6EKosges=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVA9vU+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVA9vU+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4145C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759700993;
	bh=W2d580hCch1gXHmjmrufE+IOYC4TyZfUTKg65exKNS4=;
	h=To:Subject:From:Date:From;
	b=ZVA9vU+zfBieezzrZB97Bl8vMoXHu8pSv6G27Tb7EGuyaMt78+X8ObadUYmOvsUqk
	 8HHhBRVXJkUH0H+h7O1FZcg7FCn8cp/vAdy0IZJCn0Qizz6mPtXT++oOLbW7UwhAIk
	 EjIP+orncEWFyFhP6ysIZz7JZ7GYzyArQSsfjdHqi+6cVQmr4kG9ox0hKnjhey5uq6
	 62dbJmpjU+QIV+x4tDcDHYJUHGF4uwmQazgHZskL23AMV1prh3nrd0DViyPs9alHGX
	 RMRvBfvUycZsHm1bzFGYYBAY7z3sDho/58EnMTkgUOUhaqfQVaEUieRAindjIzlq80
	 ytjBjoXPfwQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA17CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970099358.7031.15759751929207154098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53672d322155b14e55fb6dae2e1b1efaf8bbc56d7ed0fb7b90a58377cae1211d
Date: Sun, 05 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759700993
