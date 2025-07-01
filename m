Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A126B0A7
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751362194; cv=none; b=shY0pSe4Exa8YgkNjqGAW7IGCNg8w2OP+U9Rc/qJt7rRM/JqmYXlL8lGg3TxKHdmoX16zyzi5WWhVVGnukB8iJopQyvM6E6agydts2/+cuMW33x/46Wda+qN1i0SnQ2kD/P4OyAVe+pEawFfAfzdhNppjrxYIc37l/ekh+fUEfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751362194; c=relaxed/simple;
	bh=hh609T3CKbwoCUn/eHSWTsPurA0dkM3jWV/hx+Dat0Q=;
	h=To:Subject:From:Message-Id:Date; b=NzqKYhlvwAlJbrOkWG/Gdb9KAAJnMjEPYQTu1lJZjIzMMsbJqpkmdWVLFsVqb81WVUUn56VsnVfMczSxsjh7DVxrFO7Z4qoriPY6AJjq2ZcfMEH7ptgvbFE2d/J9jG6rCueHC9vDErhsD96Aql8paz/wXgxiUBr5B1IdhiotpyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0DT76nW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0DT76nW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751362193;
	bh=hh609T3CKbwoCUn/eHSWTsPurA0dkM3jWV/hx+Dat0Q=;
	h=To:Subject:From:Date:From;
	b=l0DT76nWRTVO2yYFf7+LdL4ZUoxmiIEkYX35bJJ3C1OXpB+T2Xnkf7y7jMcmaXEJE
	 rKeicf+X34GkJJpN9tmdTTQSR75LzP+fzXT9W7ysJ2OLNpHj7ljXCaRiQHWukqkzK4
	 7ZUckolL6pdK2Wl+tTF2L7Dp42Q6FDpfK5P0GjLMzli5BcVtAc6iaVU9eT6sLMHdRt
	 YyY969WKSiBe8tX56gV3kGWN76GXLzMY+p60NA95MuEU4toc4bncF+fT3Lz68gGjxy
	 nwVmk3veowvfOdHZh0P8e49ysFz//KpSNKEgAYKkmn6Vx4g0dV27JzVBripuVwLd8Y
	 74WuAOgZKzO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F979C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136219357.1619.1114804320481215883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f844dd2130dedea9777d9040681f7ebe14473bd85e7a8ec6b45f0e87c8d640
Date: Tue, 01 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751362193
