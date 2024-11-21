Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB211C9DC9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732179354; cv=none; b=H1xpyGNjOuL/IUcx1YDUB4OTSy8/QBOWEzHFc2LYAi1DpksbvR/IrLm0bIA1QW0EV3il3NUZhY2s3HaEWjANR+p3DRbpxlu5obs+7sn0cR0Mc9Re9sLP7V2HlnVvE8vOppAtrsecLir/gnbpcCdGkFM+WdKcfU6sgMDJvM5bzVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732179354; c=relaxed/simple;
	bh=H1VLfoVWekHLPzJrZMusILG5q34EmDTXmpwcHt2fAAg=;
	h=To:Subject:From:Message-Id:Date; b=aoTa3GE3KBpwXeCYM/TmtTGxzAwJl6sIYd/yyG+8j8Sr3fIGs2UDKRG5/q6yNaRYuYVVuBm/xJshekj+ENGo3GydLaSXVrij5b4K4xXFj3GaDInWfJJWnsqm2/YG8pokXSgtAcJbeSJiSyrpbJOrBs6cr22rmQu4V4Z6oKqT/6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGg9QgNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGg9QgNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A489CC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732179353;
	bh=H1VLfoVWekHLPzJrZMusILG5q34EmDTXmpwcHt2fAAg=;
	h=To:Subject:From:Date:From;
	b=WGg9QgNHTcEWK/UKQUnuG/5GKvoYFA7MedGg0z2YVR+3w2j9pCCk0G0B+nX3KqM93
	 OrFQ81nGvGA57vclKUCyDuiRdiRSx5FPE96ZNCHtlL0ynAkf/54NbTIwvNP0uvgZlR
	 bmvbALR8Y1N6DA36za62f6czCNObufyIbo2AzZoLQ7hDBVCLsq0+kzDXjf7WmduDzw
	 BEBgbtecENueogrC8viDma0sFH4w9sT136wnmzSM8+lh6kwNjjG6ylEngl/JolGnNX
	 DmY2HfVXc6M0+jkXDyZPUNbmm9j8qu/ZZGBbi0kU2gL7rVssCdfjAez+leyC7Rciz1
	 x45hjU58q7Qgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348DD75BD9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217935359.8344.13309240850212504771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6acb4c24069a4ecf0fb45e0a402dd62f6a603f5b5257a4f964251334c6daddc
Date: Thu, 21 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732179353
