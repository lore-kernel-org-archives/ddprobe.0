Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5FA4A5EAF
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790001634; cv=none; b=QX4872g1NONOJAL+22KMYhzY7AGR8WYwNQnxo82+pgkEBJgBHyhWdc3//erVaLQ6ai0kS7ClRIbM2VbtU9/NuSi363fnoOeVvCOx9HOSLXGQn1xcIstshRHjmoUpYh3BvQPd+IbpwK4SLF8EWyZn0/1ugt6+tAGkJe4RVSgyyxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790001634; c=relaxed/simple;
	bh=rVQFy1qGFhbbIKrfRCDUfmO1+Us8FM/L9RliktbHCtE=;
	h=To:Subject:From:Message-Id:Date; b=n4qnIF9Kq1h2UTM4ZYjPWuhmF2b1cBk4AXdZoOw4dXTDgIjHqatU+0YPH4JSW/Pl8FPzXZHbfTohSCeRVoPrXUuiV3nI1ozAkPXRMywOFVERWwgkdHxsoO4LLC9LEQJZIIBVcuJE8LQtBH0C2esbWkl4G53+GUWSBMpgngc4ScQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+lJ4hAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+lJ4hAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790001633;
	bh=rVQFy1qGFhbbIKrfRCDUfmO1+Us8FM/L9RliktbHCtE=;
	h=To:Subject:From:Date:From;
	b=c+lJ4hAmu1fhZjRxkeEbpr2mR9FTarREEfA6DSMRf6lo+s9OJV4sVOFY1pdnBg86e
	 pAGzjkcYm7TveXuREDBP3fd6Cowoo3hYmFUde9FXmqkNzKakuctCvFtMwsmQiMiwPs
	 sfPkERzxUC2Np7pFvjXJj831iorSOSzVE7NgZkdqcgD+q2poDPANQtllPyR/Xicc8E
	 DI8K8QONuyL3DbB2l40Q3yy0r21soW72Ud47Qf50oUoYNyxUABiqVITFD/j6xxuIYF
	 sBxb4gdBHVaWjBAeNXcP4FjCLM1DqkuHuCzSVEAryIeiQIjDytaGrXHPVr15SEmQki
	 wSrACOVlnVStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA70C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000163370.14815.17301811065327408223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15236149e7f6ddd16c00b10200564828c1983211049a62c6ae00532d66a2bb81
Date: Mon, 21 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790001633
