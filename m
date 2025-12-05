Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452881D90DD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764901974; cv=none; b=TML+ma5WmPHLjFpU6h1oli6vkKKBf2KiPx80AuVG5QJyxxy5/mqDcubZ5rXgYKxDQslwiDLDsF0eDJcUS7bqxAPoaXIOx0iEWk2Bv8YCJDDYbzf2cXqVz2L3N/g7hzI8k7z+bN8X3Br66uXAiB4YTXe+ZX1A3Q8za8B6+XYMzoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764901974; c=relaxed/simple;
	bh=3Ssv5aAwVhyFiVxXp3RCnuQKArwipgs/QjMozfN88HU=;
	h=To:Subject:From:Message-Id:Date; b=IchK8p0+saL0peiIicLDdrPy+dftx9Qp42QIh3Rbfahor62THaK8icC7jvmbWF4LaQW9g9CdVi5J1giX30n5wHSDyuASWoRc7QlQw7ZhAWRuQ5OuVLM1vpRABQxlQvHxIawTqjuXtoeUVIv44l+r22dpHq8KiQi8ZaEW2HCIZjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEwejNBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEwejNBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0EC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764901973;
	bh=3Ssv5aAwVhyFiVxXp3RCnuQKArwipgs/QjMozfN88HU=;
	h=To:Subject:From:Date:From;
	b=NEwejNBcXoO24tBs6C93T1ETkZomtsUDtE8P0AV1kNuQ/JGgxffbYjtbLnwhT/I8K
	 h8+nBdqRxOSqauKQS29CMLT5iysBIfC5I+3vrz9PGPCpHPZSqQkENNmrln6LzG/1XQ
	 uFDUlkFMvdcX03f9Qq463NmSOcoCS15A2oWLsLenQaf4OuKS5yc/QInY8SoscXsJ5I
	 EBSgRdpRNy6KLqPY9JY2KFArRuVcErFHwV/ejOKi4T9CwXoxZzjHFY32lStoCOv9aG
	 CrRFyeI+jl4iIT71HPLDnI+rn1RmI27UMic27Sd905Z5MZSdGfnlPqx3rJp3xlAVLK
	 C0qH/RJf0GPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94655D2CE0B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490197359.1085.16058050718930257102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adadf8d164a393961201489313bb770ab0afc75c6021e403147da83acc687df3
Date: Fri, 05 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764901973
