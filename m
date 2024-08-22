Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EB118AEA
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724367953; cv=none; b=T/9kxb/uJeqEIFGd+D7fOYtQvemXKJsc4NZeHk68sK+KCjolGDJIazIxZowCo0Rm+EvHhriBOnMlCF6DuJY/MXyGorrH/arNEkxy9aKe/8ccyKh0HVCVEkbDjE9TCAI8TWSaA0AVXwAQeymETcMxIT629uWNxj6aLyQgnByeNaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724367953; c=relaxed/simple;
	bh=+YfS1aJXwnCoz5sZxkVacKYXeZU5F5EUnGSNK+17344=;
	h=To:Subject:From:Message-Id:Date; b=rMMubQAIaWkwQ4DU3GkIHPR+GyElQFVesewGylLfDltYI6WFd4kdNAaIzNiaZzg6Ie+GYbVqGN+a7+FNn5m4lRu8YGrxZF9rL60qEwgJzLWhn9qlAycVoCFDuj84BQtYRu27GiuIt5rs9EMqvUzHGc6v3+ly2kpprT2VevJzD78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq55CyUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq55CyUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1380C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724367953;
	bh=+YfS1aJXwnCoz5sZxkVacKYXeZU5F5EUnGSNK+17344=;
	h=To:Subject:From:Date:From;
	b=gq55CyUOzJoVqZuv5TZys9buFpLIf7CWkyiOApEYnu2wfvQwjRDZgZ81AiRgXEz7r
	 HqeDu1EDHFaKCb/Bh4GBg+gNZDksIuv0VPrryQBfBMl/SdwlY9I4HUYGeBi3UxDMba
	 T+acpCl6GIuO7sIxxASNSuwQrOgUWff1d3cYyx6hMWCun9u/xTR/KJWIptFFxRm8A5
	 ciduQwcG99u8M3lqf4kpTFmZLg701yqoLBpa7127JoOIAiuwjjxF5QSzxkrATVt0JN
	 dhdFw+9laYSSQRhXUgsqNgULFoHDnKcJHcgRvuZ/DfRvadWJlZfcTkHZv/1yIZ/cEp
	 vwIpbQ/k3OrBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B492C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172436795362.7626.14973332094206336440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f5412ed57a324ce685195a8e5dc3b497c7cc50938440957328aaa4ec132813
Date: Thu, 22 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724367953
