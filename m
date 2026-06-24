Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A8C1DF736
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782300454; cv=none; b=qI8C0AWHBSRqtkR2NW8WrBQ0VdN0NYHyDCKxVmv8S+Ch+NZVSznEMSCNgSndV+Gih6hgZTv5rCNAjhS6JGPlRglNcPcH5ctk3OG68VuEsutz5EOIfQZP1SfbDIh2CWNVZPTBSqDOh4NrReMzp0rLQaYfnKcks2bby+BUZwVsNoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782300454; c=relaxed/simple;
	bh=Jr92daRV+hjO3pbR09IrxqvJeFtZhkoSLbRZq2KZT78=;
	h=To:Subject:From:Message-Id:Date; b=SOzOo2oI5t9WFt0z6r3eTFpwmSP0XpoNY9sIgzEYlkhXbGvT1KwWAmDRTMazYquipFppyIIkctyws5OzZLIjYWpzWJEzCYnrflDs397/68MlutRGx3xvDg0/C2vFVEXXDGHG8TOrSDKC5vUVWH4O58xq15Wi/o6F4na1xZMd3vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQjy6jGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQjy6jGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8DAC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782300453;
	bh=Jr92daRV+hjO3pbR09IrxqvJeFtZhkoSLbRZq2KZT78=;
	h=To:Subject:From:Date:From;
	b=GQjy6jGH24wqm3/upwFCqLvLvbXAqEZSx4e77wGYNjCRGQOKQE4P7aCiTGzoBu/TL
	 pLDZH/bJr4cE5YAXCNClPLiPPYCnPXDNRpSIChupPsFGTwrV9FLWaZcBGFCU00ltc5
	 /85VUKLgpQ0Uj34redCoQu47Q5Zlh/02Um0yAJot+B6ZvjR5rkJj8tq5WdbLhOl/LX
	 ULEi3NzLwKJfyGPdXM9+11b2OtFLB/r+Js6I3VwEecGiXHGUDprli+x4HqGIW6TJ/+
	 W8T0jhvtrCcHh6roVuaLr4KD0P7Hy4sjBvtV6qBb9lLLgdWmd3rJTQ1paY+VXGBkzD
	 oPrMz+dX7AxSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1550CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230045371.28978.6936439616322059218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb64fce2ebe357e860cf4c2d3ffdd01d4d90804c25de987b37639b91e516d4f
Date: Wed, 24 Jun 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782300453
