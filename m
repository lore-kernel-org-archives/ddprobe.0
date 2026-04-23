Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6482D6407
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776982654; cv=none; b=YaexdrBwqTORuHGbMYuHyDu1GP829poUkMS8AlpgZwlaTzvWPVy5iTTQG2O+UU0Dsd1vgdXHbrY772LR5SKoTPcUuflUJCpgZsHLz6VdSstKNSQeJdPU55KD25TpXLYs8dOspVMkPn0GTciX8SzOZMDAAnEFBiqs3Njn5ZyFcOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776982654; c=relaxed/simple;
	bh=/BwR7QY0gbR65P7PPDfgzCgFmuCXUC1WVdPB59ZSnYI=;
	h=To:Subject:From:Message-Id:Date; b=drrb4zZ9AZrLo7s3rnVXq4bI0O4/fh2VZq6Q1L+00y35Xm5hfLy5EHmFk8bin7ImX0exrRAyFiUWzvUa1gmu7N8waLSgdHP51DxzfTomN861j1yhwKx1SiwhtU73uEEAAchMnPh++J9vFzz6i1QvjMtV/YDeFDtjVXw4Ic5TJSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqi+Dyyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqi+Dyyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D83C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776982653;
	bh=/BwR7QY0gbR65P7PPDfgzCgFmuCXUC1WVdPB59ZSnYI=;
	h=To:Subject:From:Date:From;
	b=Uqi+Dyyp4r3AVYOzol14Aza98amcYQ8Slqt8fkgtiigYomqWbRKV4PLZmbpPfTONW
	 yxB1RlYzyDgZaf0xCcRGJlxLidcML7JccVtkbD4BuZ+2NhzVtj6JjzCDqnlbLgboUn
	 oEqAxyb5dbfRLZD9tVWCEmFZLa9mP7u6/GWYmhKERKdL/7P1R65J5+TiVpIi3xcswq
	 Xn8tBLUNuOkhjiDg0PFCTMO0hmKlsPfYp8ABzviE8Zsa/FWykBe/ALzGeiF1EDczPv
	 aG3Z+diTRHngiN/Br1+cbOb2D+Ja+Tp1GYRywuTLityk+/RyT2Mfd73v+mR4RFdA7O
	 A2e4W8p0NSg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03F7FDEE4D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698265368.28692.6795163537894904271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3bfa3372b87f56d2b84a4c73a292f6c9c1a00d4c9f549668cfce283b1692d0d
Date: Thu, 23 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776982653
