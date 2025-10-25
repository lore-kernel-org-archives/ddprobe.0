Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380E02905
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761407394; cv=none; b=lvBUJGA/5uIDziQyx2jvgZnH/v0wyVrhZ/OFd1D1KG+P5n4ZC0KUAr9L0INEoSle5CdxX1cfoo49MbQvo58VmMY8hHg8910cq1S7qx9ST6VgwUpVUIs0RLWBSAfaj9AnBbgnK1FFURZB/94DiZjmtXaAJc14qlE30vE8IQJ+iCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761407394; c=relaxed/simple;
	bh=pfWbGE+mQkeQSPy5BX6bdjQ/iGY/t5p+NsDY4sApb4E=;
	h=To:Subject:From:Message-Id:Date; b=FpuKrspBj2n7B6FV0Pr8ugKmQ6cqoW3QXTKxWVK11a3z9H6KRqeGH9ukH9E2s9HJYT1yicr0Py3ZJE84w12Ey/YXAjUtR8BMj1iaQHlQghZLr8JeCY/TASDq6TKI4v+5KTBUZoJ2fV3wtziukONsktP5nNb8LBBb2vUMju8tZ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j14cunDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j14cunDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79AEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761407393;
	bh=pfWbGE+mQkeQSPy5BX6bdjQ/iGY/t5p+NsDY4sApb4E=;
	h=To:Subject:From:Date:From;
	b=j14cunDs9x55vpghzBV5kI7LtlmKepmj2qL3YDM8VhRdaC6EM8HCaoyS9LvmXckhy
	 AbRhOkKE/XN65rDcqUvk3QwMBF+y+QINol5YVAY+i3Hf6/cjgx+qEUMUqB5A9liZuH
	 vhAg7TEHL/3wWrrO1JV0VW8HK97DxOyz31bAyHPgeyjcF7o9BtsgE5+R9IvZNd3nOF
	 QcRi+fg+rcpToR4qW64vAfU5uyOIyA5YZiGUINOL5BDvqpfoj/FnK6C+lB/yMum5J1
	 0it6Pq0EsSiG0W4YFQQsWjlgd0rIn61Cp5DssjdtZBUE/rsy4ks05igzeFFDEpjtLp
	 h2F47oX4CdH0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BCCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140739357.26311.6221749787500639534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de7438131919cf2b639337feaa1eb35916736af9d603c695a7d13448a93ba3e
Date: Sat, 25 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761407393
