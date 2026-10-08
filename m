Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2F389458
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791498034; cv=none; b=YqjZ/S7uFIvdYELnhWqUfNJhZyvpQIT7w9fkvaveoTGZmOruKsk/3lIKBWWrgh0GzXWXwEbhPjHak5gMNCNaN//UIjC7xs5oUL71MST/ld2T4EieKSY+n7OjqLBaOrPQdENTUVo9CRm7Z72PoveziVEY/U4J6K5CV+gV33gZUh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791498034; c=relaxed/simple;
	bh=gEsAUdf+4rmvi2x8kBO4xNWJh6bg/qZO5yWQWriYLxU=;
	h=To:Subject:From:Message-Id:Date; b=h5N6XN1X0NZRfbgf6lY84dsfgQNL6XlI0MTGxFM0vTed1gqEh26UXsWVLK0IPiUs23TxGOF8m4f/og/woO3YUmNNlaW1D1mgl9DIHto7x4SJU2qXhSVTeZ8o1uckHfbQCTmHB3bR1ea2v9ZfXhnJCGVFDCmysxzkfBaarRBp3UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8hPdHq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8hPdHq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAACC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791498033;
	bh=gEsAUdf+4rmvi2x8kBO4xNWJh6bg/qZO5yWQWriYLxU=;
	h=To:Subject:From:Date:From;
	b=F8hPdHq9+iMP34nrr8CW51ZQstpaBMgN5BHyNMxtXJW1B0Ibs4y3k52lhhdf+oozP
	 qDmuALk7uAqTSOxBY2vJtSHWL2l6mwyA/VKJf1EsPf6XJyuBKI9R/lygB6vhPNSmaJ
	 Gx5eY4Qbr+SoLk7JL3QPtAtrLGZ6I4f5p8FxKdWDR3TBpOqZ5Jg8czz0mOTeeCKeu8
	 RuBDu7kFhbvPbK9emr6beQEUa3CWGIPBvUZNNdhmg+kFeQeisRJRE/UCw6pPw1kz8o
	 xc4fxeCNfrK9bXiN8C3fcj1ATT6PfnlDt8gkeeigDqBf/pSJ8U4ufhC/YzFN2s3WYB
	 zfOVChGdGaOwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A41CA6016
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149803368.22663.16332405745844818659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ccdd8f6d030ceb45edd2bcb49a135131a3f0b31096679dbbac853b69df9d4e
Date: Thu, 08 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791498033
