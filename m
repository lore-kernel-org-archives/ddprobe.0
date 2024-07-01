Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6360416EBF8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719858323; cv=none; b=fvaz3YObLkNktKOo9V+qWovoj618RknnaJDqJ8TE+z/X2Wylcte5ukras0TO/BfGxhC2XzHCWWEqqQs3TwVJUwGXdW6AaCOJcmGP18H8x7a0nxTKyz9Tch4Vzl7hX1bOVc+EtVUGYStofs6JTbUDbuWEDuY8+iwYbUJk5cBrcQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719858323; c=relaxed/simple;
	bh=e2SOpkK2a1OXpPT5cIYGcXYvNaQWme9g3HCKsYsefqk=;
	h=To:Subject:From:Message-Id:Date; b=K9b+/jJRpaZ99HpfOOCBMMEQjVhP95LbxBvkTp/TSTZ5VDaHMmG8YdT/l2w7k8aj8aWmrPoSkSi1Cr4Cg/QYtZubm9Y/mQ/viaDQT9IbYrsFxUw4ZCGhRzi7czB4VT+/52KSwi6rQVzw0r4eS0MCqkAw/GklC3RtyYw7k6tfJH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnyBqYF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnyBqYF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AEAC32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719858322;
	bh=e2SOpkK2a1OXpPT5cIYGcXYvNaQWme9g3HCKsYsefqk=;
	h=To:Subject:From:Date:From;
	b=jnyBqYF6SfJjrzpze1R65uj7maI5Y3oZXrf60/6zK+O7n+VrbjlgfapkKxZFRfd9R
	 pkJyxrG/wUW/3+4KAc67Ls6yu+R6TFUSLhVzUr2vr0Hnx6FlKqwVnQ4t21CTpwpOXo
	 qEn+A1sr8/pKZu6emmb/a5muezJEdHccVBNglpY5MMFiysJXbGXMbVzusHDER+gDjY
	 MTXoQ1stfVw37OqrYNwdHsdiZzfYZ/QDwFJ6Nxxy2NQb4ShS3NgSNCc6k3GotXJUu7
	 2Z3tzPKTlCGIW0lOwH/nHpGywxmguLwhentAJcE7ZjiL/jA/xPcdDXP72u9vLO5ORo
	 g36rgoT+HTdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C079AC3065A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171985832277.8767.4841073176524251555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55bcbfbc844973df53bad33830609f54bc323176680ec90eea1d5cb3cc89a9db
Date: Mon, 01 Jul 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719858322
