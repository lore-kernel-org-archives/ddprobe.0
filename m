Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C99433E37A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777666054; cv=none; b=rsgd7JLbQvenAj8xk9KKOaiahQBfm04hp6j0kfwescxNlb9bGM7Br2lY3ATW9F0nf9uPSU8FVY5czDh2+K7CqrZKq5iZEkNSSdvYVjDNVDrhcZPISdOrsa13BOUQ8A6Lm0VBANnIopmBVZ5t+7OuTB270YkF+Lwcg6ccPevosu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777666054; c=relaxed/simple;
	bh=pHba4x6Rzbmu+944G4YMnnjcSLUaPqp5ktDO8r+dqZs=;
	h=To:Subject:From:Message-Id:Date; b=Zi7qh0JEFMiGd8+TAdoEkjvxmOmDQpVulXRhsUU/s8W7q89+afp7Ay8zhhHYAfXJ/ZqOR/tztJKWZvXGvN4aAUjQQE6YhcW0AB4IXXMhJNXMsYWH7t3VX/5H6qWrRaBOe8V3bsCOuzngEGes8J+VkW15+sY0T82stzWAprdanCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFSLYK2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFSLYK2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9AFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777666053;
	bh=pHba4x6Rzbmu+944G4YMnnjcSLUaPqp5ktDO8r+dqZs=;
	h=To:Subject:From:Date:From;
	b=QFSLYK2OkCpXyn+1r81yHtqOgLxkokmz1FeitieR2pHob42hU9EKktBv/3Esz1hJp
	 vC9nczywR+B/TyA22ypMNzSLTijV5YHZMKCHHoaWS0d2hrsdgEPbY92PGCSwvuYu+W
	 jIfV7YgSW0iVwn8NuDAnQdhnv9Z/cOJhBtIgQcEMgoDass3LKb05vEWZf2m4cw6wGu
	 w1GQw2pPs50kHHUZaD9lc2GaDn17tCun0Xt01oDuxVcPOuLLzpfN5zXjMGDls92OYN
	 q3k+V4pUc5UV2UCU7rN+tyd32xcpMXRWQEqdchN5NLJElWqpwZQaJvNSOkbb9PdjCX
	 ACIbAgdN0k9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9323CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766605368.28221.6060721976917949140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a6facbbc60519f446a169a4442e770606b7026d41efff2d9faf2e17a76a5b5
Date: Fri, 01 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777666053
