Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A5B64F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711790897; cv=none; b=tE+PLILI7KmmSYa+HcmUvA17OZQn6kE/1XLkeS4N7zpwI3NJe6OAIpq9YsVfXgVdT9QaynRASQ4F/R/u9q0sMa1hPrFwLlvuC2M9ZgVoMD7Lyp119234aB/53z0YtFbfKWuXZ/j83KL0OaUK1HuuAHZG1OZWaAvxLe9km9z8cdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711790897; c=relaxed/simple;
	bh=y7OVKKCV5giyVmgLMTZRiejPJ0QFvKqF46PdRpJzePo=;
	h=To:Subject:From:Message-Id:Date; b=ij+GqWeQMHcRGy1nVlJZhTH3ejQE8/cWoLb96TH+NoJHERoFZuQhrvDdd5j1dFK7mVQ36AJANxNSMemtDaBzCps3tfrd/lvMhzsimIWBZ+KNChpHyn/HtpYpUyoblpatqClCTBPi/XjkKi6/YLp575qmGdooFJj7YjkdfbG5las=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+jGLHEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+jGLHEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B11C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711790896;
	bh=y7OVKKCV5giyVmgLMTZRiejPJ0QFvKqF46PdRpJzePo=;
	h=To:Subject:From:Date:From;
	b=Y+jGLHExqxbb0Xnwp/lBiKLPVTf2lAQ7UlZHYY+Eh3PN62B5vg83yebx7y0ARRUYV
	 s0eNf8LdbAgPe+7lv0L03NXjBRyDOwNQO6/1bph+BQ79CgkHzYkBo3eij8CULa9Bs7
	 jy0IxOx6hvZAPuN49uF9VMffMTZcnImS4IsVmeabuXQRqjMaFeXwCW7iQ7VgI1z8LB
	 uypbmWhh7Pzi1Iv8CiTDDlHewTITKs4833hJ6UjGvuZPC87QMBj98TgoBo2Z1RgVjW
	 EX3IUPGtmXnz+O2yJGjhhGeDfMv+c0SAIfMDbJVzO9ZmHhiu4obP1EPTiLn0ROrlwB
	 rSQ279oP8o5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C3BC47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179089639.17294.10871652271062745250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45c06d7b4f31ccfbac869304a2c74d7b740e2e4c38c8b35c0a9be90a1360ec4
Date: Sat, 30 Mar 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711790896
