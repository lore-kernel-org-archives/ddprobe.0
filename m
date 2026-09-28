Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53498397323
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790628634; cv=none; b=Yf4jADq8rKrJQLwVrDW0XPPnate0r4gnlGVAhnR0s2i3zUGLyPNr0+K8Sj2sC3S7tMiBZob7hkyb9myrXAF4RmDpDiZoU4LaDsvPkgEAt4zJMO9x1hB2qz/r7ZajRG2J3nTlPsJ33QfudI9/Ju5nyZnZl06KDf1aKQJ5c3YmL9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790628634; c=relaxed/simple;
	bh=fWUCjHtKiWepTYTIM6AozDMgLh+ESEqDCuqsuD/fKhg=;
	h=To:Subject:From:Message-Id:Date; b=AqelzmCsJNreNaGm9WgCw6xizBH1ZFLkuIzjbNJgoZnvbDUZ0KcvOKEILMkUBhBlt1u505brHC+fSHCPF9/2zpCUCG54XFtBi/j4OEAXF+zrqGwSJaLysy9j5ZyIszUgFjX3yNNptBpdtTkjUBD0xsM/6QDI/o7PEw8sthsGS88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlrXbaQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlrXbaQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790628633;
	bh=fWUCjHtKiWepTYTIM6AozDMgLh+ESEqDCuqsuD/fKhg=;
	h=To:Subject:From:Date:From;
	b=NlrXbaQ3U/H6XLyKAg3bTz7bvYtbZZSPX3Wl0ctM1JFh3ksiAxCkn7wuBtImNy/rI
	 f4RIjkp8awjXU8vwq79W2sD2DACZNr4Q1c/subonNHn/ky9ELl6eJqTSTfCt/D5fL6
	 OlL5PTgZ6Xjpf0D/EVrx7A/FWhsfrHsWAvWxCPqSlU4JVtBKkcWAg/kQ6lG2ZT4Y6n
	 R6+9NGclcaKe2vVcVU2KLKaP3rXb+TTJ5xhIVUNXdY08+vrrK0LaaE0uGWBnRVnrXu
	 696jtbNk2S7CdsLbqi38zR4WhXunq+O52coV2V9DqFvX7p+q+m7GreAOR8g3qBHVgi
	 y4/Q7zJo1pGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED2ACA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062863369.11394.16152783743598937935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6490d4b95d8430caa3277738eda28ae16c7f80a6311b12b26613092045dbe19
Date: Mon, 28 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790628633
